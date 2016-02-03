HTMLWidgets.widget({

  name : "canvasXpress",

  type : "output",

  initialize : function(el, width, height) {

    // Create a sized canvas element for the CanvasXpress instance

    var c = document.createElement('canvas');

    c.id = el.id + '-cx';
    c.width = width;
    c.height = height;

    // Append it to the element

    el.appendChild(c);

    // Return the id where the canvas will be initialized

    return {
      id : c.id
    };

  },

  renderValue : function(el, x, instance) {

    var cx = CanvasXpress && instance ? CanvasXpress.getObject(instance.id) : false;

    // Remove the CanvasXpress object if it exists

    if (cx) {
      cx.destroy(instance.id);
    }

    x.renderTo = instance.id;

    cx = new CanvasXpress(x);

  },

  resize : function(el, width, height, instance) {

    var cx = CanvasXpress && instance ? CanvasXpress.getObject(instance.id) : false;

    if (cx) {
      cx.setDimensions(width, height);
    }

  }
  
});
