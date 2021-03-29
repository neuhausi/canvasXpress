HTMLWidgets.widget({
    name : "canvasXpress",
    type : "output",

    factory: function(el, width, height) {
        var c = document.createElement('canvas');
        c.id = el.id + '-cx';
        c.width = width;
        c.height = height;

        el.appendChild(c);

        return {
            id: c.id,
            renderValue: function(x) {
                try{
                    for (var i = 0; i < CanvasXpress.instances.length; i++) {
                        if (CanvasXpress.instances[i].target.match(c.id)) {
                            CanvasXpress.destroy(CanvasXpress.instances[i].target);
                        }
                    }
                }
                catch(err) {console.log(err);}
                if (!(x instanceof Array)) {
                    x.renderTo = c.id;
                    new CanvasXpress(x);
                }
            },
            resize: function(width, height) {
                cx = CanvasXpress.getObject(c.id);
                if (cx) {
                    cx.setDimensions(width, height);
                }
                else {
                    cx = CanvasXpress.getObject(c.id + '-1');
                    if (cx) {
                        cx.setDimensions(width, height);
                    }
                }
            },
            getImage: function() {
                cx = CanvasXpress.getObject(c.id);
                if (cx && cx.meta && cx.meta.base64) {
                    return cx.meta.base64;
                } else {
                    return false;
                }
            }
        };
    }
});
