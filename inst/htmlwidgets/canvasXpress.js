HTMLWidgets.widget({
  name: "canvasXpress",
  type: "output",

  factory: function (el, width, height) {

    if (el && el.classList && el.classList.contains('noCanvas')) {
      return;
    }

    var c = document.createElement('canvas');
    c.id = el.id + '-cx';
    c.className = 'CanvasXpress';
    c.width = 600;          // default
    c.height = 400;          // default

    if (width && height && (width !== 0) && (height !== 0)) {
      // set canvas size
      c.width = width;
      c.height = height;

      // Check if we are running in the viewer; override the width and height
      if (/\bviewer_pane=1\b/.test(window.location)) {
        c.width = document.childNodes[1].clientWidth - 30;
        c.height = document.childNodes[1].clientHeight - 30;
      }
    }

    el.appendChild(c);

    // hold onto these values, will be tracked when resizing happens
    var chart_width = c.width;
    var chart_height = c.height;

    return {
      id: c.id,

      // reminder: called multiple times, any time the R binding function is called
      renderValue: function (x) {

        // destroy old charts but keep track of the parent container
        var w = x instanceof Object && x.hasOwnProperty('isPatchwork');
        var n = CanvasXpress && CanvasXpress.instances && CanvasXpress.instances.length;
        var p = n && !w ? document.getElementById(c.id).parentNode.parentNode.parentNode.parentNode : document.getElementById(c.id).parentNode;

        try {
          for (var i = 0; i < CanvasXpress.instances.length; i++) {
            if (CanvasXpress.instances[i].target.match(c.id)) {
              CanvasXpress.destroy(CanvasXpress.instances[i].target);
            }
          }
        }
        catch (err) {
          console.log(err);
        }

        // create the new chart
        if (!(x instanceof Array)) {
          if (x instanceof Object && x.hasOwnProperty('isPatchwork')) {
            console.log('---> patchwork ' + c.id);
            if (p.firstChild && p.firstChild.tagName && p.firstChild.tagName.toLowerCase() == 'canvas') {
              p.removeChild(p.firstChild);
            }
            if (x.cols) {
              x.rows = Math.ceil(x.length / x.cols);
            } else if (x.rows) {
              x.cols = Math.ceil(x.length / x.rows);
            } else {
              x.cols = x.length;
              x.rows = 1;
            }
            var cw = Math.floor(chart_width / x.cols);
            var ch = Math.floor(chart_height / x.rows);
            var nc = 0;
            var dt = document.createElement('table');
            dt.style.borderCollapse = 'collapse';
            dt.setAttribute('cols', x.cols);
            dt.setAttribute('rows', x.rows);
            p.appendChild(dt);
            for (var i = 0; i < x.rows; i++) {
              var tr = document.createElement('tr');
              dt.appendChild(tr);
              for (var j = 0; j < x.cols; j++) {
                var td = document.createElement('td');
                td.style.padding = '0px';
                tr.appendChild(td);
                var dp = document.createElement('div');
                var cp = document.createElement('canvas');
                var ds = x.datasets[nc];
                cp.id = c.id + '-p' + nc;
                ds.renderTo = cp.id;
                cp.className = 'CanvasXpress';
                cp.width = cw;
                cp.height = ch;
                dp.appendChild(cp);
                td.appendChild(dp);
                var cx = new CanvasXpress(ds);
                nc++;
              }
            }
            this.resize(chart_width, chart_height);
          } else {
            console.log('---> regular ggplot ' + c.id);
            x.renderTo = c.id;
            var e = document.getElementById(c.id);
            if (e == null && p != null) {
              p.appendChild(document.createElement('canvas')).setAttribute('id', c.id);
            }
            var cx = new CanvasXpress(this.checkData(x));
            this.resize(chart_width, chart_height);
            return cx;
          }
        }
      },

      transpose(matrix) {
        return matrix[0].map(function(col, i) {
          return matrix.map(function(row) {
            return row[i];
          })
        })
      },

      checkData: function (x) {
        if (x instanceof Object && x.hasOwnProperty('data') && x.data.hasOwnProperty('y') && x.data.y.hasOwnProperty('data')) {
          if (x.data.y.data instanceof Array && x.data.y.data[0] instanceof Array && x.data.y.hasOwnProperty('vars') && x.data.y.hasOwnProperty('smps')) {
            for (var i = 0; i < x.data.y.data.length; i++) {
              for (var j = 0; j < x.data.y.data[i].length; j++) {
                var v = x.data.y.data[i][j];
                var n = v === null || v === undefined ? true : !isNaN(parseFloat(v)) && isFinite(v);
                if (!n) {
                  for (var ii = 0; ii < x.data.y.data.length; ii++) {
                    x.data.y.data[ii].unshift(x.data.y.vars[ii]);
                  }
                  x.data.y.data.unshift(x.data.y.smps);
                  x.data.y.data[0].unshift('');
                  x.data = x.data.y.data;
                  if (x.hasOwnProperty('config')) {
                    x.config.isDataFrame = true;
                  }
                  return x;
                }
              }
            }
          }
        }
        return x;
      },

      resize: function (width, height) {
        // Check if we are running in the viewer; override the width and height
        if (/\bviewer_pane=1\b/.test(window.location)) {
          console.log('---> in viewer pane');
          width = document.childNodes[1].clientWidth - 30;
          height = document.childNodes[1].clientHeight - 30;
        }

        // track the new values
        chart_width = width;
        chart_height = height;

        var cx = CanvasXpress.getObject(c.id);
        if (cx) {
          cx.setDimensions(chart_width, chart_height);
        } else {
          cx = CanvasXpress.getObject(c.id + '-1');
          if (cx) {
            cx.setDimensions(chart_width, chart_height);
          } else {
            var div = document.getElementById(c.id.replace('-cx', ''));
            if (div && div.firstChild && div.firstChild.tagName && div.firstChild.tagName.toLowerCase() == 'table') {
              var cols = div.firstChild.getAttribute('cols');
              var rows = div.firstChild.getAttribute('rows');
              var cw = Math.floor(chart_width / cols);
              var ch = Math.floor(chart_height / rows);
              var nc = 0;
              for (var i = 0; i < rows; i++) {
                for (var j = 0; j < cols; j++) {
                  var cx = CanvasXpress.getObject(c.id + '-p' + nc);
                  if (cx) {
                    var cnt = document.getElementById('container-' + c.id + '-p' + nc);
                    if (cnt) {
                      cnt.style.width = cw + 'px';
                      cnt.style.height = ch + 'px';
                    }
                    cx.setDimensions(cw, ch);
                  }
                  nc++;
                }
              }
            }
          }
        }
        return cx;
      },

      getImage: function () {
        var cx = CanvasXpress.getObject(c.id);
        if (cx && cx.meta && cx.meta.base64) {
          return cx.meta.base64;
        } else {
          return false;
        }
      }
    };
  }
});
