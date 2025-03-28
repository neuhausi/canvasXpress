# Known Issues in CanvasXpress from R/Shiny

- Map charts 17 - CX site - R reproducible code is not executable

---

### General Limitations

* **Reserved Words** - the following are reserved words for canvasXpress and should not be used as column names in the datasets or JS console errors of varying types will be encountered.  
  * smps
  * vars

* **RStudio Viewer** - the following are items that are issues only in the viewer inside of RStudio that are not an issue if the chart is opened in the browser outside of the viewer window
  * **network diagrams** -  zooming may cause items/attributes to move or disappear
  
---

### Platform-Specific

* **Ubuntu** - selection of areas of points on a chart via either click-drag or the lasso functionality is not supported by the browsers we've tested on this platform.

---

### Browser-Specific

* **FireFox** - it is possible to drag components off of the canvas for some charts and this may result in JS console errors in the browser.  Other browsers prevent this.

---

### Idiosyncracies

* **Hover Effect** - the effect of hovering the mouse over a line/bar/etc may not be visible unless a plot is resized.  This is very browser and chart-specific.  To see if it is resolved by resizing simply grab an edge of the chart and pull a small amount to resize the chart and then re-test if the hover effect is now working.  In general this is not a problem if transitions are used, it seems to be linked directly to charts that have the animated transitions.

* **Treemaps** - the sample locations in a treemap are area-based and the layout of the treemap depends on the size and dimensions of the chart, this means that the treemap may differ in layout between platforms and browsers.

* **Tag Clouds** - the layout is dynamic and also depends on the size and dimensions of the chart, this means that the tag cloud may differ in layout between platforms and browsers.

* **Layout Charts** - the order of layout varies and may differ between browsers and platforms.

* **3d Scatterplots** - the superimposition/order of the points on the canvas differs by browser and platform.  This affects both the stacking of points as well as the 3d overlays such as the ellipse in scatter3d2.
* **3d Scatterplot Transpose** - 3d plots when transposed will have only a few points - this is working as designed.

* **Plots Restricted From Resizing** - plots that are restricted from resizing (have resizableX/resizableY set to FALSE) will be restricted when maximizing the plot using the expand button in the menu bar as well.  For example if a plot is restricted from width resizing when you press the maximize button the plot will expand the height but the width will remain fixed.  If both parameters are false the plot will not resize but may move to the top left corner. This is expected behavior.

* **Network Chart Minimum Size** - network charts have a minimum dimension which may cause some overhang into neighboring html spaces.  To workaround this one solution is to add a table around the chart.

* **Numbers in Scientific Notation** - Some tooltips have numbers represented in the scientific notation. This is not specific to any chart and occurs mainly due to JavaScript converting large numbers to scientific notation. 

* **Faceted Plots** - the legend for facets will not be shown if it can be identified by the faceting of the chart.

* **Viewing Metadata** - when viewing metadata the segregation of plots will be lost both in the metadata view of the chart (top left) as well as on the original chart when returning from viewing the metadata. 
