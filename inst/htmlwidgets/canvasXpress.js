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
                try{CanvasXpress.destroy(c.id);}
                catch(err) {/*do nothing*/}
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
            }
        };
    }
});
