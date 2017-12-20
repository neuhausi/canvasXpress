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
                cx = CanvasXpress.getObject(c.id);
                if (cx) {
                    cx.destroy(c.id);
                }
                x.renderTo = c.id;
                cx = new CanvasXpress(x);
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
