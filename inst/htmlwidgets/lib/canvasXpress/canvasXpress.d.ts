// Type definitions for CanvasXpress (ESM + global sidecar)
// Project: https://www.canvasxpress.org
//
// GENERATED FILE — do not edit by hand.
// Produced by tools/schema/generate-dts.js from
// data/schema/canvasxpress-config-latest.schema.json.
// Regenerate with:  node tools/schema/generate-dts.js   (or build.py --schema)
//
// Types-only: contains NO runtime code, is never loaded by the browser,
// and adds zero bytes to canvasXpress.min.js. Editors and `tsc` read it to give
// consumers autocomplete + compile-time checking of the CanvasXpress public API.

export type CXTarget = string | HTMLCanvasElement;

/**
 * Chart data. String-keyed to match the engine's dynamic access; the common
 * y/x/z envelope is typed, the rest left open.
 */
export interface CXData {
  /** Numeric matrix with its variable (row) and sample (column) annotations. */
  y?: {
    vars?: Array<string | number>;
    smps?: Array<string | number>;
    data?: unknown[][];
    [key: string]: unknown;
  };
  /** Sample (column) metadata: annotation name -> per-sample values. */
  x?: Record<string, unknown[]>;
  /** Variable (row) metadata: annotation name -> per-variable values. */
  z?: Record<string, unknown[]>;
  [key: string]: unknown;
}

/** The four supported event hooks. `o` is the resolved data object under the cursor. */
export interface CXEvents {
  click?: (o: any, e: MouseEvent, t: CanvasXpressInstance) => void;
  dblclick?: (o: any, e: MouseEvent, t: CanvasXpressInstance) => void;
  mousemove?: (o: any, e: MouseEvent, t: CanvasXpressInstance) => void;
  mouseout?: (o: any, e: MouseEvent, t: CanvasXpressInstance) => void;
  [key: string]: ((o: any, e: any, t: CanvasXpressInstance) => void) | undefined;
}

/** A post-render call: [methodName, ...args] applied after the chart draws. */
export type CXAfterRender = Array<[string, ...unknown[]]>;

/**
 * Every accepted `graphType` (70 values, aliases included —
 * e.g. "Volcano" renders as "Scatter2D"). This union is CLOSED so a misspelled
 * graph type fails to type-check.
 */
export type CXGraphType =
  | "Alluvial"
  | "Area"
  | "AreaLine"
  | "Bar"
  | "BarLine"
  | "Boxplot"
  | "Bin"
  | "Binplot"
  | "Bubble"
  | "Bullet"
  | "Bump"
  | "CDF"
  | "Chord"
  | "Circular"
  | "Cleveland"
  | "Contour"
  | "Correlation"
  | "Density"
  | "Distribution"
  | "Donut"
  | "DotLine"
  | "Dotplot"
  | "Dumbbell"
  | "Fish"
  | "Gantt"
  | "Genome"
  | "Heatmap"
  | "Hex"
  | "Hexplot"
  | "Histogram"
  | "KaplanMeier"
  | "Line"
  | "Lollipop"
  | "Map"
  | "Meter"
  | "Network"
  | "Oncoprint"
  | "OptionsWall"
  | "ParallelCoordinates"
  | "Pareto"
  | "Pie"
  | "QQ"
  | "Quantile"
  | "Radar"
  | "Ribbon"
  | "Ridgeline"
  | "Sankey"
  | "Scatter2D"
  | "Scatter3D"
  | "ScatterBubble2D"
  | "Spaghetti"
  | "SPLOM"
  | "Stacked"
  | "StackedLine"
  | "StackedPercent"
  | "StackedPercentLine"
  | "Streamgraph"
  | "Sunburst"
  | "TagCloud"
  | "TimeSeries"
  | "Tornado"
  | "Tree"
  | "TreeBracket"
  | "Treemap"
  | "Upset"
  | "Violin"
  | "Volcano"
  | "Venn"
  | "Waterfall"
  | "WordCloud";

/**
 * Full chart configuration — one property per parameter in the CanvasXpress
 * config schema (1686 keys). String enums become open literal
 * unions (except `graphType`, which is closed); `@graphTypes` in a key's JSDoc
 * lists the graph types it applies to (absent = all). The index signature keeps
 * obfuscation aliases and any newer key valid. See `CXConfigFor<G>` for the
 * per-graph-type view.
 */
export interface CXConfig {
  /**
   * Object to hold the info for the R dataset loaded
   * @default {}
   */
  Rdataset?: Record<string, unknown> | boolean;
  /**
   * Flag to ensure the heatmap indicator scales appropriately when the graph is rendered or
   * the user manually resizes the graph, the adjustAspectRatio flag must be set to true for
   * the adjustAspectRatioHeatmapIndicator to take effect
   * @graphTypes Heatmap
   * @default true
   */
  adjustAspectRatioHeatmapIndicator?: boolean;
  /**
   * Flag to select the bezier line type. the bezier can start from the top or bottom
   * (vertical), or from the side (horizontal). This will be based on the location of the two
   * points joined by the line
   * @default false
   */
  adjustBezier?: boolean;
  /**
   * Initial Configuration passed to cxplot when used in combination with ggplot
   * @default {}
   */
  aes?: Record<string, unknown> | boolean;
  /**
   * Flexible aggregation (Tableau-style materialized group-by). Each entry is { by:[annotation
   * names], defaultFn, overrides:{ variable: fn }, sep? } where fn is mean | median | sum |
   * min | max | sd | count | first. Collapses the samples by the grouping annotation(s) so the
   * distinct group keys become the new samples, each variable reduced per group. Applied at
   * load AFTER calculatedFields; serialized so it persists and reproduces
   * @default []
   */
  aggregations?: unknown[] | boolean | string | number;
  /**
   * Default horizontal alignment for drawing text
   * @default "center"
   */
  align?: "right" | "center" | "left" | false | (string & {});
  /**
   * Array containing additional data files to append to networks. Useful for loading KEGG and
   * Wikipatways to decorate the nodes and the edges
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  appendNetworkData?: unknown[] | boolean | string | number;
  /**
   * Style for area graphs. The options include solid which is the default, translucent, and
   * outlined
   * @graphTypes Area, AreaLine
   * @default "solid"
   */
  areaStyle?: "solid" | "translucent" | "outlined" | false | (string & {});
  /**
   * Types of area graphs when displaying multiple series. The options include overlapping
   * which is the default, stacked, and percent area graphs
   * @graphTypes Area, AreaLine
   * @default "overlapping"
   */
  areaType?: "overlapping" | "stacked" | "percent" | false | (string & {});
  /**
   * Manhattan Chromosomes arm length is a sorted array by chromosome with the length in base
   * pairs for each chromosomeshort arm. It has to have the same dimesions as the
   * chromosomeLengths
   * @graphTypes Scatter2D
   * @default []
   */
  armLengths?: unknown[] | boolean | string | number;
  /**
   * The angle for the head of the arrow
   * @default 22.5
   */
  arrowHeadAngle?: number | boolean;
  /**
   * Size in pixels of the arrow head in arrow lines
   * @default 10
   */
  arrowHeadSize?: number | boolean;
  /**
   * Type for the head of the arrows
   * @default "filledArc"
   */
  arrowHeadType?: "wire" | "filledStraight" | "filledArc" | "filledQuadratic" | "filledBezier" | false | (string & {});
  /**
   * Flag to use white fill for the arrow head
   * @default false
   */
  arrowHeadTypeOpen?: boolean;
  /**
   * Factor to use to bend the quadratic lines
   * @default 2.3
   */
  arrowQuadraticFactor?: number | boolean;
  /**
   * Object with configurations to create DOE
   * @default false
   */
  asDOE?: Record<string, unknown> | boolean;
  /**
   * Array containing variable names. Numeric variable data (in rows) to be treated as a sample
   * factor (move from y to x object). This parameter accomplishes the same as the function
   * switchVarToAnnotation at load time. It can be used in conjunction with the parameter
   * stringSampleFactors to be treated as a string. TO DO: write example
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  asSampleFactors?: unknown[] | boolean | string | number;
  /**
   * Array containing sample names. Numeric sample data (in columns) to be treated as a
   * variable factor (move from y to z object). This parameter accomplishes the same as the
   * function switchSmpToAnnotation at load time. It can be used in conjunction with the
   * parameter stringVariableFactors to be treated as a string. TO DO: write example
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  asVariableFactors?: unknown[] | boolean | string | number;
  /**
   * Type of function to apply when calculating attractive force in forceDirected network
   * layouts. Fruchterman-Reingold uses square while Eades uses log
   * @graphTypes Network
   * @default "square"
   */
  attractiveForceFunction?: "square" | "cubic" | "log" | "pow" | "sqrt" | false | (string & {});
  /**
   * Flag to adjust the font size in many visualization. Please be aware that scaling factors
   * can still modify the font size. This flag needs to be false for the text to accept the
   * specified font size
   * @default true
   */
  autoScaleFont?: boolean;
  /**
   * Algorithm used to position tick labels on axes. See An Extension of Wilkinson Algorithm
   * for Positioning Tick Labels on Axes. Justin Talbot, Sharon Lin, Pat Hanrahan
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rPretty"
   */
  axisAlgorithm?: "heckbert" | "wilkinson" | "wilkinsonExtended" | "rPretty" | false | (string & {});
  /**
   * Flag to coordinate xAxis and xAxis2 in *-Line combination plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  axisCoordinate?: boolean;
  /**
   * Percentage to extend the values of the data to ensure all the data points are plotted
   * inside and not over the edges of the graph
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0.1
   */
  axisExtension?: number | boolean;
  /**
   * Flag to indicate whether to use loose positioning when using the wilkinson algorithm to
   * position the labels on the axis. There will not be a difference most of the times
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  axisWilkinsonLoose?: boolean;
  /**
   * Color for the Specifies the default background color for elements in the canvas not
   * covered in a more specific configuration property
   * @default "rgb(255,255,255)"
   */
  background?: string | boolean;
  /**
   * Specifies the url for the background image when the background type is of the type image
   * or panelImage
   * @default false
   */
  backgroundImage?: string | boolean;
  /**
   * Specifies the source for the background image when the background type is of the type
   * image or panelImage
   * @default false
   */
  backgroundImageSrc?: string | boolean;
  /**
   * Specifies the style for the background of the canvas. The canvas background is composed of
   * a frame with a panel where the data is plotted. Either of these elements the may be a
   * solid or gradient color or an image of your choosing. The colorScheme property will be
   * used If gradient is specified
   * @default "solid"
   */
  backgroundType?: "solid" | "gradient" | "panel" | "panelGradient" | "panelSolidGradient" | "image" | "panelImage" | false | (string & {});
  /**
   * Bandwidth adjust for the window
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default 1
   */
  bandwidthAdjust?: number | boolean;
  /**
   * Bandwidth cut
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default 3
   */
  bandwidthCut?: number | boolean;
  /**
   * Bandwidth rule
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default "nrd0"
   */
  bandwidthRule?: "nrd0" | "nrd" | "silverman" | false | (string & {});
  /**
   * Flag to use open pattern for the lollipop
   * @graphTypes Bar
   * @default false
   */
  barLollipopOpen?: boolean;
  /**
   * Flag to produce normal or other modifications of bar graphs
   * @graphTypes Bar, BarLine, Bullet, Lollipop, Pareto, Waterfall
   * @default "normal"
   */
  barType?: "normal" | "lollipop" | "arrow" | "bullet" | "lollipopBullet" | "swimmer" | "waterfall" | false | (string & {});
  /**
   * Flag to force zero in bar graphs with positive values
   * @graphTypes Bar, BarLine, Bullet, Lollipop, Pareto, Waterfall
   * @default true
   */
  barZero?: boolean;
  /**
   * Default vertical alignment for drawing text
   * @default "middle"
   */
  baseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Alignment for the data points when binned
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "center"
   */
  binAlignment?: "left" | "center" | "right" | false | (string & {});
  /**
   * Flag to bin the data points in dotplots and boxplots
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  binned?: boolean;
  /**
   * Width in actual units for the histogram bin
   * @graphTypes Bin, Binplot, Hex, Hexplot, Scatter2D
   * @default []
   */
  binplotBinWidth?: unknown[] | boolean | string | number;
  /**
   * Approximate number of bins in a bin plot. It may vary considerably to the actual number
   * used in the bin plot to ensure a pretty size for the intervals in the bin plot. ggplots
   * default is 30
   * @graphTypes Bin, Binplot, Hex, Hexplot, Scatter2D
   * @default []
   */
  binplotBins?: unknown[] | boolean | string | number;
  /**
   * Color scheme to use in binplots
   * @graphTypes Bin, Binplot, Hex, Hexplot, Scatter2D
   * @default "BluesDark"
   */
  binplotColorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | false | (string & {});
  /**
   * Type for the shape to use in binplots
   * @graphTypes Bin, Binplot, Hex, Hexplot, Scatter2D
   * @default "hexagon"
   */
  binplotShape?: "rectangle" | "hexagon" | "oval" | false | (string & {});
  /**
   * Color Blindness
   * @default false
   */
  blindnessType?: string | boolean;
  /**
   * Flag to creates a shade between the samples so there are two backgrounds, one for the odd
   * samples and one for the even samples
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  blockContrast?: boolean;
  /**
   * Text to include at the bottom of the graph in the bottom margin
   * @default false
   */
  bottomMarginalText?: string | boolean;
  /**
   * Alignment (or position) for the bottom marginal text
   * @default "left"
   */
  bottomMarginalTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the bottom marginal text
   * @default "top"
   */
  bottomMarginalTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in bottom marginal text
   * @default "rgb(0,0,0)"
   */
  bottomMarginalTextColor?: string | boolean;
  /**
   * Font size for the text in bottom marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the bottomMarginalTextScaleFontFactor
   * @default 12
   */
  bottomMarginalTextFontSize?: number | boolean;
  /**
   * Font style for the bottom marginal text
   * @default ""
   */
  bottomMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the bottom marginal text
   * @default 5
   */
  bottomMarginalTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the bottom marginal text
   * @default 0
   */
  bottomMarginalTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the bottom marginal text font size in the
   * canvas
   * @default 1
   */
  bottomMarginalTextScaleFontFactor?: number | boolean;
  /**
   * Color for the line of the borders in boxplots
   * @graphTypes Boxplot
   * @default "rgb(0,0,0)"
   */
  boxplotBorderColor?: string | boolean;
  /**
   * Number that determines how far the plot whiskers extend out from the box
   * @graphTypes Boxplot
   * @default 1.5
   */
  boxplotCoef?: number | boolean;
  /**
   * Color for the boxplot if individual data points are shown
   * @graphTypes Boxplot
   * @default false
   */
  boxplotColor?: string | boolean;
  /**
   * Flag to show data in boxplots connected
   * @graphTypes Boxplot
   * @default false
   */
  boxplotConnect?: boolean;
  /**
   * Width for the line of the connection of boxes in boxplots
   * @graphTypes Boxplot
   * @default 2
   */
  boxplotConnectWidth?: number | boolean;
  /**
   * Fraction to adjust color transparency for the data points when displaying original data in
   * boxplots
   * @graphTypes Boxplot
   * @default 0.8
   */
  boxplotDataPointTransparency?: number | boolean;
  /**
   * Function to calculate the boxplor hinges. See
   * https://chemicalstatistician.wordpress.com/2013/08/12/exploratory-data-analysis-the-5-number-summary-two-different-methods-in-r-2/
   * @graphTypes Boxplot
   * @default "summary"
   */
  boxplotHingeFunction?: "summary" | "fivenum" | false | (string & {});
  /**
   * Flag to show mean of data in boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotMean?: boolean;
  /**
   * Color for the border of the data mean in boxplots
   * @graphTypes Boxplot
   * @default "#fe6969"
   */
  boxplotMeanBorderColor?: string | boolean;
  /**
   * Color for the data mean in boxplots
   * @graphTypes Boxplot
   * @default "#fed385"
   */
  boxplotMeanColor?: string | boolean;
  /**
   * Color for the line of the median of data in boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotMedianColor?: string | boolean;
  /**
   * Width for the line of the median of data in boxplots
   * @graphTypes Boxplot
   * @default 2
   */
  boxplotMedianWidth?: number | boolean;
  /**
   * Flag to notch boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotNotched?: boolean;
  /**
   * Color for the data points in the boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotOriginalDataColor?: string | boolean;
  /**
   * Color for the border of outlier data points in boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotOutliersBorderColor?: string | boolean;
  /**
   * Color for the outlier data points in boxplots
   * @graphTypes Boxplot
   * @default false
   */
  boxplotOutliersColor?: string | boolean;
  /**
   * Ratio for the size of the outliers with respect to boxplot
   * @graphTypes Boxplot
   * @default 10
   */
  boxplotOutliersRatio?: number | boolean;
  /**
   * Shape for the outlier data points
   * @graphTypes Boxplot
   * @default "circle"
   */
  boxplotOutliersShape?: "circle" | "square" | "triangle" | "diamond" | "plus" | "minus" | "star" | "circleOpen" | "squareOpen" | "triangleOpen" | "diamondOpen" | false | (string & {});
  /**
   * Fraction to adjust color transparency for the boxplot id individual data points are shown
   * @graphTypes Boxplot
   * @default 0.4
   */
  boxplotTransparency?: number | boolean;
  /**
   * Boxplot type
   * @graphTypes Boxplot
   * @default "boxWhiskers"
   */
  boxplotType?: "boxWhiskers" | "range" | false | (string & {});
  /**
   * Flag to adjust the width of boxplots. Similar to R if true then the width is proportional
   * to the sqare root of the number of observations
   * @graphTypes Boxplot
   * @default false
   */
  boxplotVarWidth?: boolean;
  /**
   * Boxplot whiskers type
   * @graphTypes Boxplot
   * @default "double"
   */
  boxplotWhiskersType?: "single" | "double" | "none" | false | (string & {});
  /**
   * A number between 0.1 and 1 to adjust the width of the boxplot when violins are shown. It
   * does not affect anything unless violins are shown
   * @graphTypes Boxplot
   * @default 0.33
   */
  boxplotWidthRatioIfViolin?: number | boolean;
  /**
   * Flag to enable broadcasting to other canvasXpress objects in the page
   * @default true
   */
  broadcast?: boolean;
  /**
   * Flag to broadcast DataFilter-UI filtering to the other canvasXpress objects in the page:
   * at the end of a DataFilter selection, modifyFilter('guess', annotation, 'like', values) is
   * fired on each peer in the same broadcastGroup. Default on; set false to opt out when an
   * app coordinates filtering itself (e.g. canvasxpress-dashboards annotation controls set
   * this false on their panels).
   * @default true
   */
  broadcastFilter?: boolean;
  /**
   * Group Id for canvas to broadcast to. If not specified then it broadcasts to all canvases
   * @default false
   */
  broadcastGroup?: string | boolean;
  /**
   * Color for the Bubbles. Only applicable to the bubble subtype
   * @graphTypes Bubble
   * @default "rgba(204,204,204,0.33)"
   */
  bubbleColor?: string | boolean;
  /**
   * Position for the labels in bubble circular plot
   * @graphTypes Bubble
   * @default "auto"
   */
  bubbleLabel?: "first" | "last" | "all" | "auto" | "none" | false | (string & {});
  /**
   * Line type when label is away from the bubble
   * @graphTypes Bubble
   * @default "arch"
   */
  bubbleLabelLineType?: "line" | "arch" | false | (string & {});
  /**
   * Position for the labels in bubble circular plot
   * @graphTypes Bubble
   * @default "center"
   */
  bubbleLabelPosition?: "top" | "center" | "bottom" | false | (string & {});
  /**
   * Color for the Outline of bubbles. Only applicable to the bubble subtype
   * @graphTypes Bubble
   * @default "rgb(0,0,0)"
   */
  bubbleOutlineColor?: string | boolean;
  /**
   * Style for the bullet. "progress" renders a thin rounded rail with a full-axis background
   * track, the sample name captioned above and the value at the rail end
   * @graphTypes Bullet
   * @default "square"
   */
  bulletStyle?: "square" | "round" | "squareGradient" | "roundGradient" | "progress" | false | (string & {});
  /**
   * Width for the target line in bullet graphs when the bulletTargetLine is a line
   * @graphTypes Bullet
   * @default 3
   */
  bulletTargetLineWidth?: number | boolean;
  /**
   * Shape for the target of the bullet
   * @graphTypes Bullet
   * @default "line"
   */
  bulletTargetType?: "line" | "circle" | "openCircle" | "star" | "openStar" | false | (string & {});
  /**
   * Color for the Color of the target/reference marker in bullet and meter graphs
   * @graphTypes Bullet
   * @default "rgb(0,0,0)"
   */
  bulletTargetVarColor?: string | boolean;
  /**
   * Variable name identifying the target/reference in bullet AND meter graphs. In a Meter it
   * draws a reference tick on the radial marks (gauge/speedometer/digital), summarized on the
   * same basis as the value
   * @graphTypes Bullet
   * @default false
   */
  bulletTargetVarName?: string | boolean;
  /**
   * A number between 0.1 and 1 to adjust the width of the bullet target line
   * @graphTypes Bullet
   * @default 0.7
   */
  bulletTargetWidthRatio?: number | boolean;
  /**
   * A number between 0.1 and 1 to adjust the width of the bullet
   * @graphTypes Bullet
   * @default 0.5
   */
  bulletWidthRatio?: number | boolean;
  /**
   * Flag to cache image in meta data as Base64
   * @default false
   */
  cacheBase64?: boolean;
  /**
   * Flag to force or not to calculate the network layout
   * @graphTypes Network
   * @default true
   */
  calculateLayout?: boolean;
  /**
   * Flag to calculate the network communities using the jLouvain algorithm. If this flag is
   * false the property community and communityColor for each node will need to be provided,
   * otherwise all nodes will belong to a single community
   * @graphTypes Network
   * @default true
   */
  calculateNetworkCommunities?: boolean;
  /**
   * Formula-derived columns (Tableau-style calculated fields). Each entry is { name, target,
   * formula } where target is variable | sampleAnnotation | variableAnnotation and formula is
   * a safe expression over existing fields (e.g. log2(A/B), (V1 - mean(V1)) / sd(V1)).
   * Materialized into data.y/x/z at load; serialized so they persist and reproduce
   * @default []
   */
  calculatedFields?: unknown[] | boolean | string | number;
  /**
   * Default type of cap for lines
   * @default "butt"
   */
  capType?: "butt" | "round" | "square" | false | (string & {});
  /**
   * Color the ribbon according to either the source or the target of the connection
   * @graphTypes Chord
   * @default "largest"
   */
  chordColor?: "source" | "target" | "largest" | "smallest" | false | (string & {});
  /**
   * Flag to show/hide the the scale in the chord graphs
   * @graphTypes Chord
   * @default true
   */
  chordScaleShow?: boolean;
  /**
   * Relative length in pixels of the chord thickness in the circular graphs. Only applicable
   * to the chord subtype
   * @graphTypes Chord
   * @default 28
   */
  chordThickness?: number | boolean;
  /**
   * Manhattan Chromosomes length is a sorted array by chromosome with the length in base pairs
   * for each chromosome. It is required when scatterType is manhattan
   * @graphTypes Scatter2D
   * @default []
   */
  chromosomeLengths?: unknown[] | boolean | string | number;
  /**
   * Color for the circular anchor
   * @graphTypes Circular
   * @default "#0ab0db"
   */
  circularAnchorColor?: string | boolean;
  /**
   * Length in pixels of the height of the circular anchor
   * @graphTypes Circular
   * @default 8
   */
  circularAnchorLength?: number | boolean;
  /**
   * Position to align the anchors2 in circular plot
   * @graphTypes Circular
   * @default "outside"
   */
  circularAnchors2Align?: "inside" | "outside" | false | (string & {});
  /**
   * Position to align the anchors in circular plot
   * @graphTypes Circular
   * @default "inside"
   */
  circularAnchorsAlign?: "inside" | "outside" | false | (string & {});
  /**
   * Number of degrees to extend the circular graph
   * @graphTypes Circular
   * @default 360
   */
  circularArc?: number | boolean;
  /**
   * Array containing the proportion of the radius for each arc sector in the circular plot. If
   * not specified then all radius will be the same. The plot will be scaled based of the
   * largest value in the array
   * @graphTypes Circular
   * @default []
   */
  circularArcSectorRadius?: unknown[] | boolean | string | number;
  /**
   * Number of degrees to separate the arc sectors in the circular plots. The arc sectors can
   * be set with the segregateSampleBy property
   * @graphTypes Circular
   * @default 5
   */
  circularArcSectorSeparation?: number | boolean;
  /**
   * Proportion of the center of the circular graph to use as void; that is the fraction of the
   * radius in the middle of the graph
   * @graphTypes Circular
   * @default 0.3
   */
  circularCenterProportion?: number | boolean;
  /**
   * Array to store connections in circular graphs
   * @graphTypes Circular
   * @default []
   */
  circularConnections?: unknown[] | boolean | string | number;
  /**
   * Percentage of transparency applied to the connections in the circular graphs
   * @graphTypes Circular
   * @default 0.5
   */
  circularConnectionsTransparency?: number | boolean;
  /**
   * Position to align the data in 2D radial graphs and ideograms
   * @graphTypes Circular
   * @default "distributed"
   */
  circularDataPosition?: "absolute" | "distributed" | false | (string & {});
  /**
   * Position to align the variable and sample names in circular plot
   * @graphTypes Circular
   * @default "outside"
   */
  circularLabelsAlign?: "inside" | "outside" | false | (string & {});
  /**
   * Factor to adjust the spacing between letters in the circular graphs. The greater the
   * number the closer the letters in the labels
   * @graphTypes Circular
   * @default 1
   */
  circularLetterSeparationFactor?: number | boolean;
  /**
   * Orientation to show the segregation levels
   * @graphTypes Circular
   * @default "circular"
   */
  circularOverlayLevelOrientation?: "perpendicular" | "circular" | false | (string & {});
  /**
   * Thickness in pixels of the circular overlay and ideogram
   * @graphTypes Circular
   * @default 14
   */
  circularOverlayThickness?: number | boolean;
  /**
   * Number of degrees to rotate the circular graph to adjust the starting point
   * @graphTypes Circular
   * @default 0
   */
  circularRotate?: number | boolean;
  /**
   * Orientation to show the sample names
   * @graphTypes Circular
   * @default "perpendicular"
   */
  circularSampleLabelOrientation?: "perpendicular" | "circular" | false | (string & {});
  /**
   * Position to align the percent and radial axes in circular plot
   * @graphTypes Circular
   * @default "inside"
   */
  circularScalesAlign?: "inside" | "outside" | false | (string & {});
  /**
   * Array containing the graph type for each track in the circular plot
   * @graphTypes Circular
   * @default []
   */
  circularTrackGraphType?: unknown[] | boolean | string | number;
  /**
   * Array containing the proportion of the dimensions for each data track in the circular
   * plot. It must be a value between 0.1 and 1. If not specified then all track will be
   * weighted the same
   * @graphTypes Circular
   * @default []
   */
  circularTrackGraphWeight?: unknown[] | boolean | string | number;
  /**
   * An array specifying the names of each track in the circular plot. It must match the length
   * of the *vars* array used for the data. Use an empty string to exclude a variable from the
   * plot
   * @graphTypes Circular
   * @default []
   */
  circularTrackName?: unknown[] | boolean | string | number;
  /**
   * Array containing the order of the tracks. The array includes the levels of the factor
   * specified as either segregateSamplesBy when show the ideogram or segregateVariablesBy when
   * there is no ideogram. It may also include any of the following terms: dendrogram,
   * ideogram, labels, scale, percent and data. If there are sample overlays, the array may
   * also contain any of the factor names include in the this.data.x object. This array
   * supersede any other configurations for example for the sample overlays
   * @graphTypes Circular
   * @default ["percent","scale","dendrogram","ideogram","overlays","labels","anchors","data"]
   */
  circularTrackOrder?: unknown[] | boolean | string | number;
  /**
   * Number of pixels to separate the tracks in the circular plots
   * @graphTypes Circular
   * @default 5
   */
  circularTrackSeparation?: number | boolean;
  /**
   * Property to set the subtype of circular graph. If set to sunburst or bubble then
   * smpOverlays can be used to build a hierarchy for the graph
   * @graphTypes Circular
   * @default "normal"
   */
  circularType?: "normal" | "radar" | "sunburst" | "chord" | "bubble" | false | (string & {});
  /**
   * A reference citation of the graph which is placed at the bottom right corner
   * @default false
   */
  citation?: string | boolean;
  /**
   * Alignment (or position) for the citations
   * @default "right"
   */
  citationAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the citations
   * @default "middle"
   */
  citationBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in citations
   * @default "rgb(0,0,0)"
   */
  citationColor?: string | boolean;
  /**
   * Font size for the text in citations. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * citationScaleFontFactor
   * @default 7
   */
  citationFontSize?: number | boolean;
  /**
   * Font style for the citations
   * @default ""
   */
  citationFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the citations
   * @default 5
   */
  citationMargin?: number | boolean;
  /**
   * Rotation in degrees for the citations
   * @default 0
   */
  citationRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the citations font size in the canvas
   * @default 1
   */
  citationScaleFontFactor?: number | boolean;
  /**
   * Axis to use when clustering data
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "samples"
   */
  clusterAxis?: "samples" | "variables" | false | (string & {});
  /**
   * Distance metric to use when clustering data
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "euclidianDistance"
   */
  clusteringDistance?: "euclidianDistance" | "manhattanDistance" | "maxDistance" | false | (string & {});
  /**
   * Output type for the JSON code
   * @default "params"
   */
  codeType?: "pretty" | "compact" | "tab" | "params" | false | (string & {});
  /**
   * Name of a variable annotation or a sample name or the string variable to color the
   * variables
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  colorBy?: string | boolean;
  /**
   * String that identify the object containing a two dimensional array with discrete values
   * used to color data points when drawing a multidimensional Heatmap. It must be located
   * within the data.y object (for example: data.y.data2)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  colorByData?: string | boolean;
  /**
   * Name of the attribute to color the edges
   * @graphTypes Network
   * @default false
   */
  colorEdgeBy?: string | boolean;
  /**
   * Object to assign custom colors to sample annotations and variable annotations included in
   * the data object. The key of the object is the name of an annotation in the data.x object,
   * or the name of an annotation in the data.z object. The value for each key could be either:
   * (1) a scalar with a valid color scheme (see this.meta.def.colorSchemes), or (2) an array
   * with valid colors, or (3) an object to specify custom colors for each of the values of the
   * annotation. A default color will be assigned to a data point whose value was not included
   * the object. CanvasXpress will handle string and numeric annotation approprietly. However,
   * if an object is specified like that one in number (3) the annotation will be treated as
   * categorical even if the annotation is numeric
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  colorKey?: Record<string, unknown> | boolean;
  /**
   * Name of the variable annotation to color the labels in Scatter2D plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  colorLabelBy?: string | boolean;
  /**
   * Title for the color legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  colorLegendTitle?: string | boolean;
  /**
   * Name of the attribute to color the nodes
   * @graphTypes Network
   * @default false
   */
  colorNodeBy?: string | boolean;
  /**
   * Color schemes can be user defined which will take the colors in the color property or one
   * provided in canvasXpress. The order of the colors will be used to sequentially select when
   * a different color is needed in a particular visualization
   * @default "User"
   */
  colorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | false | (string & {});
  /**
   * Name of metadata annotation to color the sample (row) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  colorSmpDendrogramBy?: string | boolean;
  /**
   * An array with valid color names to create a color brew for the default color indicators
   * @default ["#4575b4","#91bfdb","#e0f3f8","#ffffbf","#fee090","#fc8d59","#d73027"]
   */
  colorSpectrum?: unknown[] | boolean | string | number;
  /**
   * Flag to bin the color spectrum based on the colorSpectrumBreaks or the colorSpectrum
   * colors
   * @default false
   */
  colorSpectrumBinned?: boolean;
  /**
   * An array with numbers in ascending order for the color spectrum to create discontinuous
   * spectra. It must have the same length of the colorSpectrum array for example [0, 0.3, 1]
   * @default []
   */
  colorSpectrumBreaks?: unknown[] | boolean | string | number;
  /**
   * Color spectrum by factor in heatmaps. The first key represents the name of the factor
   * within the x/z data object. The subsequent keys correspond to each level of that factor.
   * Finally, the next keys include show, order, spectrum, setMin, setMax, zero, and breaks,
   * each paired with their respective values
   * @default {}
   */
  colorSpectrumByFactor?: Record<string, unknown> | boolean;
  /**
   * Color spectrum by object in heatmaps. The first key represents the name of the data
   * object. The subsequent keys include show, order, spectrum, setMin, setMax, zero, and
   * breaks, each paired with their respective values
   * @default {}
   */
  colorSpectrumByObject?: Record<string, unknown> | boolean;
  /**
   * A value to be at the center of the color spectrum to produce symmetrical heatmaps
   * @default null
   */
  colorSpectrumZeroValue?: number | boolean;
  /**
   * Name of metadata annotation to color the variable (column) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  colorVarDendrogramBy?: string | boolean;
  /** Colors */
  colors?: unknown[] | boolean | string | number;
  /**
   * Name of a variable annotation to color the confidence intervals
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  confidenceBy?: string | boolean;
  /**
   * Color for the confidence intervals
   * @graphTypes Scatter2D
   * @default "rgb(50,50,50)"
   */
  confidenceIntervalColor?: string | boolean;
  /**
   * Type of coordination to color fit line, confidence intervals and data points. Full is the
   * same color for all elements. Line is the same color for confidence intervals and line fit
   * only
   * @graphTypes Scatter2D
   * @default false
   */
  confidenceIntervalColorCoordinate?: string | boolean;
  /**
   * Maximum number of data values allowed for confidence intervals to display
   * @graphTypes Scatter2D
   * @default 2000
   */
  confidenceIntervalsMax?: number | boolean;
  /**
   * Confidence level for regressions and ellipses
   * @graphTypes Scatter2D
   * @default 0.95
   */
  confidenceLevel?: number | boolean;
  /**
   * Name of a variable annotation to connect the variables
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  connectBy?: string | boolean;
  /**
   * Color for the connectBy lines
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204,204,204)"
   */
  connectByColor?: string | boolean;
  /**
   * Flag to prevent coloring the lines by the connectBy annotation. Usefull when connectBy is
   * used along with colorBy to avoid confusion of colors
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  connectByNoColor?: boolean;
  /**
   * Flag to colour each connectBy line from the colours of its own endpoint data points (e.g.
   * a paired boxplot connector colored by an up/down aesthetic) instead of by the connectBy
   * annotation. Set by the ggplot geom_line-over-boxplot path so a saved chart reloads with
   * the same per-connector colours
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  connectByPointColor?: boolean;
  /**
   * Width for the line of the connectBy line
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 2
   */
  connectByWidth?: number | boolean;
  /**
   * Object to assign custom colors to lines when samples are connected by a sample annotations
   * included in the data object. The key of the object is the name of an annotation in the
   * data.x object. A default connect will be assigned to a data point whose value was not
   * included the object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  connectKey?: Record<string, unknown> | boolean;
  /**
   * URL for the Connectors service. Use your own http://localhost:8300/ or bult-in
   * https://www.canvasxpress.org/connectors/
   * @default "https://www.canvasxpress.org/connectors/"
   */
  connectorsServiceURL?: string | boolean;
  /**
   * Color for the Background color for the context menu
   * @default "#ffffff"
   */
  contextMenuBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for the context menu
   * @default "#087ad1"
   */
  contextMenuBorderColor?: string | boolean;
  /**
   * Font size for the context menu
   * @default "13px"
   */
  contextMenuFontSize?: string | boolean;
  /**
   * Color for the Hover highlight color for the context menu
   * @default "rgba(124, 182, 226, 0.2)"
   */
  contextMenuHoverColor?: string | boolean;
  /**
   * Color for the Text color for the context menu
   * @default "#555b62"
   */
  contextMenuTextColor?: string | boolean;
  /**
   * Color for the the bands in contours
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default "#0ab0db"
   */
  contourBandsColor?: string | boolean;
  /**
   * Color scheme to use in contours
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default "Viridis"
   */
  contourColorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | false | (string & {});
  /**
   * Color for the data points in contours when the contour is filled
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default "rgb(0,0,0)"
   */
  contourDataPointsColor?: string | boolean;
  /**
   * Flag to color the contour plot
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default false
   */
  contourFilled?: boolean;
  /**
   * Transparency applied to the filled contours
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default 1
   */
  contourFilledTransparency?: number | boolean;
  /**
   * Numbe of contour levels. Overridden by contourLevelWidth
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default 10
   */
  contourLevelNumber?: number | boolean;
  /**
   * Width of contour levels
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default null
   */
  contourLevelWidth?: number | boolean;
  /**
   * Numeric vector to set the contour levels. It is automatically calculated if not defined
   * using the axisAlgorithm setting and the contourLevelNumber
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default []
   */
  contourLevels?: unknown[] | boolean | string | number;
  /**
   * Contour density type
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default "density"
   */
  contourStat?: "density" | "ndensity" | "count" | false | (string & {});
  /**
   * Contour type
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default "normal"
   */
  contourType?: "normal" | "raster" | "point" | false | (string & {});
  /**
   * Flag to use same color in BarLine plots. If set to true the color of the bars and the
   * lines will be coordinated
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default false
   */
  coordinateLineColor?: boolean;
  /**
   * Flag to coordinate colors of the nodes with convex hull for the network communities
   * @graphTypes Network
   * @default false
   */
  coordinateNetworkConvexHullCommunityColor?: boolean;
  /**
   * Flag to show a region above the correlation plot that anchror a sample/variable to a
   * position
   * @graphTypes Correlation
   * @default false
   */
  correlationAnchorLegend?: boolean;
  /**
   * Length in pixels of the height of the correlation anchor legend
   * @graphTypes Correlation
   * @default 40
   */
  correlationAnchorLegendAlignWidth?: number | boolean;
  /**
   * Axis used for the correlation
   * @graphTypes Correlation
   * @default "samples"
   */
  correlationAxis?: "samples" | "variables" | false | (string & {});
  /**
   * Interval for the sample or variable labels in the correlation plot
   * @graphTypes Correlation
   * @default 1
   */
  correlationLabelInterval?: number | boolean;
  /**
   * Shape to use in the correlation graphs
   * @graphTypes Correlation
   * @default "diamond"
   */
  correlationType?: "diamond" | "circle" | false | (string & {});
  /**
   * Custom legends : Array of objects [{ size : [], shape : [], shapeColor : [], line : [],
   * lineColor : [], lineStart : [], lineEnd : [], text : [], x : number, y : number, title :
   * string }]
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default []
   */
  customLegend?: unknown[] | boolean | string | number;
  /**
   * Color for the Background color for the data customizer
   * @default "#ffffff"
   */
  customizerBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for the data customizer
   * @default "#087ad1"
   */
  customizerBorderColor?: string | boolean;
  /**
   * Color for the Background color for the close button in the data customizer
   * @default "#087ad1"
   */
  customizerCloseBackgroundColor?: string | boolean;
  /**
   * Color for the Text color for the close button in the data customizer
   * @default "#ffffff"
   */
  customizerCloseTextColor?: string | boolean;
  /**
   * Flag to show entries in scrolling widgets as text. The default is to show them as
   * icons-like
   * @default true
   */
  customizerEntriesAsList?: boolean;
  /**
   * Font size for the data customizer
   * @default "12px"
   */
  customizerFontSize?: string | boolean;
  /**
   * Flag to maximize the graph when the customizer is called
   * @default false
   */
  customizerGraphMaximize?: boolean;
  /**
   * Color for the Hover highlight color for the data customizer
   * @default "rgba(124, 182, 226, 0.2)"
   */
  customizerHoverColor?: string | boolean;
  /**
   * Size for the customizer. Requires re-opening of customizer
   * @default "medium"
   */
  customizerSize?: "xsmall" | "small" | "midsmall" | "medium" | "large" | false | (string & {});
  /**
   * Color for the Text color for the data customizer
   * @default "#555b62"
   */
  customizerTextColor?: string | boolean;
  /**
   * Size in pixels of the length of the dashes and the separation between the dashes in the
   * dashed lines
   * @default 8
   */
  dashLength?: number | boolean;
  /**
   * URL for the Dashboards service. Use your own http://localhost:8200/ or bult-in
   * https://www.canvasxpress.org/dashboards/
   * @default "https://www.canvasxpress.org/dashboards/"
   */
  dashboardsServiceURL?: string | boolean;
  /**
   * Color for the Background color for the data filter panel
   * @default "#ffffff"
   */
  dataFilterBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for the data filter panel
   * @default "#087ad1"
   */
  dataFilterBorderColor?: string | boolean;
  /**
   * Font size for the data filter panel
   * @default "12px"
   */
  dataFilterFontSize?: string | boolean;
  /**
   * Color for the Hover highlight color for the data filter panel
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataFilterHoverColor?: string | boolean;
  /**
   * Maximum number of items in the data filter before it becomes a scroll box
   * @default 12
   */
  dataFilterMaxItems?: number | boolean;
  /**
   * Color for the Text color for the data filter panel
   * @default "#555b62"
   */
  dataFilterTextColor?: string | boolean;
  /**
   * Color for the Background color for the data filter toolbar
   * @default "#cccccc"
   */
  dataFilterToolbarBackgroundColor?: string | boolean;
  /**
   * Size in pixels for the data filters
   * @default 300
   */
  dataFilterWidth?: number | boolean;
  /**
   * Color for the border in data labels background
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  dataLabelBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in data labels background
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  dataLabelBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in data labels background
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  dataLabelBackgroundBorderSize?: number | boolean;
  /**
   * Color for the data labels background
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default "rgb(255,255,255)"
   */
  dataLabelBackgroundColor?: string | boolean;
  /**
   * A declarative dplyr/tidyr data-grammar recipe applied over the tidy substrate BEFORE the
   * chart wrangle. An ordered array of ops: {op:"filter", col, cmp (one of
   * ==,!=,>,>=,<,<=,in), value}; {op:"mutate", col, fn} where fn is a transform name
   * (log2/log10/-log2/-log10/exp2/exp10/sqrt); {op:"arrange", by, desc}; {op:"select",
   * cols:[...]}. Applied left-to-right like the dplyr pipe; mutating the recipe changes the
   * rendered data (generative). Equivalent of dplyr filter/mutate/arrange/select.
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  dataPipeline?: unknown[] | boolean | string | number;
  /**
   * Approximate pixel size for the data points in scatter plots, dotplots and boxplots. The
   * size will be adjusted according to the dimensions of the graph
   * @default 10
   */
  dataPointSize?: number | boolean;
  /**
   * Factor used to adjust the size of the dataPointSize
   * @default 1
   */
  dataPointSizeScaleFactor?: number | boolean;
  /**
   * Color for the the brand of the data table. Used wherever a non-neutral color is required.
   * Selections, focus outlines and checkboxes use the accent color by default
   * @default "rgb(8, 122, 209)"
   */
  dataTableAccentColor?: string | boolean;
  /**
   * Color for the border of the active data table cell
   * @default "rgb(124, 182, 226)"
   */
  dataTableActiveCellBorderColor?: string | boolean;
  /**
   * Flag to calculate the width of the columns based on the data
   * @default false
   */
  dataTableAutoColumnWidth?: boolean;
  /**
   * Color for the background of the data table banner
   * @default "rgb(255, 255, 255)"
   */
  dataTableBannerBackgroundColor?: string | boolean;
  /**
   * Color for the border of the data table banner
   * @default "rgb(215, 226, 230)"
   */
  dataTableBannerBorderColor?: string | boolean;
  /**
   * Image to brand the data table
   * @default false
   */
  dataTableBannerImage?: string | boolean;
  /**
   * Flag to show/hide the Flag to show the banner in the data table
   * @default true
   */
  dataTableBannerShow?: boolean;
  /**
   * Alignment (or position) for the data table banner
   * @default "center"
   */
  dataTableBannerTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table banner
   * @default "middle"
   */
  dataTableBannerTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table banner
   * @default "rgb(85, 91, 98)"
   */
  dataTableBannerTextColor?: string | boolean;
  /**
   * Font size for the text in data table banner. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableBannerTextScaleFontFactor
   * @default 13
   */
  dataTableBannerTextFontSize?: number | boolean;
  /**
   * Font style for the data table banner
   * @default ""
   */
  dataTableBannerTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table banner
   * @default 5
   */
  dataTableBannerTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table banner
   * @default 0
   */
  dataTableBannerTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table banner font size in the canvas
   * @default 1
   */
  dataTableBannerTextScaleFontFactor?: number | boolean;
  /**
   * Color for the border of the data table
   * @default "rgb(8, 122, 209)"
   */
  dataTableBorderColor?: string | boolean;
  /**
   * Color for the background of the data table cells excluding headers
   * @default "rgb(255, 255, 255)"
   */
  dataTableCellBackgroundColor?: string | boolean;
  /**
   * Color for the border of the data table cells
   * @default "rgb(215, 226, 230)"
   */
  dataTableCellBorderColor?: string | boolean;
  /**
   * data table cell borders
   * @default "rows"
   */
  dataTableCellBorders?: "all" | "none" | "rows" | "cols" | false | (string & {});
  /**
   * Color for the background of the data table cells when hovering
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataTableCellHoverBackgroundColor?: string | boolean;
  /**
   * Alignment (or position) for the data table cells
   * @default "left"
   */
  dataTableCellTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table cells
   * @default "middle"
   */
  dataTableCellTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table cells
   * @default "rgb(85, 91, 98)"
   */
  dataTableCellTextColor?: string | boolean;
  /**
   * Font size for the text in data table cells. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the dataTableCellTextScaleFontFactor
   * @default 13
   */
  dataTableCellTextFontSize?: number | boolean;
  /**
   * Font style for the data table cells
   * @default ""
   */
  dataTableCellTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table cells
   * @default 5
   */
  dataTableCellTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table cells
   * @default 0
   */
  dataTableCellTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table cells font size in the canvas
   * @default 1
   */
  dataTableCellTextScaleFontFactor?: number | boolean;
  /**
   * Alignment for the cols in the data table. Key is the sample name and the value is the
   * alignment
   * @default {}
   */
  dataTableColAlignment?: Record<string, unknown> | boolean;
  /**
   * Format for the cols in the data table. Key is the sample name and the value is the format
   * string using sprintf notation
   * @default {}
   */
  dataTableColFormat?: Record<string, unknown> | boolean;
  /**
   * Array to store the columns to hide in the data table
   * @default []
   */
  dataTableColHide?: unknown[] | boolean | string | number;
  /**
   * Array to store the column sorting for the data table. It only applies to meta data and
   * exclude variables or samples. Those not included willl be placed last
   * @default []
   */
  dataTableColOrder?: unknown[] | boolean | string | number;
  /**
   * Array to store the columns to pin in the data table. Pinned columns will always be visible
   * when scrolling horizontally
   * @default []
   */
  dataTableColPin?: unknown[] | boolean | string | number;
  /**
   * Properties for the cols in the data table. Key is the sample name and the value is the
   * width in pixels
   * @default {}
   */
  dataTableColProperties?: Record<string, unknown> | boolean;
  /**
   * Number of pixels for the width of cells in the data table
   * @default 180
   */
  dataTableColWidth?: number | boolean;
  /**
   * Transparency for the background of the data table cells if colored
   * @default 0.5
   */
  dataTableColorTransparency?: number | boolean;
  /**
   * Flag to color the data table
   * @default false
   */
  dataTableColored?: boolean;
  /**
   * Flag to group rows in the data table based on metadata
   * @default false
   */
  dataTableGrouped?: boolean;
  /**
   * Color for the background of the data table headers
   * @default "rgb(255, 255, 255)"
   */
  dataTableHeaderBackgroundColor?: string | boolean;
  /**
   * HTML string to use as template for the data table header info
   * @default false
   */
  dataTableHeaderTemplate?: string | boolean;
  /**
   * Alignment (or position) for the data table headers
   * @default "left"
   */
  dataTableHeaderTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table headers
   * @default "middle"
   */
  dataTableHeaderTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table headers
   * @default "rgb(85, 91, 98)"
   */
  dataTableHeaderTextColor?: string | boolean;
  /**
   * Font size for the text in data table headers. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableHeaderTextScaleFontFactor
   * @default 13
   */
  dataTableHeaderTextFontSize?: number | boolean;
  /**
   * Font style for the data table headers
   * @default ""
   */
  dataTableHeaderTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table headers
   * @default 5
   */
  dataTableHeaderTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table headers
   * @default 0
   */
  dataTableHeaderTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table headers font size in the canvas
   * @default 1
   */
  dataTableHeaderTextScaleFontFactor?: number | boolean;
  /**
   * Show nodes or edges on data table
   * @default "nodes"
   */
  dataTableNetwork?: "nodes" | "edges" | false | (string & {});
  /**
   * Color for the background of the odd data table cells excluding headers
   * @default "rgb(247, 248, 249)"
   */
  dataTableOddCellBackgroundColor?: string | boolean;
  /**
   * Flag to show/hide the Flag to show data after selecting data in the plot
   * @default false
   */
  dataTableOnSelectShow?: boolean;
  /**
   * Color for the background of the data table pagination bar
   * @default "rgb(255, 255, 255)"
   */
  dataTablePaginationBackgroundColor?: string | boolean;
  /**
   * Color for the border of the data table pagination bar
   * @default "rgb(215, 226, 230)"
   */
  dataTablePaginationBorderColor?: string | boolean;
  /**
   * Alignment (or position) for the data table pagination bar select
   * @default "center"
   */
  dataTablePaginationSelectTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table pagination bar select
   * @default "middle"
   */
  dataTablePaginationSelectTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table pagination bar select
   * @default "rgb(85, 91, 98)"
   */
  dataTablePaginationSelectTextColor?: string | boolean;
  /**
   * Font size for the text in data table pagination bar select. Be aware that auto scaling
   * font must be turned off for this property to take effect. A more convenient way to modify
   * the size is to use the dataTablePaginationSelectTextScaleFontFactor
   * @default 12
   */
  dataTablePaginationSelectTextFontSize?: number | boolean;
  /**
   * Font style for the data table pagination bar select
   * @default ""
   */
  dataTablePaginationSelectTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table pagination bar select
   * @default 5
   */
  dataTablePaginationSelectTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table pagination bar select
   * @default 0
   */
  dataTablePaginationSelectTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table pagination bar select font size
   * in the canvas
   * @default 1
   */
  dataTablePaginationSelectTextScaleFontFactor?: number | boolean;
  /**
   * Flag to show/hide the Flag to show the pagination in the data table
   * @default false
   */
  dataTablePaginationShow?: boolean;
  /**
   * Number of rows or columns to show per page in the data table when pagination is on
   * @default 25
   */
  dataTablePaginationSize?: number | boolean;
  /**
   * Alignment (or position) for the data table pagination bar
   * @default "center"
   */
  dataTablePaginationTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table pagination bar
   * @default "middle"
   */
  dataTablePaginationTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table pagination bar
   * @default "rgb(85, 91, 98)"
   */
  dataTablePaginationTextColor?: string | boolean;
  /**
   * Font size for the text in data table pagination bar. Be aware that auto scaling font must
   * be turned off for this property to take effect. A more convenient way to modify the size
   * is to use the dataTablePaginationTextScaleFontFactor
   * @default 13
   */
  dataTablePaginationTextFontSize?: number | boolean;
  /**
   * Font style for the data table pagination bar
   * @default ""
   */
  dataTablePaginationTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table pagination bar
   * @default 5
   */
  dataTablePaginationTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table pagination bar
   * @default 0
   */
  dataTablePaginationTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table pagination bar font size in the
   * canvas
   * @default 1
   */
  dataTablePaginationTextScaleFontFactor?: number | boolean;
  /**
   * Array of group IDs for rows to display in the data table when data is grouped
   * @default []
   */
  dataTableRowGroups?: unknown[] | boolean | string | number;
  /**
   * Number of pixels for the height of cells in the data table
   * @default 32
   */
  dataTableRowHeight?: number | boolean;
  /**
   * Color for the background of the row of the data table cells when hovering
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataTableRowHoverBackgroundColor?: string | boolean;
  /**
   * Number of lines in cells in the data table
   * @default 1
   */
  dataTableRowLines?: number | boolean;
  /**
   * Flag to show/hide the Flag to show row numbers in the first column of data table
   * @default true
   */
  dataTableRowNumbersShow?: boolean;
  /**
   * Behavior for the scrollbars in the data table
   * @default "auto"
   */
  dataTableScrollDirection?: "auto" | "normal" | "inverted" | false | (string & {});
  /**
   * Color for the background of the data table status bar
   * @default "rgb(255, 255, 255)"
   */
  dataTableStatusBackgroundColor?: string | boolean;
  /**
   * Color for the border of the data table status bar
   * @default "rgb(215, 226, 230)"
   */
  dataTableStatusBorderColor?: string | boolean;
  /**
   * Flag to show/hide the Flag to show the status div in the data table
   * @default true
   */
  dataTableStatusShow?: boolean;
  /**
   * Alignment (or position) for the data table status bar
   * @default "center"
   */
  dataTableStatusTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data table status bar
   * @default "middle"
   */
  dataTableStatusTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data table status bar
   * @default "rgb(85, 91, 98)"
   */
  dataTableStatusTextColor?: string | boolean;
  /**
   * Font size for the text in data table status bar. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableStatusTextScaleFontFactor
   * @default 13
   */
  dataTableStatusTextFontSize?: number | boolean;
  /**
   * Font style for the data table status bar
   * @default ""
   */
  dataTableStatusTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data table status bar
   * @default 5
   */
  dataTableStatusTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data table status bar
   * @default 0
   */
  dataTableStatusTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data table status bar font size in the
   * canvas
   * @default 1
   */
  dataTableStatusTextScaleFontFactor?: number | boolean;
  /**
   * Transparency for the stripes in the data table using the base color for the UI widgets
   * @default 0.05
   */
  dataTableStripeTransparency?: number | boolean;
  /**
   * Flag to show the stripes in the data table rows
   * @default true
   */
  dataTableStriped?: boolean;
  /**
   * Default aggregation used for the data table summary row
   * @default "sum"
   */
  dataTableSummaryRowFunction?: "sum" | "mean" | "median" | "min" | "max" | "count" | false | (string & {});
  /**
   * Per-column aggregation overrides for the data table summary row. Key is the column name
   * and the value is one of sum, mean, median, min, max or count
   * @default {}
   */
  dataTableSummaryRowFunctions?: Record<string, unknown> | boolean;
  /**
   * Label placed in the first non-numeric column of the data table summary row
   * @default "Summary"
   */
  dataTableSummaryRowLabel?: string | boolean;
  /**
   * Flag to show/hide the Flag to append a summary row at the end of the data table that
   * aggregates the numerical columns
   * @default false
   */
  dataTableSummaryRowShow?: boolean;
  /**
   * Color for the background of the data table toolbar
   * @default "rgb(255, 255, 255)"
   */
  dataTableToolbarBackgroundColor?: string | boolean;
  /**
   * Color for the border of the data table toolbar
   * @default "rgb(215, 226, 230)"
   */
  dataTableToolbarBorderColor?: string | boolean;
  /**
   * Flag to show/hide the Flag to show the toolbar with icons to connect to the graph
   * interface in the data table
   * @default true
   */
  dataTableToolbarShow?: boolean;
  /**
   * Flag to transpose the data in the data table
   * @default true
   */
  dataTableTransposed?: boolean;
  /**
   * Name for the first column in the data table
   * @default false
   */
  dataTableZeroHeader?: string | boolean;
  /**
   * Alignment (or position) for the data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  dataTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  dataTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  dataTextColor?: string | boolean;
  /**
   * Font size for the text in data labels. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * dataTextScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 10
   */
  dataTextFontSize?: number | boolean;
  /**
   * Font style for the data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  dataTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  dataTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the data labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  dataTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the data labels font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  dataTextScaleFontFactor?: number | boolean;
  /**
   * Style for the UI
   * @default "modern"
   */
  dataUIStyle?: "cx" | "stripped" | "modern" | "old" | "bms" | "colorful" | "rdc" | "ngs360" | false | (string & {});
  /**
   * Frequency for the data values in line graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "ends"
   */
  dataValuesFrequency?: "all" | "first" | "last" | "ends" | false | (string & {});
  /**
   * Position for the data values in line graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "outside"
   */
  dataValuesPosition?: "inside" | "outside" | false | (string & {});
  /**
   * Color for the background of the data table
   * @default "rgb(255, 255, 255)"
   */
  datatableBackgroundColor?: string | boolean;
  /**
   * Flag to turn on alerts
   * @default false
   */
  debug?: boolean;
  /**
   * Flag to render object areas when debugging
   * @default false
   */
  debugWithArea?: boolean;
  /**
   * Enables visual annotations on your graph, with its structure depending on the graphType.
   * For network graphs, it is an array of node property names; for one-dimensional graphs, it
   * is an object with primary keys like line, range, point, text, marker, or error; and for
   * scatter plots, it is an object with primary keys such as linear, exponential, logarithmic,
   * power, polynomial, nonlinearfit, regression, normal, line, text, label, point, range,
   * image, or polygon. In the latter two cases, the value for each primary key is an array of
   * objects, where each object specifies the properties of a decoration, for example, for a
   * one-dimensional line: {line: [{value: 5, color: "#ff0000", width: 2, label: "Threshold",
   * align: "right"}]}, or for a scatter plot linear fit: {linear: [{x: 1, y: 2, x2: 3, y2: 4,
   * color: "#ff0000", width: 2, label: "Threshold", align: "right"}]}
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default false
   */
  decorations?: Record<string, unknown> | unknown[] | boolean | string | number;
  /**
   * Color for the border in decoration legends background
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "rgb(204,204,204)"
   */
  decorationsBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in decoration legends background
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  decorationsBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in decoration legends background
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  decorationsBackgroundBorderSize?: number | boolean;
  /**
   * Color for the decoration legends background
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "rgba(255,255,255,0)"
   */
  decorationsBackgroundColor?: string | boolean;
  /**
   * Flag to clip decorations to the x,y area of the plot.
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default true
   */
  decorationsClipped?: boolean;
  /**
   * Array of colors used for the decorations. Only applicable to Network graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default []
   */
  decorationsColors?: unknown[] | boolean | string | number;
  /**
   * Length in pixels of the height for the decorations. Only applicable to Network graphs.
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 40
   */
  decorationsHeight?: number | boolean;
  /**
   * Flag to draw decorations after drawing the data. Not applicable to Network graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default true
   */
  decorationsOnTop?: boolean;
  /**
   * Position for the the decorations
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "bottom"
   */
  decorationsPosition?: "topRight" | "right" | "bottomRight" | "bottom" | "bottomLeft" | "left" | "topLeft" | "top" | false | (string & {});
  /**
   * Object to assign properties like color, position, etc. Only applicable to Network graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default {}
   */
  decorationsProperties?: Record<string, unknown> | boolean;
  /**
   * Alignment (or position) for the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "center"
   */
  decorationsTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  decorationsTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  decorationsTextColor?: string | boolean;
  /**
   * Font size for the text in decoration legends. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the decorationsTextScaleFontFactor
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 10
   */
  decorationsTextFontSize?: number | boolean;
  /**
   * Font style for the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default ""
   */
  decorationsTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 5
   */
  decorationsTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 0
   */
  decorationsTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the decoration legends font size in the canvas
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 1
   */
  decorationsTextScaleFontFactor?: number | boolean;
  /**
   * Flag to transform the data in decorations produced in Cxplot. Not applicable to Network
   * graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default true
   */
  decorationsTransform?: boolean;
  /**
   * Transparency for range decorations type only. Also, it is not applicable to Network graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 0.2
   */
  decorationsTransparency?: number | boolean;
  /**
   * Type for the decorations and only applicable to Network graphs. The types stacked and
   * stackedpercent must be two dimensional. Heatmap could be one or two dimensional
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default "bar"
   */
  decorationsType?: "pie" | "bar" | "heatmap" | "stacked" | "stackedpercent" | false | (string & {});
  /**
   * Length in pixels of the width for the decorations. Only applicable to Network graphs.
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default 20
   */
  decorationsWidth?: number | boolean;
  /**
   * Color for the dendrograms
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  dendrogramColor?: string | boolean;
  /**
   * Size in pixels for the dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default 80
   */
  dendrogramHeight?: number | boolean;
  /**
   * Histogram density kernels
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default "gaussian"
   */
  densityKernel?: "gaussian" | "rectangular" | "triangular" | "epanechnikov" | "quartic" | "biweight" | "cosine" | "optcosine" | false | (string & {});
  /**
   * Histogram density position
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default "normal"
   */
  densityPosition?: "normal" | "stacked" | "filled" | false | (string & {});
  /**
   * Flag to disable beacon.
   * @default false
   */
  disableBeacon?: boolean;
  /**
   * Flag to disable CSS transitions for all HTML elements. It will work for ALL the
   * visualizations in the page
   * @default false
   */
  disableCSSTransitions?: boolean;
  /**
   * Flag to disable all canvas events
   * @default false
   */
  disableCanvas?: boolean;
  /**
   * Flag to disable chat with AI
   * @default false
   */
  disableChat?: boolean;
  /**
   * Flag to disable showing the code
   * @default false
   */
  disableCode?: boolean;
  /**
   * Flag to disable the data explorer
   * @default false
   */
  disableCustomizer?: boolean;
  /**
   * Flag to disable showing data filters
   * @default false
   */
  disableDataFilters?: boolean;
  /**
   * Flag to disable showing data table
   * @default false
   */
  disableDataTable?: boolean;
  /**
   * Flag to disable mousemove and mouseup in the document
   * @default false
   */
  disableDocument?: boolean;
  /**
   * Flag to disable drag events in canvas
   * @default false
   */
  disableDrag?: boolean;
  /**
   * Flag to disable all events
   * @default false
   */
  disableEvents?: boolean;
  /**
   * Flag to disable showing grid
   * @default false
   */
  disableGrid?: boolean;
  /**
   * Flag to disable key binding events. This prevent some default browser shortcuts and it is
   * system specific. Please see the Event section bellow
   * @default false
   */
  disableKeys?: boolean;
  /**
   * Flag to disable use of LLM service for AI-creation of CanvasXpress configurations. It
   * automatically switch to use autocomplete.
   * @default false
   */
  disableLLMService?: boolean;
  /**
   * Flag to disable showing the menu on right clicks
   * @default false
   */
  disableMenu?: boolean;
  /**
   * Flag to disable plus / minus key binding events
   * @default true
   */
  disablePlusMinusKeys?: boolean;
  /**
   * Flag to disable showing shortcuts
   * @default true
   */
  disableShowShortcuts?: boolean;
  /**
   * Flag to disable showing the toolbar
   * @default false
   */
  disableToolbar?: boolean;
  /**
   * Flag to disable the tooltip callouts
   * @default false
   */
  disableTooltipCallout?: boolean;
  /**
   * Flag to disable undo/redo keys.
   * @default false
   */
  disableUndoRedoKeys?: boolean;
  /**
   * Flag to disable wheel.
   * @default false
   */
  disableWheel?: boolean;
  /**
   * Flag to disable resizing the canvas when the window is resized.
   * @default false
   */
  disableWindow?: boolean;
  /**
   * Name of a sample annotation to dodge the samples of each variable in Bar graphs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  dodgeBy?: string | boolean;
  /**
   * Size in pixels of the length between dots in the doted lines
   * @default 1
   */
  dotLength?: number | boolean;
  /**
   * Maximum number of data points before skipping plotting their outline but only the fill
   * color
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 5000
   */
  dotplotOutlineThreshold?: number | boolean;
  /**
   * Style for the dotplot. Transition plot are only applicable when data is grouped
   * @graphTypes Boxplot, Cleveland, DotLine, Dotplot, Dumbbell, Violin
   * @default "normal"
   */
  dotplotType?: "arrow" | "bullet" | "cleveland" | "connected" | "line" | "lineConnected" | "normal" | "stacked" | "transition" | false | (string & {});
  /**
   * Style for the dumbbell plot
   * @graphTypes Boxplot, Cleveland, DotLine, Dotplot, Dumbbell, Violin
   * @default "stacked"
   */
  dumbbellType?: "arrow" | "bullet" | "cleveland" | "connected" | "line" | "lineConnected" | "stacked" | false | (string & {});
  /**
   * Color for the edges
   * @graphTypes Network
   * @default "rgb(0,0,0)"
   */
  edgeColor?: string | boolean;
  /**
   * Factor to adjust the separation between the edge and the node in the networks
   * @graphTypes Network
   * @default 1
   */
  edgeSeparationFactor?: number | boolean;
  /**
   * Utility to create error ellipses in Scatter plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ellipseBy?: string | boolean;
  /**
   * Color for the error bars in dotplots and barplots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  errorBarsColor?: string | boolean;
  /**
   * Thickness for the error bars in dotplots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 3
   */
  errorBarsThickness?: number | boolean;
  /**
   * Type of error bars
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "confidenceInterval95"
   */
  errorBarsType?: "standardDeviation" | "standardErrorMean" | "confidenceInterval95" | false | (string & {});
  /**
   * Minimum size of the bar in pixels to determine to show or hide error bar ends in the
   * graphs when available
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 2
   */
  errorBarsWidth?: number | boolean;
  /**
   * Color for the even numbers in samples when the property block contrast is set in one
   * dimensional plots or the color for odd number residues in translations in genome plots
   * @default "rgb(245,245,245)"
   */
  evenColor?: string | boolean;
  /**
   * Flag to extend DOE to include variables / samples
   * @default true
   */
  extendedDOE?: boolean;
  /**
   * Default size in pixels of the coordinates height
   * @graphTypes Genome
   * @default 14
   */
  featureCoordinateHeight?: number | boolean;
  /**
   * Flag to use to show coordinates
   * @graphTypes Genome
   * @default true
   */
  featureCoordinateShow?: boolean;
  /**
   * Color for the strand direction of the feature in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  featureDirColor?: string | boolean;
  /**
   * Color for the fill of the feature in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,255,255)"
   */
  featureFillColor?: string | boolean;
  /**
   * Default size in pixels of the feature height
   * @graphTypes Genome
   * @default 14
   */
  featureHeightDefault?: number | boolean;
  /**
   * Alignment (or position) for the feature name
   * @graphTypes Genome
   * @default "center"
   */
  featureNameAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the feature name
   * @graphTypes Genome
   * @default "middle"
   */
  featureNameBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in feature name
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  featureNameColor?: string | boolean;
  /**
   * Font size for the text in feature name. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * featureNameScaleFontFactor
   * @graphTypes Genome
   * @default 10
   */
  featureNameFontSize?: number | boolean;
  /**
   * Font style for the feature name
   * @graphTypes Genome
   * @default ""
   */
  featureNameFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the feature name
   * @graphTypes Genome
   * @default 8
   */
  featureNameMargin?: number | boolean;
  /**
   * Rotation in degrees for the feature name
   * @graphTypes Genome
   * @default 0
   */
  featureNameRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the feature name font size in the canvas
   * @graphTypes Genome
   * @default 1
   */
  featureNameScaleFontFactor?: number | boolean;
  /**
   * Default size in pixels of the quality height
   * @graphTypes Genome
   * @default 14
   */
  featureQualityHeight?: number | boolean;
  /**
   * Flag to use to show quality
   * @graphTypes Genome
   * @default true
   */
  featureQualityShow?: boolean;
  /**
   * Flag to use to show values for the quality
   * @graphTypes Genome
   * @default false
   */
  featureQualityValues?: boolean;
  /**
   * Default size in pixels of the quality height
   * @graphTypes Genome
   * @default 14
   */
  featureSignalToNoiseHeight?: number | boolean;
  /**
   * Flag to use to show quality
   * @graphTypes Genome
   * @default true
   */
  featureSignalToNoiseShow?: boolean;
  /**
   * Flag to use to show values for the quality
   * @graphTypes Genome
   * @default false
   */
  featureSignalToNoiseValues?: boolean;
  /**
   * Default style for splicing in boxes
   * @graphTypes Genome
   * @default "rect"
   */
  featureSpliceStyle?: "rect" | "broken" | false | (string & {});
  /**
   * Flag to use to stagger the features in the genome panel
   * @graphTypes Genome
   * @default false
   */
  featureStaggered?: boolean;
  /**
   * Default size in pixels of the trace height
   * @graphTypes Genome
   * @default 40
   */
  featureTraceHeight?: number | boolean;
  /**
   * Default triming for nucleotide values in the traces (expressed in percent)
   * @graphTypes Genome
   * @default 1
   */
  featureTraceTrim?: number | boolean;
  /**
   * Flag to use to show traces
   * @graphTypes Genome
   * @default true
   */
  featureTracesShow?: boolean;
  /**
   * Default size in pixels of the translation height
   * @graphTypes Genome
   * @default 14
   */
  featureTranslateHeight?: number | boolean;
  /**
   * Flag to use to show tranlation
   * @graphTypes Genome
   * @default true
   */
  featureTranslateShow?: boolean;
  /**
   * Default type for the feature in the genome browser
   * @graphTypes Genome
   * @default "line"
   */
  featureTypeDefault?: "box" | "bar" | "heatmap" | "sequence" | "triangle" | "line" | false | (string & {});
  /**
   * Default size in pixels of the feature width
   * @graphTypes Genome
   * @default 3
   */
  featureWidthDefault?: number | boolean;
  /**
   * Array of arrays with filtering functions. Each function takes four parameters. The fisrt
   * parameter is the type of filter. This could either of: var, smp, series, meta, x, y, z,
   * data, network or guess (if not known). The second parameter is the key that usually
   * correspond to a sample or variable factor name in the x or z object of the data. The third
   * parameter is the operator to use which is one of: >, >=, <, <=, between, exact, like or
   * not like and the four parameter is an array with the value or values that are needed for
   * the corresponding evaluation. Here are some examples: [ x, class, exact, [ A ] ], [ guess,
   * dose, between, [ 0.5, 2 ] ]
   * @default []
   */
  filterData?: unknown[] | boolean | string | number;
  /**
   * Filter data by their value in the data object used in oncoprints. Used in the CanvasXpress
   * UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterDataBy?: Record<string, unknown> | boolean;
  /**
   * Filter edges by their properties used in network graphs. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterEdgeBy?: Record<string, unknown> | boolean;
  /**
   * Filter features by their properties used in genome browser. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterFeatureBy?: Record<string, unknown> | boolean;
  /**
   * Mode for the legend filters. Can be set to hide the data using transparency or to color
   * the data points with the missingDataColor
   * @default "hide"
   */
  filterMode?: "hide" | "color" | false | (string & {});
  /**
   * Filter nodes by their properties used in network graphs. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterNodeBy?: Record<string, unknown> | boolean;
  /**
   * Flag to bypass filtering when a key is non existent in the data objects
   * @default false
   */
  filterSkipNullKeys?: boolean;
  /**
   * Flag to bypass filtering when a value is null
   * @default false
   */
  filterSkipNullValues?: boolean;
  /**
   * Filter samples by their annotation included in the data.x object used in one dimensional
   * plots. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterSmpBy?: Record<string, unknown> | boolean;
  /**
   * Type for the filter. Can be and or or
   * @default "and"
   */
  filterType?: "and" | "or" | false | (string & {});
  /**
   * Filter variables by their annotation included in the data.z object used in one dimensional
   * plots. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterVarBy?: Record<string, unknown> | boolean;
  /**
   * Fish Axis (array with lines across the X Axis)
   * @graphTypes Fish
   * @default []
   */
  fishAxis?: unknown[] | boolean | string | number;
  /**
   * Fish Axis Labels (array with names for the lines across the X Axis). Must have the same
   * dimension as the fishAxis
   * @graphTypes Fish
   * @default []
   */
  fishAxisLabels?: unknown[] | boolean | string | number;
  /**
   * Fish Clone Labels (array with names for the clones). Must have the same dimension as the
   * fishParents
   * @graphTypes Fish
   * @default []
   */
  fishCloneLabels?: unknown[] | boolean | string | number;
  /**
   * Fish Parents
   * @graphTypes Fish
   * @default []
   */
  fishParents?: unknown[] | boolean | string | number;
  /**
   * Flag to separate indepenent clones
   * @graphTypes Fish
   * @default false
   */
  fishSeparateIndependentClones?: boolean;
  /**
   * Fish Shape
   * @graphTypes Fish
   * @default "polygon"
   */
  fishShape?: "spline" | "polygon" | false | (string & {});
  /**
   * Fish Timepoints
   * @graphTypes Fish
   * @default []
   */
  fishTimepoints?: unknown[] | boolean | string | number;
  /**
   * Color for the fit line
   * @graphTypes Scatter2D
   * @default "#fed385"
   */
  fitLineColor?: string | boolean;
  /**
   * Transparency for the color of the fit line
   * @graphTypes Scatter2D
   * @default 1
   */
  fitLineTransparency?: number | boolean;
  /**
   * Type of line for the fit line
   * @graphTypes Scatter2D
   * @default "solid"
   */
  fitLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Width for the fit line
   * @graphTypes Scatter2D
   * @default 2
   */
  fitLineWidth?: number | boolean;
  /**
   * Keep fixed aspect ratio expressed as y / x. A zero value is used to ignore otherwise the x
   * and y axes are set accordingly. This has a use only in visium plots
   * @default 0
   */
  fixedAspectRatio?: number | boolean;
  /**
   * Color for the font
   * @default "rgb(0,0,0)"
   */
  fontColor?: string | boolean;
  /**
   * Font name. Web-Safe HTML fonts
   * @default "Arial"
   */
  fontName?: "American Typewriter" | "Andale Mono" | "Arial" | "Baskerville" | "Bradley Hand" | "Brush Script MT" | "Comic Sans MS" | "Courier" | "Didot" | "Georgia" | "Gill Sans" | "Helvetica" | "Impact" | "Lucida Console" | "Luminari" | "Monaco" | "Optima" | "Palatino" | "Roboto" | "Tahoma" | "Times New Roman" | "Trebuchet MS" | "Verdana" | false | (string & {});
  /**
   * Scaling factor used to increase or decrease the font size in the canvas
   * @default 1
   */
  fontScaleFontFactor?: number | boolean;
  /**
   * Font size for text in complex plot only. See other categories to modify specific font
   * sizes
   * @default 10
   */
  fontSize?: number | boolean;
  /**
   * Font style
   * @default ""
   */
  fontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Goggle Fonts
   * @default []
   */
  fonts?: unknown[] | boolean | string | number;
  /**
   * External Fonts
   * @default []
   */
  fontsExternal?: unknown[] | boolean | string | number;
  /**
   * Color for the Specifies the default foreground color for text and lines not covered in a
   * more specific configuration property
   * @default "rgb(0,0,0)"
   */
  foreground?: string | boolean;
  /**
   * Array of element to exclude from full screen mode
   * @default [".navbar",".cx-example-tools"]
   */
  fullscreenExclude?: unknown[] | boolean | string | number;
  /**
   * Color for the function plots
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  functionColor?: string | boolean;
  /**
   * Variable annotation in the x object to use in Gantt plots as completion percentage. Must
   * be a value between 0 and 1
   * @graphTypes Gantt
   * @default false
   */
  ganttCompletion?: string | boolean;
  /**
   * Fraction to adjust color transparency for completion
   * @graphTypes Gantt
   * @default 0.5
   */
  ganttCompletionTransparency?: number | boolean;
  /**
   * Variable annotation in the x object to use in Gantt plots as dependency. Must be a valid
   * sample / group name
   * @graphTypes Gantt
   * @default false
   */
  ganttDependency?: string | boolean;
  /**
   * Color for the variable metadata used for the dependency line. Defaults to rgb(0,0,0)
   * @graphTypes Gantt
   * @default false
   */
  ganttDependencyColor?: string | boolean;
  /**
   * Variable annotation for the type of ending for the dependency line. Options are arrow,
   * square or round
   * @graphTypes Gantt
   * @default false
   */
  ganttDependencyEnd?: string | boolean;
  /**
   * Variable annotation for the thickness of the dependency line. Defaults to 1
   * @graphTypes Gantt
   * @default false
   */
  ganttDependencyThickness?: number | boolean;
  /**
   * Variable to use in Gantt plots as end date. Defaults to the second variable in the data
   * set
   * @graphTypes Gantt
   * @default false
   */
  ganttEnd?: string | boolean;
  /**
   * Variable to use in Gantt plots as start date. Defaults to the first variable in the data
   * set
   * @graphTypes Gantt
   * @default false
   */
  ganttStart?: string | boolean;
  /**
   * Number to adjust the splines curvature
   * @graphTypes Genome
   * @default "low"
   */
  genomeResolution?: "low" | "medium" | "high" | false | (string & {});
  /**
   * Number of ticks in the genome browser
   * @graphTypes Genome
   * @default 50
   */
  genomeTicks?: number | boolean;
  /**
   * Perimeter-axis role for a cell of a native multi-panel matrix (ggmatrix/patchwork):
   * {yAxis:Boolean, xAxis:Boolean} — set by CanvasXpress.matrixHost from the cell (row,col) so
   * resetGgmatrix keeps the y-axis on the left column and the x-axis on the bottom row
   * @default false
   */
  ggMatrixRole?: Record<string, unknown> | boolean;
  /**
   * Initial ggplot configuration passed to cxplot
   * @default {}
   */
  ggplot?: Record<string, unknown> | boolean;
  /**
   * Flag to apply a color gradient to all elements in the graphs
   * @default false
   */
  gradient?: boolean;
  /**
   * Specifies the orientation of the gradient when the gradient type is linear.
   * @default "vertical"
   */
  gradientOrientation?: "vertical" | "horizontal" | false | (string & {});
  /**
   * Specifies the type of gradient pattern
   * @default "radial"
   */
  gradientType?: "linear" | "radial" | false | (string & {});
  /**
   * Specifies the orientation of one-dimensional graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "horizontal"
   */
  graphOrientation?: "horizontal" | "vertical" | false | (string & {});
  /**
   * Specifies the type of graph to be rendered
   * @default "Bar"
   */
  graphType?: CXGraphType;
  /**
   * Object to specify custom order for the levels in each grouping. The key of the object is
   * the name of a valid sample or variable annotation included in the data object. The value
   * for element is an array with the levels for the corresponding factor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  groupingFactorLevelsOrder?: Record<string, unknown> | boolean;
  /**
   * The width for the data when grouping in Scatter2D plots. This is the analogous parameter
   * to cut_width in R. It defaults to a fifth of the data range. The scatterType must be
   * boxplot to take this parameter into effect
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  groupingFactorWindow?: number | boolean;
  /**
   * An array that holds the group names used for grouping the data. It must be a category in
   * the data.x object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  groupingFactors?: unknown[] | boolean | string | number;
  /**
   * An array that holds the group names used for grouping the data to hide the labels in the
   * graph. It must be a category in the data.x object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  groupingFactorsLabelsHide?: unknown[] | boolean | string | number;
  /**
   * Style for the guides
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "line"
   */
  guideStyle?: "line" | "track" | false | (string & {});
  /**
   * Color for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "rgb(204,204,204)"
   */
  guidesColor?: string | boolean;
  /**
   * Length for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 5
   */
  guidesLength?: number | boolean;
  /**
   * Type of line for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  guidesLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  guidesShow?: boolean;
  /**
   * Transparency for the color of the the variables and / or samples in one dimensional graphs
   * and multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 1
   */
  guidesTransparency?: number | boolean;
  /**
   * Width for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 1
   */
  guidesWidth?: number | boolean;
  /**
   * Flag to adjust the color spectrum of the heatmaps when zooming in/out. The full spectrum
   * range will be utilized to cover the selcted cells in the heatmap if the flag is set to
   * true
   * @graphTypes Heatmap
   * @default false
   */
  heatmapAutoAdjust?: boolean;
  /**
   * Flag to print a box around the heatmap cells
   * @graphTypes Heatmap
   * @default true
   */
  heatmapCellBox?: boolean;
  /**
   * Color for the heatmap boxes around the cells
   * @graphTypes Heatmap
   * @default "rgb(102,102,102)"
   */
  heatmapCellBoxColor?: string | boolean;
  /**
   * Color for the highlighted heatmap cells
   * @graphTypes Heatmap
   * @default "#fed385"
   */
  heatmapCellBoxColorHighlight?: string | boolean;
  /**
   * Width for the highlighting heatmap boxes around the cells
   * @graphTypes Heatmap
   * @default 1
   */
  heatmapCellBoxHighlightWidth?: number | boolean;
  /**
   * Width for the heatmap boxes around the cells
   * @graphTypes Heatmap
   * @default 1
   */
  heatmapCellBoxWidth?: number | boolean;
  /**
   * Color for the default color for heatmap cell markers when an entry omits its own color
   * @graphTypes Heatmap
   * @default "rgb(0,0,0)"
   */
  heatmapCellMarkerColorColor?: string | boolean;
  /**
   * Default shape for heatmap cell markers when an entry in heatmapCellMarkers omits its own
   * shape
   * @graphTypes Heatmap
   * @default "pch4"
   */
  heatmapCellMarkerShape?: "pch4" | "pch3" | "pch1" | "pch0" | "pch5" | "pch2" | "pch16" | "pch15" | "pch17" | "pch18" | "circle" | "square" | "diamond" | "triangle" | false | (string & {});
  /**
   * Default size of heatmap cell markers as a fraction of the cell (0..1) when an entry omits
   * its own size. The X marker (pch4) spans the full cell corner-to-corner by default
   * (fraction 1) regardless of this value
   * @graphTypes Heatmap
   * @default 0.6
   */
  heatmapCellMarkerSize?: number | boolean;
  /**
   * Default line width for the X (pch4) heatmap cell marker when an entry omits its own width
   * @graphTypes Heatmap
   * @default 1
   */
  heatmapCellMarkerWidth?: number | boolean;
  /**
   * Array of per-cell shape overlays drawn on top of standard heatmap cells. Each entry is an
   * object with a *variable* and *sample* name identifying the cell, plus optional *shape*,
   * *color*, and *size* (fraction of the cell, 0..1). Example: [{variable: "V1", sample: "S3",
   * shape: "pch4"}] to cross out a cell with an X. Common shapes: pch4 (X), pch3 (plus), pch1
   * (open circle), pch0 (open square), pch5 (open diamond), pch16 (filled circle), circle,
   * square, diamond
   * @graphTypes Heatmap
   * @default []
   */
  heatmapCellMarkers?: unknown[] | boolean | string | number;
  /**
   * Flag to collapse cells in heatmaps of type circle or hexagon. If true cells are ploted
   * without outline otherwise the outline is the foreground color
   * @graphTypes Heatmap
   * @default false
   */
  heatmapCollapse?: boolean;
  /**
   * Flag to highlight specific rows and columns in the heatmap cells when a variable or a
   * sample is selected
   * @graphTypes Heatmap
   * @default false
   */
  heatmapHighlightByRowCol?: boolean;
  /**
   * Color for the highlighted heatmap cells where rows and columns intersect
   * @graphTypes Heatmap
   * @default "#9b6f2b"
   */
  heatmapHighlightByRowColIntersectionColor?: string | boolean;
  /**
   * Width for the highlighting heatmap boxes around the cells where rows and columns intersect
   * @graphTypes Heatmap
   * @default 3
   */
  heatmapHighlightByRowColIntersectionWidth?: number | boolean;
  /**
   * Flag to place the heatmap indicator before the overlay legends
   * @graphTypes Heatmap
   * @default true
   */
  heatmapIndicatorBeforeOverlays?: boolean;
  /**
   * Length in pixels for the heatmap indicator
   * @graphTypes Heatmap
   * @default 40
   */
  heatmapIndicatorHeight?: number | boolean;
  /**
   * Flag to show histogram in the heatmap indicator
   * @graphTypes Heatmap
   * @default false
   */
  heatmapIndicatorHistogram?: boolean;
  /**
   * Color for the heatmap indicator histogram
   * @graphTypes Heatmap
   * @default "#0ab0db"
   */
  heatmapIndicatorHistogramColor?: string | boolean;
  /**
   * Position for the heatmap indicator
   * @graphTypes Heatmap
   * @default "right"
   */
  heatmapIndicatorPosition?: "topLeft" | "top" | "topRight" | "right" | false | (string & {});
  /**
   * Length in pixels for the heatmap indicator line width used for increase the size of the
   * indicator
   * @graphTypes Heatmap
   * @default 200
   */
  heatmapIndicatorWidth?: number | boolean;
  /**
   * Type of Heatmap used to overlay a layer on top of an image. Special for spatial
   * transcriptomics and UpSet plots
   * @graphTypes Heatmap
   * @default "normal"
   */
  heatmapType?: "normal" | "circle" | "hexagon" | "upset" | "correlation" | "split" | false | (string & {});
  /**
   * Hidden Map features
   * @graphTypes Map
   * @default []
   */
  hiddenMapFeatures?: unknown[] | boolean | string | number;
  /**
   * Hierarchy for trees and bubble graphs made up of sample annotations present the data x
   * object
   * @graphTypes Bubble, Circular, Sunburst, Tree, TreeBracket, TreeBracket
   * @default []
   */
  hierarchy?: unknown[] | boolean | string | number;
  /**
   * Predicate that populates highlightVar / highlightSmp from the data before rendering. An
   * object (or array of objects, OR-combined) of the form { target:"variable"|"sample",
   * stat:"mean"|"max"|"min"|"sum"|"median",
   * operator:">"|">="|"<"|"<="|"=="|"!="|"between"|"in", value:<number|string|array>,
   * field:<annotation> }. When field is given the annotation value is tested; otherwise the
   * element data is aggregated across the other axis with stat. Setting highlightBy switches
   * an unset highlightMode to "focus"
   * @default false
   */
  highlightBy?: Record<string, unknown> | unknown[] | boolean | string | number;
  /**
   * Color for the The single emphasis color for highlighted / selected marks. The per-axis
   * colors varHighlightColor / smpHighlightColor / nodeHighlightColor and the interactive
   * selectionColor all inherit this value unless individually overridden.
   * @default "#fe6969"
   */
  highlightColor?: string | boolean;
  /**
   * De-emphasis strength (0-1) for backgrounded marks. On mouseover it is the proportion of
   * the grey overlay applied to the whole graph (0 disables the hover overlay). In "focus"
   * mode (highlightMode / selectionMode) it sets how present the grey of the non-focused marks
   * is: near 0 (e.g. 0.01) gives a very light, barely-there grey, higher values a darker, more
   * visible grey; when left at 0 focus falls back to 0.15 so the effect is visible without
   * extra config.
   * @default 0
   */
  highlightGreyOut?: number | boolean;
  /**
   * How the declarative highlightSmp / highlightVar sets are rendered (shares highlight /
   * ghost / focus with selectionMode, applied to the declarative highlight instead of the
   * interactive selection). "highlight" (default) recolors the highlighted marks; "ghost"
   * fades the non-highlighted marks; "focus" recolors the non-highlighted marks to grey and
   * keeps the highlighted ones in color, drawing the audience to a few elements by
   * de-emphasizing the rest (the storytelling-with-data focus technique, as in the gghighlight
   * package)
   * @default "highlight"
   */
  highlightMode?: "highlight" | "ghost" | "focus" | false | (string & {});
  /**
   * Name of nodes in the data.nodes object to highlight
   * @graphTypes Network
   * @default []
   */
  highlightNode?: unknown[] | boolean | string | number;
  /**
   * Name of samples to highlight
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  highlightSmp?: unknown[] | boolean | string | number;
  /**
   * Name of variables to highlight
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  highlightVar?: unknown[] | boolean | string | number;
  /**
   * Flag to use dots as histogram bars
   * @graphTypes Scatter2D
   * @default false
   */
  histogramAsDotplot?: boolean;
  /**
   * Width in actual units for the histogram bin
   * @graphTypes Scatter2D
   * @default false
   */
  histogramBinWidth?: number | boolean;
  /**
   * Approximate number of bins in a histogram. It may vary to the actual number used in the
   * histogram to ensure a pretty size for the intervals in the histogram. Default is the same
   * as in ggplot which is 30
   * @graphTypes Scatter2D
   * @default 30
   */
  histogramBins?: number | boolean;
  /**
   * Numeric vector to set the histogram breaks. It is automatically calculated if not defined
   * using the axisAlgorithm setting and the histogramBins
   * @graphTypes Scatter2D
   * @default []
   */
  histogramBreaks?: unknown[] | boolean | string | number;
  /**
   * Transparency applied to the filled histogram density
   * @graphTypes Scatter2D
   * @default 0.85
   */
  histogramDensityFillTransparency?: number | boolean;
  /**
   * Color for the border in data points in dotplot histograms
   * @graphTypes Scatter2D
   * @default "rgb(0,0,0)"
   */
  histogramDotplotBorderColor?: string | boolean;
  /**
   * Type of line for the border in data points in dotplot histograms
   * @graphTypes Scatter2D
   * @default "solid"
   */
  histogramDotplotBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in data points in dotplot histograms
   * @graphTypes Scatter2D
   * @default 0.5
   */
  histogramDotplotBorderSize?: number | boolean;
  /**
   * Color for the data points in dotplot histograms
   * @graphTypes Scatter2D
   * @default "#fe6969"
   */
  histogramDotplotColor?: string | boolean;
  /**
   * Flag to use histogram lowest binning. If true, an x[i] equal to the breaks value will be
   * included in the first (or last, for right = FALSE) bar
   * @graphTypes Scatter2D
   * @default true
   */
  histogramLowest?: boolean;
  /**
   * Line type for the histogram median
   * @graphTypes Scatter2D
   * @default "dashed"
   */
  histogramMedianLineType?: "solid" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Color for the histogram path. If not specified the it defaults to the color of the
   * histogram bars
   * @graphTypes Scatter2D
   * @default false
   */
  histogramPathColor?: string | boolean;
  /**
   * Transparency applied to the filled histogram path
   * @graphTypes Scatter2D
   * @default 0.85
   */
  histogramPathFillTransparency?: number | boolean;
  /**
   * Width for the line of the histogram path line
   * @graphTypes Scatter2D
   * @default 2
   */
  histogramPathWidth?: number | boolean;
  /**
   * Flag to use histogram right binning. If true, the histogram cells are right-closed (left
   * open) intervals
   * @graphTypes Scatter2D
   * @default true
   */
  histogramRight?: boolean;
  /**
   * Histogram size estimator
   * @graphTypes Scatter2D
   * @default "sturges"
   */
  histogramSizeEstimator?: "sturges" | "freedmanDiaconis" | "scott" | false | (string & {});
  /**
   * Direction to stack the dots in dotplot histograms
   * @graphTypes Scatter2D
   * @default "down"
   */
  histogramStackDir?: "down" | "center" | "centerwhole" | false | (string & {});
  /**
   * Stack ratio for dotplot histograms. I has to be a value between 0 and 1
   * @graphTypes Scatter2D
   * @default 1
   */
  histogramStackRatio?: number | boolean;
  /**
   * Histogram density type
   * @graphTypes Scatter2D
   * @default "count"
   */
  histogramStat?: "density" | "count" | false | (string & {});
  /**
   * Type of histogram when multiple series are present
   * @graphTypes Scatter2D
   * @default "dodged"
   */
  histogramType?: "dodged" | "staggered" | "stacked" | false | (string & {});
  /**
   * HTML string to use as template for the hover info
   * @default false
   */
  hoverTemplate?: string | boolean;
  /**
   * HTML string to use as template for the second hover info
   * @default false
   */
  hoverTemplate2?: string | boolean;
  /**
   * Name of a variable / sample annotation to filter the data with an external HTML widget.
   * Changes are not reflected when the customizer is open
   * @default false
   */
  htmlWidget?: string | boolean;
  /**
   * Height in pixels for the HTML widget. Changes are not reflected when the customizer is
   * open
   * @default 120
   */
  htmlWidgetHeight?: number | boolean;
  /**
   * Type of HTML widget to use. Changes are not reflected when the customizer is open
   * @default "auto"
   */
  htmlWidgetType?: "auto" | "radio" | "dropdown" | "range" | false | (string & {});
  /**
   * Scaling factor for extension of the hulls in the network communities
   * @graphTypes Network
   * @default 1.25
   */
  hullScale?: number | boolean;
  /**
   * Ideogram. Additional ideograms can be loaded by appending to the CanvasXpress.chromosomes
   * object. The format of the ideogram is based on the R data for USCS.hg19.chr
   * CanvasXpress.chromosomes = { &nbsp;&nbsp;hg19 : { &nbsp;&nbsp;&nbsp;&nbsp;order : [ 1, 2,
   * 3, 4, 5, 6, 7, 8, ...], &nbsp;&nbsp;&nbsp;&nbsp;data : {
   * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 : [ [ 0, 2300000, "p36.33", "gneg" ], ...],
   * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 : [ [ 0, 4300000, "p25.3", "gneg" ], ...],
   * &nbsp;&nbsp;&nbsp;&nbsp;} &nbsp;&nbsp;} }
   * @graphTypes Circular, Genome
   * @default "hg38"
   */
  ideogram?: "hg38" | false | (string & {});
  /**
   * Factor name included in the data.z object used to map to the chromosome number
   * @graphTypes Circular, Genome
   * @default "chr"
   */
  ideogramChromosome?: string | boolean;
  /**
   * Chromosome number
   * @graphTypes Circular, Genome
   * @default "1"
   */
  ideogramChromosomeNumber?: string | boolean;
  /**
   * Factor name included in the data.z object used to map to the chromosome position
   * @graphTypes Circular, Genome
   * @default "pos"
   */
  ideogramChromosomePosition?: string | boolean;
  /**
   * Default size in pixels of the ideogram height
   * @graphTypes Circular, Genome
   * @default 20
   */
  ideogramHeight?: number | boolean;
  /**
   * Alignment (or position) for the ideogram segment
   * @graphTypes Circular, Genome
   * @default "center"
   */
  ideogramSegmentAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the ideogram segment
   * @graphTypes Circular, Genome
   * @default "middle"
   */
  ideogramSegmentBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in ideogram segment
   * @graphTypes Circular, Genome
   * @default "rgb(0,0,0)"
   */
  ideogramSegmentColor?: string | boolean;
  /**
   * Font size for the text in ideogram segment. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the ideogramSegmentScaleFontFactor
   * @graphTypes Circular, Genome
   * @default 9
   */
  ideogramSegmentFontSize?: number | boolean;
  /**
   * Font style for the ideogram segment
   * @graphTypes Circular, Genome
   * @default ""
   */
  ideogramSegmentFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the ideogram segment
   * @graphTypes Circular, Genome
   * @default 8
   */
  ideogramSegmentMargin?: number | boolean;
  /**
   * Rotation in degrees for the ideogram segment
   * @graphTypes Circular, Genome
   * @default 0
   */
  ideogramSegmentRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the ideogram segment font size in the canvas
   * @graphTypes Circular, Genome
   * @default 1
   */
  ideogramSegmentScaleFontFactor?: number | boolean;
  /**
   * Flag to show the full chromosome
   * @graphTypes Circular, Genome
   * @default true
   */
  ideogramShowFullChromosome?: boolean;
  /**
   * Flag to render all nodes at one time rather that rendering first the eventless nodes and
   * then the non-eventless nodes
   * @graphTypes Network
   * @default false
   */
  ignoreEventlessOrder?: boolean;
  /**
   * Maximum times to try to load images. Used to calculate the timeout which will be
   * imageTimeOut / imageTries which will be 100ms by default
   * @default 10
   */
  imageMaxTries?: number | boolean;
  /**
   * Time in milliseconds to wait to load images
   * @default 1000
   */
  imageTimeOut?: number | boolean;
  /**
   * Array of urls of images used in scatter plots. Additional shapes will be used if the array
   * does not contain as many images as needed
   * @default []
   */
  images?: unknown[] | boolean | string | number;
  /**
   * Imputation method for missing data when clustering
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "mean"
   */
  imputeMethod?: "mean" | "median" | false | (string & {});
  /**
   * Array containing the factors to include when exploring the DOE. If left empty all the
   * factors will be included
   * @default []
   */
  includeDOE?: unknown[] | boolean | string | number;
  /**
   * Time in milliseconds to start showing info after a mouse over
   * @default 50
   */
  infoTimeIn?: number | boolean;
  /**
   * Time in milliseconds to wait between updates for the mouse over info to show up
   * @default 3000
   */
  infoTimeOut?: number | boolean;
  /**
   * Initial size in pixels for the objects in the visualizations
   * @default null
   */
  initialSize?: number | boolean;
  /**
   * Option to reverse one-dimensional horizontal graphs for plotting from right to left
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  invertGraph?: boolean;
  /**
   * Flag to create or not a 3D network
   * @graphTypes Network
   * @default false
   */
  is3DNetwork?: boolean;
  /**
   * Flag to create or not a 3D plot
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  is3DPlot?: boolean;
  /**
   * Flag to create a Bump plot
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  isBumpPlot?: boolean;
  /**
   * Expose the chat interface at instatiation of the plot
   * @default false
   */
  isChat?: boolean;
  /**
   * Flag to show the contour
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default false
   */
  isContour?: boolean;
  /**
   * Flag to indicate visualization wasa done through the cxplot interface
   * @default false
   */
  isCxplot?: boolean;
  /**
   * Flag to use data object as a data frame from R or Python
   * @default false
   */
  isDataFrame?: boolean;
  /**
   * Flag to put a background in data labels
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  isDataLabels?: boolean;
  /**
   * Flag to use the color in the colorDataLabels as a background in data labels
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  isDataLabelsBackgroundColor?: boolean;
  /**
   * Prevent data editing in JS Fiddle and CodePen by disabling the option in the File menu
   * @default true
   */
  isEditable?: boolean;
  /**
   * Flag marking this plot as a cell of a native multi-panel matrix (ggmatrix/patchwork).
   * Drives the perimeter-axis cache/reset (cacheForGGMatrix/resetGgmatrix) so
   * CanvasXpress.matrixHost can align the panels. Formerly the R longestString margin proxy;
   * now a plain boolean measured/aligned at render time.
   * @default false
   */
  isGGMatrix?: boolean;
  /**
   * Flag to indicate if the data is a time series so there is no need to plot every time
   * interval. It is boolean in one dimensional plots or a string indicating the axis which is
   * timed x, y or z
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  isGraphTime?: boolean;
  /**
   * Flag to calculate all network metrics: betweenness, closeness, eccentricity and degree
   * @graphTypes Network
   * @default false
   */
  isNetworkMetrics?: boolean;
  /**
   * Flag to indicate visualization wasa done through the R API interface
   * @default false
   */
  isR?: boolean;
  /**
   * Flag to track user modifications for Reproducible Research
   * @default true
   */
  isReproducibleResearch?: boolean;
  /**
   * Flag to jitter the data points in dotplots, boxplots and scatter2D plots
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  jitter?: boolean;
  /**
   * Factor for jittering. The larger the more jitter
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 0.8
   */
  jitterFactor?: number | boolean;
  /**
   * Default type for joining lines
   * @default "mitter"
   */
  joinType?: "mitter" | "bevel" | "round" | false | (string & {});
  /**
   * Flag to indicate whether to show the censored data as a rug in Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default false
   */
  kmCensoredRug?: boolean;
  /**
   * Array with colors for the Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default []
   */
  kmColors?: unknown[] | boolean | string | number;
  /**
   * Confidence intervals type for Kaplan Meier estimates
   * @graphTypes Scatter2D
   * @default "log"
   */
  kmConfidenceIntervalType?: "ordinary" | "log" | "loglog" | false | (string & {});
  /**
   * Confidence level for Kaplan Meier plots
   * @graphTypes Scatter2D
   * @default 0.95
   */
  kmConfidenceLevel?: number | boolean;
  /**
   * Flag to indicate Kaplan-Meier plot was generated through survminer
   * @graphTypes Scatter2D
   * @default false
   */
  kmCxplot?: boolean;
  /**
   * Flag to indicate whether zero values are censored or not in Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default false
   */
  kmInvertCensored?: boolean;
  /**
   * Flag to show the p-value in Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default false
   */
  kmPvalue?: boolean;
  /**
   * Data to show the number of subjects at risk in Kaplan-Meier plots. It will be aligned to
   * the major ticks in the x Axis
   * @graphTypes Scatter2D
   * @default false
   */
  kmRiskTable?: string | boolean;
  /**
   * Data to use as time2 in Kaplan-Meier plots. It must be a numeric factor as it will be used
   * to set the range for the events in the Kaplan-Meier plot
   * @graphTypes Scatter2D
   * @default false
   */
  kmTime?: string | boolean;
  /**
   * Number of clusters when clustering sample data with kmeans
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default 3
   */
  kmeansSmpClusters?: number | boolean;
  /**
   * Number of clusters when clustering variable data with kmeans
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default 3
   */
  kmeansVarClusters?: number | boolean;
  /**
   * Name of the variable annotation to use labels in Scatter2D plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  labelBy?: string | boolean;
  /**
   * Default position for the node label
   * @graphTypes Network
   * @default "auto"
   */
  labelNodePosition?: "auto" | "center" | "top" | "right" | "bottom" | "left" | false | (string & {});
  /**
   * User-defined selection rules to label 2D data points. Evaluates against data or annotation
   * properties. Supports flat rule arrays (combined via labelSelectLogic) or recursive nested
   * arrays for complex AND / OR logic. Example: [["x", ">", 5]] or ["AND", ["x", ">", 5],
   * ["y", "<", 0]]
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  labelSelect?: unknown[] | boolean | string | number;
  /**
   * Flag to force recalculating the ranges in the axes when multiple graphs are displayed in
   * the canvas
   * @default false
   */
  layoutAdjust?: boolean;
  /**
   * Flag to draw lines around each graph in the layout in the canvas. Used only when debugging
   * @default false
   */
  layoutCanvasCompartments?: boolean;
  /**
   * Flag to make layout graphs without any space in between
   * @default false
   */
  layoutCollapse?: boolean;
  /**
   * Array of object to assign visualization configurations to each layout
   * @default []
   */
  layoutConfig?: unknown[] | boolean | string | number;
  /**
   * Flag to force same groups across all layout plots
   * @default false
   */
  layoutGlobalGroups?: boolean;
  /**
   * Flag to remove empty combinations in segregated layouts
   * @default true
   */
  layoutRemoveEmpty?: boolean;
  /**
   * Spacing between layout graphs
   * @default 8
   */
  layoutSpacing?: number | boolean;
  /**
   * Topology of the canvas. Number of columns and rows separated by X. For example: 2X1, 1X3,
   * etc
   * @default false
   */
  layoutTopology?: string | boolean;
  /**
   * Type of layout to place the position for the labels in the trellis plot. Identify the axis
   * that will be used to place the first segregating factor. rows will use the first
   * segregating factor in the rows and the second in the columns. cols will use the first
   * segregating factor in the columns and the second in the rows. wrap will wrap the
   * segregating factors putting the sample factors in the columns
   * @default "wrap"
   */
  layoutType?: "wrap" | "rows" | "cols" | false | (string & {});
  /**
   * Flag to load canvas only if shown in viewport
   * @default false
   */
  lazyLoad?: boolean;
  /**
   * Transparency for leaflet layers
   * @graphTypes Map
   * @default 0.7
   */
  leafletAlpha?: number | boolean;
  /**
   * Leaflet tile type
   * @graphTypes Map
   * @default "street"
   */
  leafletTileType?: "street" | "terrain" | "labels" | "satellite" | false | (string & {});
  /**
   * Zoom level before turning transparent the leaflet layers
   * @graphTypes Map
   * @default 6
   */
  leafletZoomAlphaColor?: number | boolean;
  /**
   * Text to include at the left of the graph in the left margin
   * @default false
   */
  leftMarginalText?: string | boolean;
  /**
   * Alignment (or position) for the left marginal text
   * @default "left"
   */
  leftMarginalTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the left marginal text
   * @default "center"
   */
  leftMarginalTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in left marginal text
   * @default "rgb(0,0,0)"
   */
  leftMarginalTextColor?: string | boolean;
  /**
   * Font size for the text in left marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the leftMarginalTextScaleFontFactor
   * @default 12
   */
  leftMarginalTextFontSize?: number | boolean;
  /**
   * Font style for the left marginal text
   * @default ""
   */
  leftMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the left marginal text
   * @default 5
   */
  leftMarginalTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the left marginal text
   * @default 0
   */
  leftMarginalTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the left marginal text font size in the canvas
   * @default 1
   */
  leftMarginalTextScaleFontFactor?: number | boolean;
  /**
   * Color for the border in legend background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgba(255,255,255,0)"
   */
  legendBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in legend background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  legendBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in legend background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  legendBackgroundBorderSize?: number | boolean;
  /**
   * Color for the legend background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgba(255,255,255,0)"
   */
  legendBackgroundColor?: string | boolean;
  /**
   * Number of columns in legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  legendColumns?: number | boolean;
  /**
   * Direction for legend
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "vertical"
   */
  legendDirection?: "vertical" | "horizontal" | false | (string & {});
  /**
   * Horizontal justification for legends when legend are in top or bottom positions
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  legendHorizontalJustification?: number | boolean;
  /**
   * Flag to position the legend inside the graphs
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default false
   */
  legendInside?: boolean;
  /**
   * Color for the border in legend key background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgba(255,255,255,0)"
   */
  legendKeyBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in legend key background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  legendKeyBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in legend key background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  legendKeyBackgroundBorderSize?: number | boolean;
  /**
   * Color for the legend key background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgba(255,255,255,0)"
   */
  legendKeyBackgroundColor?: string | boolean;
  /**
   * Width in pixels for the legend key margin
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 5
   */
  legendKeyMargin?: number | boolean;
  /**
   * Width in pixels for the legend key
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 15
   */
  legendKeySize?: number | boolean;
  /**
   * Maximum number of items in the variable legends. If there are more items the legend will
   * be hidden
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 50
   */
  legendMax?: number | boolean;
  /**
   * Object to specify custom order for the levels in the legends. The key of the object is the
   * name of a valid sample or variable annotation included in the data object. The value for
   * element is an array with the levels for the corresponding factor
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default false
   */
  legendOrder?: Record<string, unknown> | boolean;
  /**
   * Flag to draw legends by columns in the graphs
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  legendOrderByCols?: boolean;
  /**
   * Position for the the legend
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "right"
   */
  legendPosition?: "topRight" | "right" | "bottomRight" | "bottom" | "bottomLeft" | "left" | "topLeft" | "top" | false | (string & {});
  /**
   * Number of rows in legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  legendRows?: number | boolean;
  /**
   * Flag to use ggplot style for the size legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default false
   */
  legendStyleGgplot?: boolean;
  /**
   * Alignment (or position) for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "left"
   */
  legendTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  legendTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  legendTextColor?: string | boolean;
  /**
   * Font size for the text in legends. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * legendTextScaleFontFactor
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 10
   */
  legendTextFontSize?: number | boolean;
  /**
   * Font style for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default ""
   */
  legendTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 8
   */
  legendTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0
   */
  legendTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the legends font size in the canvas
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  legendTextScaleFontFactor?: number | boolean;
  /**
   * Alignment (or position) for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "left"
   */
  legendTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  legendTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  legendTitleColor?: string | boolean;
  /**
   * Font size for the text in legends. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * legendTitleScaleFontFactor
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 10
   */
  legendTitleFontSize?: number | boolean;
  /**
   * Font style for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default ""
   */
  legendTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 8
   */
  legendTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0
   */
  legendTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the legends font size in the canvas
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  legendTitleScaleFontFactor?: number | boolean;
  /**
   * Vertical justification for legends when legend are in left or right positions
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  legendVerticalJustification?: number | boolean;
  /**
   * Name of a sample annotation to stack the samples of each variable in Line graphs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  lineBy?: string | boolean;
  /**
   * Lines decorations in the line graphs
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default "symbol"
   */
  lineDecoration?: string | boolean;
  /**
   * Line error type in the line graphs. The line type must be spline for the area error type.
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default "bar"
   */
  lineErrorType?: "bar" | "area" | false | (string & {});
  /**
   * Line Patterns used in line visualizations
   * @default ["solid","dotted","dashed","dotdash","longdash","twodash"]
   */
  linePatterns?: unknown[] | boolean | string | number;
  /**
   * Default thickness in pixels for the lines in line plots
   * @default 1
   */
  lineThickness?: number | boolean;
  /**
   * Type of line used to join the points in line graphs
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default "rect"
   */
  lineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to create lines on groups when multiple grouping factors are used
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default true
   */
  linesOnGroups?: boolean;
  /**
   * Linkage type to use when clustering data
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "complete"
   */
  linkage?: "single" | "complete" | "average" | false | (string & {});
  /**
   * Behaviour for the LLM when retriving new visualization
   * @default "update"
   */
  llmBehaviour?: "append" | "update" | false | (string & {});
  /**
   * Number of example to generate
   * @default 4
   */
  llmCodeExamples?: number | boolean;
  /**
   * Flag to show/hide the Flag to show the LLM code examples
   * @default false
   */
  llmCodeExamplesShow?: boolean;
  /**
   * Maximum number of sentences to use in each example
   * @default 8
   */
  llmCodeMaxSentences?: number | boolean;
  /**
   * Header as array
   * @default []
   */
  llmHeader?: unknown[] | boolean | string | number;
  /**
   * Factor used to multiply the minimum number of examples per graph
   * @default 12
   */
  llmMinCoverageFactor?: number | boolean;
  /**
   * Minumum number of times each parameter needs to be included for each graph
   * @default 8
   */
  llmMinParameterCoverage?: number | boolean;
  /**
   * Default value for the prompt
   * @default false
   */
  llmPrompt?: string | boolean;
  /**
   * Flag to force the select tool to use LLM rather than the heuristic / deterministic
   * mechanism
   * @default true
   */
  llmSelectFirst?: boolean;
  /**
   * URL for LLM service. Use your own http://localhost:8100/ or bult-in
   * https://www.canvasxpress.org/
   * @default "https://www.canvasxpress.org/"
   */
  llmServiceURL?: string | boolean;
  /**
   * Array to cache LLM questions
   * @default []
   */
  llmStack?: unknown[] | boolean | string | number;
  /**
   * The lower the temperature, the more deterministic the results in the sense that the
   * highest probable next token is always picked
   * @default 0
   */
  llmTemperature?: number | boolean;
  /**
   * Tool use to create or modify a CanvasXpress config
   * @default "generate"
   */
  llmTool?: "generate" | "modify" | false | (string & {});
  /**
   * Flag to use guided autocomplete to help with the prompt
   * @default false
   */
  llmUseAutocomplete?: boolean;
  /**
   * Flag to load R datasets from Github
   * @default false
   */
  loadRDatasets?: boolean;
  /**
   * Loess bandwidth. Thickness for the confidence of the loess curve. A vaulue between 0 and 1
   * @graphTypes Scatter2D
   * @default 0.8
   */
  loessBandwidth?: number | boolean;
  /**
   * Loess cell. If interpolation is used this controls the accuracy of the approximation via
   * the maximum number of points in a cell in the kd tree. Cells with more than
   * floor(n*span*cell) points are subdivided
   * @graphTypes Scatter2D
   * @default 0.2
   */
  loessCell?: number | boolean;
  /**
   * Loess degree. 0 : Constant, 1 : Linear, 2 : Quadratic
   * @graphTypes Scatter2D
   * @default 2
   */
  loessDegree?: string | boolean | number;
  /**
   * Loess Family. Type of error distribution to be optimized in fitting. The default,
   * gaussian, is fitting with least squares. Fitting with Tukeys biweight M-Estimator is used
   * if family is symmetric
   * @graphTypes Scatter2D
   * @default "gaussian"
   */
  loessFamily?: "gaussian" | "symmetric" | false | (string & {});
  /**
   * Flag to normalize loess fit in Scatter2D plots
   * @graphTypes Scatter2D
   * @default true
   */
  loessNormalize?: boolean;
  /**
   * Loess span. Factor to adjust the gaussian shape of the loess curve. A vaulue between 0 and
   * 1
   * @graphTypes Scatter2D
   * @default 0.75
   */
  loessSpan?: number | boolean;
  /**
   * LoessStatistics. The statistics to be computed exactly, approximately or not at all? Exact
   * computation can be very slow
   * @graphTypes Scatter2D
   * @default "approximate"
   */
  loessStatistics?: "approximate" | "exact" | false | (string & {});
  /**
   * Loess steps. Number of steps to smooth the line
   * @graphTypes Scatter2D
   * @default 30
   */
  loessSteps?: number | boolean;
  /**
   * Loess Surface. The fitted surface to be computed exactly (direct) or via interpolation
   * from a kd tree
   * @graphTypes Scatter2D
   * @default "interpolate"
   */
  loessSurface?: "direct" | "interpolate" | false | (string & {});
  /**
   * Sample name included in the data.y.smps object used to map to the copy number value
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanCNV?: string | boolean;
  /**
   * Colors for the manhattan plots alternative chromosomes
   * @graphTypes Scatter2D
   * @default ["rgb(128,128,128)","rgb(135,206,235)"]
   */
  manhattanColors?: unknown[] | boolean | string | number;
  /**
   * Manhattan contrast color
   * @graphTypes Scatter2D
   * @default "rgba(0,0,0,0.1)"
   */
  manhattanContrastColor?: unknown[] | boolean | string | number;
  /**
   * Sample name included in the data.y.smps object used to map to the chromosome number
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanMarkerChromosomeNumber?: string | boolean;
  /**
   * Sample name included in the data.y.smps object used to map to the negative log 10 p value
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanMarkerLogPValue?: string | boolean;
  /**
   * Sample name included in the data.y.smps object used to map to the position in base pairs
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanMarkerPosition?: string | boolean;
  /**
   * Sample name included in the data.y.smps object used to map the end position
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanRangeEnd?: string | boolean;
  /**
   * Number of pixels for the line width in manhattan plots
   * @graphTypes Scatter2D
   * @default 10
   */
  manhattanRangeLineWidth?: number | boolean;
  /**
   * Sample name included in the data.y.smps object used to map the start position
   * @graphTypes Scatter2D
   * @default false
   */
  manhattanRangeStart?: string | boolean;
  /**
   * Map Latitude Of Origin in degrees. (Applicable to Albers projection only). Default adjusts
   * to USA maps
   * @graphTypes Map
   * @default -96
   */
  mapCentralMeridian?: number | boolean;
  /**
   * Color for the maps
   * @graphTypes Map
   * @default "#0ab0db"
   */
  mapColor?: string | boolean;
  /**
   * Map config
   * @graphTypes Map
   * @default false
   */
  mapConfig?: Record<string, unknown> | boolean;
  /**
   * Map config for features use to translate and scale
   * @graphTypes Map
   * @default false
   */
  mapConfigFeatures?: Record<string, unknown> | boolean;
  /**
   * Flag to show Map Graticule
   * @graphTypes Map
   * @default false
   */
  mapGraticuleShow?: boolean;
  /**
   * Map Graticule type
   * @graphTypes Map
   * @default "solid"
   */
  mapGraticuleType?: "dashed" | "solid" | false | (string & {});
  /**
   * Map Id for the map div in the DOM
   * @graphTypes Map
   * @default false
   */
  mapId?: string | boolean;
  /**
   * Map Latitude Of Origin in degrees. (Applicable to Albers projection only). Default adjusts
   * to USA maps
   * @graphTypes Map
   * @default 23
   */
  mapLatitudeOrigin?: number | boolean;
  /**
   * Default shape for the markers in map (if no shapeBy is specified
   * @graphTypes Map
   * @default "drop"
   */
  mapMarkerShape?: "drop" | "sphere" | "square" | "triangle" | "star" | "rhombus" | "octagon" | "mdavid" | "pentagon" | "rectangle" | false | (string & {});
  /**
   * Scale factor for the marker shapes
   * @graphTypes Map
   * @default 1
   */
  mapMarkerShapeScaleFactor?: number | boolean;
  /**
   * Color for the outline of the maps
   * @graphTypes Map
   * @default "rgb(204,204,204)"
   */
  mapOutlineColor?: string | boolean;
  /**
   * Map projection
   * @graphTypes Map
   * @default "mercator"
   */
  mapProjection?: "mercator" | "albers" | "orthographic" | false | (string & {});
  /**
   * Samples to use in maps
   * @graphTypes Map
   * @default []
   */
  mapSmps?: unknown[] | boolean | string | number;
  /**
   * Map Standard Parallel 1 in degrees. (Applicable to Albers projection only). Default
   * adjusts to USA maps
   * @graphTypes Map
   * @default 29.5
   */
  mapStandardParallel1?: number | boolean;
  /**
   * Map Standard Parallel 2 in degrees. (Applicable to Albers projection only). Default
   * adjusts to USA maps
   * @graphTypes Map
   * @default 45.5
   */
  mapStandardParallel2?: number | boolean;
  /**
   * Array of properties in the map topoJSON features to use as zip code ids
   * @graphTypes Map
   * @default ["GEOID20"]
   */
  mapZipCodeIds?: unknown[] | boolean | string | number;
  /**
   * Relative length in pixels for the distance between various objects in the graphs. This
   * value is adjusted acording to the graph dimensions
   * @default 8
   */
  margin?: number | boolean;
  /**
   * Specifies the length in pixels for the bottom margin in the canvas
   * @default 8
   */
  marginBottom?: number | boolean;
  /**
   * Specifies the length in pixels for the left margin in the canvas
   * @default 8
   */
  marginLeft?: number | boolean;
  /**
   * Specifies the length in pixels for the right margin in the canvas
   * @default 16
   */
  marginRight?: number | boolean;
  /**
   * Specifies the length in pixels for the top margin in the canvas
   * @default 8
   */
  marginTop?: number | boolean;
  /**
   * Utility to create dynamic markers in Map. It must have a latitude and longitude metadata
   * too
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  markerBy?: string | boolean;
  /**
   * Maximum number of graphs when creating a DOE
   * @default 8
   */
  maxDOENumber?: number | boolean;
  /**
   * Maximum number of samples or variables to display in the data customizer
   * @default 10000
   */
  maxDataCustomizerEntries?: number | boolean;
  /**
   * Thickness for the edges when the edges are sized by a property. Should be a value between
   * 10 and 20
   * @graphTypes Network
   * @default 10
   */
  maxEdgeSize?: number | boolean;
  /**
   * Maximum length in characters a feature label can have so anything above is truncated
   * @graphTypes Genome
   * @default 30
   */
  maxFeatureStringLen?: number | boolean;
  /**
   * Number of maximum iterations when clustering data with kmeans for one dimensional graphs
   * or maximum number of iterations when calculating force direct layout networks
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default 500
   */
  maxIterations?: number | boolean;
  /**
   * Maximum length in characters for the sample or variable metadata when included as an
   * overlay. Anything above is truncated
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 30
   */
  maxOverlayStringLen?: number | boolean;
  /**
   * Max pie sectors. After that number the sectors will be put in a sector named other
   * @graphTypes Pie
   * @default 20
   */
  maxPieSectors?: number | boolean;
  /**
   * Maximum length in characters a sample label or description can have so anything above is
   * truncated
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 25
   */
  maxSmpStringLen?: number | boolean;
  /**
   * Maximum number of submenus in the context menus
   * @default 25
   */
  maxSubMenus?: number | boolean;
  /**
   * Maximum size for any text in the canvas
   * @default 40
   */
  maxTextSize?: number | boolean;
  /**
   * Maximum length in characters a variable label or description can have so anything above is
   * truncated
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 25
   */
  maxVarStringLen?: number | boolean;
  /**
   * Metadata for the columns of files retrieved from a URL
   * @default {}
   */
  metaData?: Record<string, unknown> | boolean;
  /**
   * Horizontal alignment of the title, value and subtitle text in a card meter.
   * @graphTypes Meter
   * @default "left"
   */
  meterAlign?: "left" | "center" | false | (string & {});
  /**
   * Color for the Meter Background Color
   * @graphTypes Meter
   * @default "rgb(229,229,229)"
   */
  meterBackgroundColor?: string | boolean;
  /**
   * Frame each meter tile in a dashboard-style card (a rounded rectangle with a subtle border)
   * and shrink the dial to fit the title and value text inside it.
   * @graphTypes Meter
   * @default false
   */
  meterCard?: boolean;
  /**
   * Color for the Fill color of the dashboard card frame drawn behind each meter tile when
   * meterCard is on (and of the card meterType). When false the frame uses meterBackground
   * (default). Themeable: cxdark and cxblue override it with their own panel background so the
   * card blends into a dark page.
   * @graphTypes Meter
   * @default false
   */
  meterCardBackgroundColor?: string | boolean;
  /**
   * Color for the Border color of the dashboard card frame drawn behind each meter tile when
   * meterCard is on (and of the card meterType). When false the frame uses xAxisGridMajorColor
   * (default). Themeable: cxdark and cxblue set it to their own panel background so the border
   * blends into a dark page.
   * @graphTypes Meter
   * @default false
   */
  meterCardBorderColor?: string | boolean;
  /**
   * Gap in pixels between the dashboard meter cards and around them, kept uniform for single
   * meters and grids of meters
   * @graphTypes Meter
   * @default 10
   */
  meterMargin?: number | boolean;
  /**
   * Color for the Meter Needle Color
   * @graphTypes Meter
   * @default "rgb(0,0,0)"
   */
  meterNeedleColor?: string | boolean;
  /**
   * For a ring meter: render a selection-aware progress ring - a greyish full-circle track
   * with a solid accent arc sized to the fraction of records currently selected (via
   * broadcast), and the selected count centered. When no selection is active the ring reads
   * full.
   * @graphTypes Meter
   * @default false
   */
  meterProgress?: boolean;
  /**
   * Position of the title for a ring meter: top (centered above the circle) or topLeft (in the
   * top-left corner of the card).
   * @graphTypes Meter
   * @default "top"
   */
  meterRingTitlePosition?: "top" | "topLeft" | false | (string & {});
  /**
   * For a ring meter: the centered value font is sized to fit this many digits, so rings of
   * the same tile size show the same font regardless of each value's length (a longer value
   * still shrinks to fit). Set to 0 to size each ring to its own value instead.
   * @graphTypes Meter
   * @default 6
   */
  meterRingValueDigits?: number | boolean;
  /**
   * A number between 0.1 and 1 to adjust the thickness of the vertical, horizontal and state
   * meters as a fraction of the available space, so the meter always stays inside the canvas
   * @graphTypes Meter
   * @default 1
   */
  meterThickness?: number | boolean;
  /**
   * Alignment of the title along the axis for the horizontal and vertical meters (start =
   * left/bottom, end = right/top).
   * @graphTypes Meter
   * @default "center"
   */
  meterTitleAlign?: "start" | "center" | "end" | false | (string & {});
  /**
   * Topology set up for the meters
   * @graphTypes Meter
   * @default "auto"
   */
  meterTopology?: "auto" | "grid" | "horizontal" | "vertical" | false | (string & {});
  /**
   * Type of meter.
   * @graphTypes Meter
   * @default "gauge"
   */
  meterType?: "gauge" | "speedometer" | "vertical" | "horizontal" | "state" | "digital" | "number" | "card" | "ring" | false | (string & {});
  /**
   * Number of pixels to add to the minimum thickness for the edges when the edges are sized by
   * a property. Should be a value between 0 and 1.5
   * @graphTypes Network
   * @default 0
   */
  minEdgeSize?: number | boolean;
  /**
   * Minimum size for any text in the canvas
   * @default 4
   */
  minTextSize?: number | boolean;
  /**
   * Color for the missing data
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(245,245,245)"
   */
  missingDataColor?: string | boolean;
  /**
   * String value use to specify missing data
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "NA"
   */
  missingDataValue?: string | boolean;
  /**
   * Flag to make parents move when a child is moved
   * @graphTypes Network
   * @default false
   */
  moveParentsWithChildren?: boolean;
  /**
   * Number of sets to draw
   * @graphTypes Heatmap
   * @default 5
   */
  nUpSets?: number | boolean;
  /**
   * Flag to omit NaN values in log transformation
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  nanOmit?: boolean;
  /**
   * Number of iterations to run all constraints
   * @graphTypes Network
   * @default 0
   */
  networkColaAllConstraintsIterations?: number | boolean;
  /**
   * Flag to avoid overlaps of nodes in the cola network
   * @graphTypes Network
   * @default true
   */
  networkColaAvoidOverlaps?: boolean;
  /**
   * Flag to center the cola network
   * @graphTypes Network
   * @default true
   */
  networkColaCenterGraph?: boolean;
  /**
   * Threshold for the convergence of the cola network
   * @graphTypes Network
   * @default 0.01
   */
  networkColaConvergenceThreshold?: number | boolean;
  /**
   * Causes constraints to be generated such that directed graphs are laid out either from
   * left-to-right or top-to-bottom. A separation constraint is generated in the selected axis
   * for each edge that is not involved in a cycle
   * @graphTypes Network
   * @default false
   */
  networkColaFlowLayoutAxis?: string | boolean;
  /**
   * Causes constraints to be generated such that directed graphs are laid out either from
   * left-to-right or top-to-bottom. A separation constraint is generated in the selected axis
   * for each edge that is not involved in a cycle
   * @graphTypes Network
   * @default 10
   */
  networkColaFlowLayoutSeparation?: number | boolean;
  /**
   * Number of iterations to run grid snap
   * @graphTypes Network
   * @default 0
   */
  networkColaGridSnapIterations?: number | boolean;
  /**
   * Compactness for the groups in the cola network
   * @graphTypes Network
   * @default 0.000001
   */
  networkColaGroupCompactness?: number | boolean;
  /**
   * Flag to handle disconnected nodes in the cola network
   * @graphTypes Network
   * @default true
   */
  networkColaHandleDisconnected?: boolean;
  /**
   * Ideal length foreach link based on the graph structure around that link. You can use this
   * to create extra space around hub-nodes in dense graphs
   * @graphTypes Network
   * @default false
   */
  networkColaJaccardLinkLength?: number | boolean;
  /**
   * Default length foreach link based on the graph structure around that link. You can use
   * this to create extra space around hub-nodes in dense graphs
   * @graphTypes Network
   * @default 1
   */
  networkColaJaccardLinkLengthDefault?: number | boolean;
  /**
   * Flag to keep running the cola network
   * @graphTypes Network
   * @default true
   */
  networkColaKeepRunning?: boolean;
  /**
   * Ideal length for links
   * @graphTypes Network
   * @default 20
   */
  networkColaLinkDistance?: number | boolean;
  /**
   * Number of iterations to run unconstrained
   * @graphTypes Network
   * @default 0
   */
  networkColaStartUnconstrainedIterations?: number | boolean;
  /**
   * Symmetric difference for the link lengths in the cola network
   * @graphTypes Network
   * @default 5
   */
  networkColaSymmetricDiffLinkLengths?: number | boolean;
  /**
   * Number of user iterations to run unconstrained
   * @graphTypes Network
   * @default 0
   */
  networkColaUserConstraintIterations?: number | boolean;
  /**
   * Threshold for the convergence of the network
   * @graphTypes Network
   * @default 0.05
   */
  networkConvergenceThreshold?: number | boolean;
  /**
   * Flag to use positioning forces rather than centering forces. Applicable only to force
   * directed layouts that contain multiple subnetworks
   * @graphTypes Network
   * @default true
   */
  networkDisjoint?: boolean;
  /**
   * Drag force coefficient. Used to slow down system, thus should be less than 1. The closer
   * it is to 0 the less tight system will be
   * @graphTypes Network
   * @default 0.09
   */
  networkDragCoeff?: number | boolean;
  /**
   * Flag to prevent autoscaling for the network layout. Useful when images are part of the
   * network
   * @graphTypes Network
   * @default false
   */
  networkFreeze?: boolean;
  /**
   * Flag to prevent autoscaling for the network layout after loading. Useful when images are
   * part of the network
   * @graphTypes Network
   * @default false
   */
  networkFreezeOnLoad?: boolean;
  /**
   * Network Gravity
   * @graphTypes Network
   * @default 0.75
   */
  networkGravity?: number | boolean;
  /**
   * Type of network layout
   * @graphTypes Network
   * @default "forceDirected"
   */
  networkLayoutType?: "forceDirected" | "circular" | "radial" | "cola" | false | (string & {});
  /**
   * Number of iterations to separate subnetworks
   * @graphTypes Network
   * @default 15
   */
  networkMaxIterations?: number | boolean;
  /**
   * Flag to draw the nodes on top of edges in the networks. Useful for very populated netwrok
   * graphs. When is set to true all the edges will be in the background
   * @graphTypes Network
   * @default true
   */
  networkNodesOnTop?: boolean;
  /**
   * Position for the progress bar
   * @graphTypes Network
   * @default "bottom"
   */
  networkProgressBarPosition?: "none" | "bottom" | "center" | "top" | false | (string & {});
  /**
   * Coulombs law coefficient. Its used to repel nodes thus should be negative if you make it
   * positive nodes start attract each other
   * @graphTypes Network
   * @default -1
   */
  networkRepulsion?: number | boolean;
  /**
   * Node Id of the network root
   * @graphTypes Network
   * @default false
   */
  networkRoot?: string | boolean;
  /**
   * Network Speed
   * @graphTypes Network
   * @default 0.1
   */
  networkSpeed?: number | boolean;
  /**
   * Hooks law coefficient. 1 - solid spring
   * @graphTypes Network
   * @default 0.0008
   */
  networkSpringCoeff?: number | boolean;
  /**
   * Ideal length for links (springs in physical model)
   * @graphTypes Network
   * @default 35
   */
  networkSpringLength?: number | boolean;
  /**
   * Theta coefficient from Barnes Hut simulation. Ranged between (0, 1). The closer its to 1
   * the more nodes algorithm will have to go through. Setting it to one makes Barnes Hut
   * simulation no different from brute-force forces calculation (each node is considered)
   * @graphTypes Network
   * @default 0.8
   */
  networkTheta?: number | boolean;
  /**
   * Default time step (dt) for forces integration
   * @graphTypes Network
   * @default 20
   */
  networkTimeStep?: number | boolean;
  /**
   * Network vendor
   * @graphTypes Network
   * @default false
   */
  networkVendor?: string | boolean;
  /**
   * Alignment (or position) for the node
   * @graphTypes Network
   * @default "center"
   */
  nodeAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the node
   * @graphTypes Network
   * @default "middle"
   */
  nodeBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the nodes
   * @graphTypes Network
   * @default "rgb(245,245,245)"
   */
  nodeColor?: string | boolean;
  /**
   * Font size for the text in node. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * nodeScaleFontFactor
   * @graphTypes Network
   * @default 10
   */
  nodeFontSize?: number | boolean;
  /**
   * Font style for the node
   * @graphTypes Network
   * @default ""
   */
  nodeFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted nodes; inherits
   * highlightColor when not set
   * @graphTypes Network
   * @default false
   */
  nodeHighlightColor?: string | boolean;
  /**
   * Margin to pad or separate the characters in the node
   * @graphTypes Network
   * @default 8
   */
  nodeMargin?: number | boolean;
  /**
   * Rotation in degrees for the node
   * @graphTypes Network
   * @default 0
   */
  nodeRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the node font size in the canvas
   * @graphTypes Network
   * @default 1
   */
  nodeScaleFontFactor?: number | boolean;
  /**
   * Scaling factor for increasing size of all nodes in the network
   * @graphTypes Network
   * @default 1
   */
  nodeSizeScaleFactor?: number | boolean;
  /**
   * Sort group keys numerically (type-aware: plain integers, range labels, composite keys)
   * instead of lexicographically
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  numericGroupSort?: boolean;
  /**
   * Color for the border of all objects in one dimensional graphs. It turns into the
   * non-transparent fill color if set to false
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default "rgba(0,0,0,0)"
   */
  objectBorderColor?: string | boolean;
  /**
   * The transparency for the color fill of all objects in one dimensional graphs. A value
   * between 0 and 1
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default 1
   */
  objectColorTransparency?: number | boolean;
  /**
   * Color for the odd numbers in samples when the property block contrast is set in one
   * dimensional plots or the color for odd number residues in translations in genome plots
   * @default "rgb(255,255,255)"
   */
  oddColor?: string | boolean;
  /**
   * Flag to work offline
   * @default false
   */
  offline?: boolean;
  /**
   * Flag to show the alteration frequency as text (e.g. 83%) to the right of each row in the
   * oncoprint
   * @graphTypes Heatmap
   * @default true
   */
  oncoprintAlteredText?: boolean;
  /**
   * String to identify the data object to use to draw the copy number alterations; that is the
   * amplifications (which will be colored red) and deletions (which will be colored blue). It
   * MUST be a file with only two categorical levels
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintCNA?: string | boolean;
  /**
   * Flag to show column summary in oncoprints
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintColSummary?: boolean;
  /**
   * String to identify the data object to use to draw the mRNA expression call as a cell
   * border (e.g. mRNA high, mRNA low). Drawn as a border so it does not compete with the
   * copy-number background or mutation bar
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintEXP?: string | boolean;
  /**
   * Position for the heatmap in the oncoprint
   * @graphTypes Heatmap
   * @default "bottom"
   */
  oncoprintHeatmapPosition?: "right" | "bottom" | "left" | "top" | false | (string & {});
  /**
   * String to identify the data object to use to draw the mutations. For example missense,
   * non-synonymous, truncating, etc. Each level will be colored in a shade of green
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintMUT?: string | boolean;
  /**
   * Flag to switch to show variables and samples without any alterations
   * @graphTypes Heatmap
   * @default true
   */
  oncoprintNoAlterations?: boolean;
  /**
   * Flag marking the oncoprint data as already ordered (e.g. cBioPortal gene-frequency and
   * sample-cascade order); the default oncoprint sort is skipped so that order is kept
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintPresorted?: boolean;
  /**
   * Flag to show row summary in oncoprints
   * @graphTypes Heatmap
   * @default false
   */
  oncoprintRowSummary?: boolean;
  /**
   * Flag to optimize position for text in many plots
   * @default false
   */
  optimizeTextPosition?: boolean;
  /**
   * Cooling parameter when optimizing position for text in many plots
   * @default 1
   */
  optimizeTextPositionCooling?: number | boolean;
  /**
   * Flag to enforce bounds when optimizing position for text in many plots
   * @default true
   */
  optimizeTextPositionEnforceBounds?: boolean;
  /**
   * Startegy to optimize placement of text
   * @default "greedy"
   */
  optimizeTextPositionStrategy?: "annealing" | "greedy" | "boundingBox" | false | (string & {});
  /**
   * Temperature parameter when optimizing position for text in many plots
   * @default 1000
   */
  optimizeTextPositionTemperature?: number | boolean;
  /**
   * Cadence word for the price-panel title (e.g. daily/weekly/monthly); auto-inferred from the
   * date spacing when unset
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallCadence?: string | boolean;
  /**
   * Fixed maximum for the calls flank value axis (metric). Unset = auto-scale to the expiry
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallCallMax?: number | boolean;
  /**
   * Fixed minimum for the calls flank value axis (metric). Unset = auto (0)
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallCallMin?: number | boolean;
  /**
   * Center the value axis on the spot price so roughly the same number of strikes fall above
   * and below it (keeps all candles visible)
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallCenterSpot?: boolean;
  /**
   * Option chain object for one expiry: {strikes, expiry, call:{premium,iv,volume},
   * put:{premium,iv,volume}}
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallChain?: string | boolean;
  /**
   * Expiry label shown in the flank panel titles (e.g. "2026-10-17")
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallExpiry?: string | boolean;
  /**
   * What the flank area curves plot against strike: implied volatility (the smile) or premium
   * @graphTypes OptionsWall
   * @default "iv"
   */
  optionsWallFlankMetric?: "iv" | "premium" | false | (string & {});
  /**
   * Shade the in-the-money region of each flank (above spot for puts, below for calls)
   * @graphTypes OptionsWall
   * @default true
   */
  optionsWallMoneynessShading?: boolean;
  /**
   * Relative widths of the [puts, price, calls] panels
   * @graphTypes OptionsWall
   * @default [1,2,1]
   */
  optionsWallPanelRatio?: unknown[] | boolean | string | number;
  /**
   * Fixed maximum for the puts flank value axis (metric). Unset = auto-scale to the expiry
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallPutMax?: number | boolean;
  /**
   * Fixed minimum for the puts flank value axis (metric). Unset = auto (0)
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallPutMin?: number | boolean;
  /**
   * Which side the puts panel is drawn on; calls take the opposite side
   * @graphTypes OptionsWall
   * @default "left"
   */
  optionsWallPutsSide?: "left" | "right" | false | (string & {});
  /**
   * Spot price for the dashed spot ruler. Defaults to the last Close in the price series
   * @graphTypes OptionsWall
   * @default false
   */
  optionsWallSpot?: number | boolean;
  /**
   * Color for the outline of the 3D Scatters
   * @graphTypes Bar, Network, Scatter3D
   * @default "rgb(0,0,0)"
   */
  outline3DColor?: string | boolean;
  /**
   * Name of the annotation for the outline when drawing a multidimensional Heatmap
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  outlineBy?: string | boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * color the outline data points when drawing a multidimensional Heatmap. It must be located
   * within the data.y object (for example: data.y.data4)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  outlineByData?: string | boolean;
  /**
   * Default width in pixels for lines in networks and other line elements in all
   * visualizations except for the lines in the line plots
   * @default 1
   */
  outlineWidth?: number | boolean;
  /**
   * Alignment (or position) for the overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "center"
   */
  overlayTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  overlayTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  overlayTextColor?: string | boolean;
  /**
   * Font size for the text in overlays. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * overlayTextScaleFontFactor
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 10
   */
  overlayTextFontSize?: number | boolean;
  /**
   * Font style for the overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default ""
   */
  overlayTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 5
   */
  overlayTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the overlays
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 0
   */
  overlayTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the overlays font size in the canvas
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  overlayTextScaleFontFactor?: number | boolean;
  /**
   * Position for the the variable and sample overlays legend
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "topRight"
   */
  overlaysLegendPosition?: "topRight" | "right" | "bottomLeft" | "bottom" | false | (string & {});
  /**
   * Relative length in pixels for the thickness of the colored boxes to classify samples and
   * or variables in one dimensional plots. This value is adjusted acording to the graph
   * dimensions
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 28
   */
  overlaysThickness?: number | boolean;
  /**
   * Specify the pixel count for stacking to address overplotting. Increased values result in
   * reduced overplotting, particularly advantageous for datasets with numerous variables
   * @default 500000
   */
  overplotPixels?: number | boolean;
  /**
   * Color for the border in panel background. This includes only the area where the data is
   * plotted
   * @default "rgba(204,204,204,0)"
   */
  panelBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in panel background. This includes only the area where the
   * data is plotted
   * @default "solid"
   */
  panelBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in panel background. This includes only the area where the data
   * is plotted
   * @default 1
   */
  panelBackgroundBorderSize?: number | boolean;
  /**
   * Color for the panel background. This includes only the area where the data is plotted
   * @default "rgb(255,255,255)"
   */
  panelBackgroundColor?: string | boolean;
  /**
   * Color for the border in panel background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgba(204,204,204,1)"
   */
  panelOverlayBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in panel background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  panelOverlayBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in panel background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  panelOverlayBackgroundBorderSize?: number | boolean;
  /**
   * Color for the panel background
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default "rgb(255,255,255)"
   */
  panelOverlayBackgroundColor?: string | boolean;
  /**
   * Percentage step for panning networks
   * @default 0.2
   */
  panningStep?: number | boolean;
  /**
   * Number of unit to pan the network in the X dimension
   * @default 0
   */
  panningX?: number | boolean;
  /**
   * Number of unit to pan the network in the Y dimension
   * @default 0
   */
  panningY?: number | boolean;
  /**
   * Password to protect exploring data
   * @default false
   */
  password?: string | boolean;
  /**
   * Name of a variable annotation or a sample name or the string variable to pattern the
   * variables. When patternByData is specified patternBy is used for the title in the legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  patternBy?: string | boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * pattern the data points when drawing a multidimensional Heatmap. It must be located within
   * the data.y object (for example: data.y.data4)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  patternByData?: string | boolean;
  /**
   * Color for the Color for the fill of the patterns used in visualizations
   * @default "rgba(0,0,0,0)"
   */
  patternFillColor?: string | boolean;
  /**
   * Object to assign custom patterns to sample annotations and variable annotations included
   * in the data object. The key of the object is the name of an annotation in the data.x
   * object or the name of an annotation in the data.z object. A default pattern will be
   * assigned to a data point whose value was not included the object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  patternKey?: Record<string, unknown> | boolean;
  /**
   * Name of the attribute to pattern the nodes
   * @graphTypes Network
   * @default false
   */
  patternNodeBy?: string | boolean;
  /**
   * Color for the Color for the stroke of the patterns used in visualizations
   * @default "rgb(0,0,0)"
   */
  patternStrokeColor?: string | boolean;
  /**
   * Width in pixels for the stroke of the patterns used in visualizations
   * @default 1
   */
  patternStrokeWidth?: number | boolean;
  /**
   * Patterns used in visualizations to fill objects. This array must contain one or more
   * pattern names and in concert with the color array can be used to specify the pattern
   * colors for all filled objects in the visualizations.. The order will dictate the
   * utilization in the visualization
   */
  patterns?: unknown[] | boolean | string | number;
  /**
   * Specifies the minimum unit interval or fraction for the plotting area
   * @default 0.35
   */
  percentAspectRatioPlotArea?: number | boolean;
  /**
   * Factor to use to make the 3D perspective. The higher the number the more perspective.
   * Perspective of zero is no perspective at all
   * @graphTypes Bar, Network, Scatter3D
   * @default 2.2
   */
  perspectiveFactor?: number | boolean;
  /**
   * Utility to create pie with a sample annotation
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  pieBy?: string | boolean;
  /**
   * Pie Colors. Defaults to the parameter colors
   * @graphTypes Pie
   * @default []
   */
  pieColors?: unknown[] | boolean | string | number;
  /**
   * Percentage of the radius in the pies to remove to make a donut. It must be a number
   * between 0 to 1
   * @graphTypes Pie
   * @default 0
   */
  pieInnerRadius?: number | boolean;
  /**
   * Pie label type to show the percentage of the slice or the actual number
   * @graphTypes Pie
   * @default "percentage"
   */
  pieLabelType?: "percentage" | "value" | false | (string & {});
  /**
   * Location for the values in the pie charts
   * @graphTypes Pie
   * @default "inside"
   */
  pieSegmentLabels?: "inside" | "outside" | false | (string & {});
  /**
   * Number of decimals for values in the Pie charts
   * @graphTypes Pie
   * @default 0
   */
  pieSegmentPrecision?: number | boolean;
  /**
   * Length in pixels for the separation of the pieces of the pie charts
   * @graphTypes Pie
   * @default 1
   */
  pieSegmentSeparation?: number | boolean;
  /**
   * Position for the pices of the pie
   * @graphTypes Pie
   * @default "separated"
   */
  pieType?: "separated" | "solid" | false | (string & {});
  /**
   * Utility to pivot data with a sample annotation
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  pivotBy?: string | boolean;
  /**
   * Flag to make the plot playable if there are after rendering functions
   * @default false
   */
  playable?: boolean;
  /**
   * Color for the border in plot background. This includes the entire graph area
   * @default "rgba(204,204,204,0)"
   */
  plotBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in plot background. This includes the entire graph area
   * @default "solid"
   */
  plotBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in plot background. This includes the entire graph area
   * @default 1
   */
  plotBackgroundBorderSize?: number | boolean;
  /**
   * Color for the plot background. This includes the entire graph area
   * @default "rgb(255,255,255)"
   */
  plotBackgroundColor?: string | boolean;
  /**
   * Flag to indicate whether to group the data variable rather than by sample
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  plotByVariable?: boolean;
  /**
   * Style for some shapes used mainly in boxplot, violin and density plots
   * @default "default"
   */
  plotStyle?: "default" | "ggplot" | "ggplotSwitched" | "open" | "border" | false | (string & {});
  /**
   * Flag to prescale or not the network. This is an aesthetic parameter to make the graph look
   * nicer... Sometimes..
   * @graphTypes Network
   * @default false
   */
  preScaleNetwork?: boolean;
  /**
   * Print Magnification to produce High Definition images
   * @default 1
   */
  printMagnification?: number | boolean;
  /**
   * Flag to print thumbnail
   * @default false
   */
  printThumbnail?: boolean;
  /**
   * Type of printing when the camera icon in the UI is pressed. Download is to download the
   * image while window is to save the image in a new browser window
   * @default "download"
   */
  printType?: "download" | "window" | false | (string & {});
  /**
   * Color for the the background track (rail) drawn behind the fill when bulletStyle is
   * "progress"; when false a muted tint of the foreground is used
   * @graphTypes Bullet
   * @default false
   */
  progressTrackColor?: string | boolean;
  /**
   * A number between 0.1 and 1 to adjust the thickness of the rail when bulletStyle is
   * "progress"
   * @graphTypes Bullet
   * @default 0.35
   */
  progressWidthRatio?: number | boolean;
  /**
   * String use to call the LLM from initialization
   * @default false
   */
  prompt?: string | boolean;
  /**
   * Flag to indicate to use pseudo random rather than random
   * @default true
   */
  pseudoRandom?: boolean;
  /**
   * Array with quantiles to use in quantile regression plots
   * @graphTypes Scatter2D
   * @default ["0.25","0.5","0.75"]
   */
  quantiles?: unknown[] | boolean | string | number;
  /**
   * Name of the samples, groups or variables to be displayed in the R axis
   * @graphTypes Circular
   * @default []
   */
  rAxis?: unknown[] | boolean | string | number;
  /**
   * Value to ceil the data in the R axis
   * @graphTypes Circular
   * @default null
   */
  rAxisCeilValue?: number | boolean;
  /**
   * Flag to force exact values in R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisExact?: boolean;
  /**
   * Value to factor the data in the R axis
   * @graphTypes Circular
   * @default null
   */
  rAxisFactorValue?: number | boolean;
  /**
   * Value to floor the data in the R axis
   * @graphTypes Circular
   * @default null
   */
  rAxisFloorValue?: number | boolean;
  /**
   * Color for the major grid lines in the R axis
   * @graphTypes Circular
   * @default "rgb(204, 204, 204)"
   */
  rAxisGridMajorColor?: string | boolean;
  /**
   * Type of line for the major grid lines in the R axis
   * @graphTypes Circular
   * @default "solid"
   */
  rAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the major grid lines in the R axis
   * @graphTypes Circular
   * @default true
   */
  rAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisGridMajorTransparency?: number | boolean;
  /**
   * Width for the major grid lines in the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisGridMajorWidth?: number | boolean;
  /**
   * Color for the minor grid lines in the R axis
   * @graphTypes Circular
   * @default "rgb(204, 204, 204)"
   */
  rAxisGridMinorColor?: string | boolean;
  /**
   * Type of line for the minor grid lines in the R axis
   * @graphTypes Circular
   * @default "solid"
   */
  rAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the R axis
   * @graphTypes Circular
   * @default true
   */
  rAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisGridMinorTransparency?: number | boolean;
  /**
   * Width for the minor grid lines in the R axis
   * @graphTypes Circular
   * @default 0.5
   */
  rAxisGridMinorWidth?: number | boolean;
  /**
   * Orientation to show the ticks values in circular plots
   * @graphTypes Circular
   * @default "perpendicular"
   */
  rAxisLabelOrientation?: "perpendicular" | "circular" | false | (string & {});
  /**
   * Color for the log tick lines in the R axis
   * @graphTypes Circular
   * @default "rgb(0,0,0)"
   */
  rAxisLogTicksColor?: string | boolean;
  /**
   * Length for the log tick lines in the R axis
   * @graphTypes Circular
   * @default 8
   */
  rAxisLogTicksLength?: number | boolean;
  /**
   * Type of line for the log tick lines in the R axis
   * @graphTypes Circular
   * @default "solid"
   */
  rAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the log tick lines in the R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisLogTicksTransparency?: number | boolean;
  /**
   * Width for the log tick lines in the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisLogTicksWidth?: number | boolean;
  /**
   * Flag to show on not the percent in each segment in the R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisPercentShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with rAxisSetValues in the R axis
   * @graphTypes Circular
   * @default []
   */
  rAxisSetLabels?: unknown[] | boolean | string | number;
  /**
   * Set the minor values for the axis in the R axis
   * @graphTypes Circular
   * @default []
   */
  rAxisSetMinorValues?: unknown[] | boolean | string | number;
  /**
   * Set the values for the axis in the R axis
   * @graphTypes Circular
   * @default []
   */
  rAxisSetValues?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the R axis
   * @graphTypes Circular
   * @default true
   */
  rAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @graphTypes Circular
   * @default "center"
   */
  rAxisTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @graphTypes Circular
   * @default "middle"
   */
  rAxisTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis text
   * @graphTypes Circular
   * @default "rgb(0,0,0)"
   */
  rAxisTextColor?: string | boolean;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * rAxisTextScaleFontFactor
   * @graphTypes Circular
   * @default 8
   */
  rAxisTextFontSize?: number | boolean;
  /**
   * Font style for the axis text
   * @graphTypes Circular
   * @default ""
   */
  rAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @graphTypes Circular
   * @default 5
   */
  rAxisTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis text
   * @graphTypes Circular
   * @default 0
   */
  rAxisTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @graphTypes Circular
   * @default 1
   */
  rAxisTextScaleFontFactor?: number | boolean;
  /**
   * R axis format for the tick values in the R axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @graphTypes Circular
   * @default false
   */
  rAxisTickFormat?: string | unknown[] | boolean | number;
  /**
   * Approx number of tick lines in the R axis
   * @graphTypes Circular
   * @default 5
   */
  rAxisTicks?: number | boolean;
  /**
   * Color for the marker lines across the R axis
   * @graphTypes Circular
   * @default "rgb(204, 204, 204)"
   */
  rAxisTicksColor?: string | boolean;
  /**
   * Length for the marker lines across the R axis
   * @graphTypes Circular
   * @default null
   */
  rAxisTicksLength?: number | boolean;
  /**
   * Type of line for the marker lines across the R axis
   * @graphTypes Circular
   * @default "solid"
   */
  rAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the marker lines across the R axis
   * @graphTypes Circular
   * @default true
   */
  rAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisTicksTransparency?: number | boolean;
  /**
   * Width for the marker lines across the R axis
   * @graphTypes Circular
   * @default 1
   */
  rAxisTicksWidth?: number | boolean;
  /**
   * Flag to force date format in R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisTime?: boolean;
  /**
   * R axis title
   * @graphTypes Circular
   * @default false
   */
  rAxisTitle?: string | boolean;
  /**
   * Alignment (or position) for the axis title
   * @graphTypes Circular
   * @default "center"
   */
  rAxisTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @graphTypes Circular
   * @default "middle"
   */
  rAxisTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis title
   * @graphTypes Circular
   * @default "rgb(0,0,0)"
   */
  rAxisTitleColor?: string | boolean;
  /**
   * Set the title for the R axis dynamically as it changes when configured by the user
   * @graphTypes Circular
   * @default false
   */
  rAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * rAxisTitleScaleFontFactor
   * @graphTypes Circular
   * @default 8
   */
  rAxisTitleFontSize?: number | boolean;
  /**
   * Font style for the axis title
   * @graphTypes Circular
   * @default ""
   */
  rAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @graphTypes Circular
   * @default 5
   */
  rAxisTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis title
   * @graphTypes Circular
   * @default 0
   */
  rAxisTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @graphTypes Circular
   * @default 1
   */
  rAxisTitleScaleFontFactor?: number | boolean;
  /**
   * Type of transformation for values in R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisTransform?: string | boolean;
  /**
   * Flag to transform the values of the ticks back to linear scale in the R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the R axis
   * @graphTypes Circular
   * @default false
   */
  rAxisTransformTicks?: boolean;
  /**
   * Random method
   * @default "numericalRecipes"
   */
  randomMethod?: "jenkins" | "numericalRecipes" | false | (string & {});
  /**
   * Specifies the random seed number to create pseudo random numbers
   * @default 8
   */
  randomSeed?: number | boolean;
  /**
   * Transparency to apply to the range colors in bullet graphs
   * @graphTypes Bar, Bullet, Meter
   * @default 0.6
   */
  rangeColorTransparency?: number | boolean;
  /**
   * Colors for the background ranges in bullet and meter graphs
   * @graphTypes Bar, Bullet, Meter
   * @default []
   */
  rangeColors?: unknown[] | boolean | string | number;
  /**
   * Numeric top values for the qualitative range segments of an indicator (meter scale tops).
   * Companion to rangeStack (variable-driven bands, used by bullets) in the shared indicator
   * range model
   * @graphTypes Bar, Bullet, Meter
   * @default []
   */
  rangeSegments?: unknown[] | boolean | string | number;
  /**
   * Variable names defining the qualitative background ranges (bullet indicators, data-driven
   * bands). If left empty, the entire graph area is used. Companion to rangeSegments (numeric
   * scale tops, used by meters) in the shared indicator range model
   * @graphTypes Bar, Bullet, Meter
   * @default []
   */
  rangeStack?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the labels for the background ranges in bullet graphs
   * @graphTypes Bar, Bullet, Meter
   * @default false
   */
  rangeStackShow?: boolean;
  /**
   * Name of the group used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ratioGroupReference?: string | boolean;
  /**
   * Name of the level used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ratioLevelReference?: string | boolean;
  /**
   * Default index of sample used in ratio transformation. Almost private parameters used
   * within the different CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  ratioReference?: number | boolean;
  /**
   * Name of the sample used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ratioSampleReference?: string | boolean;
  /**
   * Position for the regression fit equation
   * @graphTypes Scatter2D
   * @default "top"
   */
  regressionFitEquationPosition?: "top" | "bottom" | false | (string & {});
  /**
   * Specifies the number of degrees to solve for in polynomial regressions
   * @graphTypes Scatter2D
   * @default 2
   */
  regressionOrder?: number | boolean;
  /**
   * Type of linear least-squares fitting methods for simple data analysis
   * @graphTypes Scatter2D
   * @default "linear"
   */
  regressionType?: "linear" | "exponential" | "logarithmic" | "power" | "polynomial" | false | (string & {});
  /**
   * Duration in milliseconds to wait for replicating user modifications via the UI
   * @default 750
   */
  reproduceTime?: number | boolean;
  /**
   * Flag to indicate reproduction will be used to create a video
   * @default false
   */
  reproduceVideoMode?: boolean;
  /**
   * Type of function to apply when calculating repulsive force in forceDirected network
   * layouts. Fruchterman-Reingold uses square while Eades uses log
   * @graphTypes Network
   * @default "square"
   */
  repulsiveForceFunction?: "square" | "cubic" | "log" | "pow" | "sqrt" | false | (string & {});
  /**
   * Flag to disable resizing the canvas by dragging the mouse over the edges
   * @default true
   */
  resizable?: boolean;
  /**
   * Flag to disable resizing the width of the canvas by dragging the mouse over the edges
   * @default true
   */
  resizableX?: boolean;
  /**
   * Flag to disable resizing the height of canvas by dragging the mouse over the edges
   * @default true
   */
  resizableY?: boolean;
  /**
   * Name of a sample annotation(s) to create a ribbon of each variable in scatter plots. If a
   * single annotation is passed then it will be used as a standard deviation. If two
   * annotations are passed then, it will be used as upper and lower confidence intervals.
   * Alternatively it could be a pair of arrays witht the actual data. Works in coordination
   * with the lineBy parameter
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ribbonBy?: string | boolean;
  /**
   * Type of ribbon to create
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "line"
   */
  ribbonByType?: "line" | "area" | false | (string & {});
  /**
   * Utility to create ridgelines in Scatter2D plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  ridgeBy?: string | boolean;
  /**
   * Scale for ridgeline
   * @graphTypes Scatter2D
   * @default 1.5
   */
  ridgelineScale?: number | boolean;
  /**
   * Flag to use a violin to calculate the ridgeline plot
   * @graphTypes Scatter2D
   * @default false
   */
  ridgelineViolin?: boolean;
  /**
   * Text to include at the right of the graph in the right margin
   * @default false
   */
  rightMarginalText?: string | boolean;
  /**
   * Alignment (or position) for the right marginal text
   * @default "left"
   */
  rightMarginalTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the right marginal text
   * @default "center"
   */
  rightMarginalTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in right marginal text
   * @default "rgb(0,0,0)"
   */
  rightMarginalTextColor?: string | boolean;
  /**
   * Font size for the text in right marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the rightMarginalTextScaleFontFactor
   * @default 12
   */
  rightMarginalTextFontSize?: number | boolean;
  /**
   * Font style for the right marginal text
   * @default ""
   */
  rightMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the right marginal text
   * @default 5
   */
  rightMarginalTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the right marginal text
   * @default 0
   */
  rightMarginalTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the right marginal text font size in the
   * canvas
   * @default 1
   */
  rightMarginalTextScaleFontFactor?: number | boolean;
  /**
   * Factor to adjust the sensitivity of the mouse when rotating the graph
   * @graphTypes Bar, Network, Scatter3D
   * @default 450
   */
  rotationSensitivity?: number | boolean;
  /**
   * Radius for rounded polygons
   * @default 5
   */
  roundedPolygonRadius?: number | boolean;
  /**
   * Flag to cluster samples
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  samplesClustered?: boolean;
  /**
   * Flag to k-mean samples
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  samplesKmeaned?: boolean;
  /**
   * Axes to include in the alluvial plots. It must sample annotations of the string type in
   * the x object
   * @graphTypes Sankey
   * @default []
   */
  sankeyAxes?: unknown[] | boolean | string | number;
  /**
   * Object giving an explicit top-to-bottom order for the strata of a Sankey/alluvial column,
   * for this graph only (independent of legendOrder). The key is a sankeyAxes annotation (or
   * the sankeySource/sankeyTarget annotation) and the value is an array of its stratum levels
   * in the desired order; any level not listed is placed last, alphabetically. Setting this
   * implies sankeyNodeSort "factor"
   * @graphTypes Sankey
   * @default false
   */
  sankeyAxesOrder?: Record<string, unknown> | boolean;
  /**
   * Flag to colour each Sankey node by its own value (level) rather than by a single colorBy
   * annotation, and to paint every flow ribbon in its source node's colour. Set on the
   * ggsankey (davidsjoberg/ggsankey) path, where fill = factor(node) colours the whole diagram
   * per node
   * @graphTypes Sankey
   * @default false
   */
  sankeyColorNodesByValue?: boolean;
  /**
   * Outline width (px) for the Sankey/alluvial flow ribbons. Left null the ribbons use the
   * default outlineWidth, which inflates a thin (low-value) flow into a solid ~1px line in its
   * fill colour; a small value (e.g. 0.25) lets thin flows render at their true width so many
   * overlapping ribbons no longer read as a dense line-mesh
   * @graphTypes Sankey
   * @default null
   */
  sankeyLinkLineWidth?: number | boolean;
  /**
   * Paint order of the Sankey/alluvial flow ribbons (which overlays which). <i>data</i>
   * (default) keeps the input/build order; <i>color</i> paints them grouped by the colorBy
   * annotation level order and then by alluvium id, so same-coloured ribbons draw together and
   * later ones overlay (ggalluvial z_order_aes parity). Only affects colour-by diagrams
   * @graphTypes Sankey
   * @default "data"
   */
  sankeyLinkOrder?: "data" | "color" | false | (string & {});
  /**
   * Color for the sankey lines (links)
   * @graphTypes Sankey
   * @default "rgba(204,204,204,0.66)"
   */
  sankeyLinksColor?: string | boolean;
  /**
   * Opacity (0-1) of the Sankey/alluvial link (flow) fills when they are coloured by an
   * annotation (colorBy). The ggplot/alluvial path sets this from the geom_alluvium alpha
   * aesthetic
   * @graphTypes Sankey
   * @default 0.75
   */
  sankeyLinksOpacity?: number | boolean;
  /**
   * Vertical order of the flow ribbons WITHIN each stratum of a Sankey/alluvial (which lode
   * sits above which). <i>none</i> (default) stacks by the neighbouring node position
   * (native). The others port ggalluvial's lode.guidance: within a stratum, alluvia are
   * ordered by the strata they pass through in the OTHER axes, visited in a set priority.
   * <i>zigzag</i> (ggalluvial default) weights the nearest axes first, alternating outward;
   * <i>forward</i>/<i>backward</i> weight earlier/later axes;
   * <i>frontback</i>/<i>backfront</i> sweep to one end then the other. Requires an explicit
   * sankeyNodeSort (e.g. "factor")
   * @graphTypes Sankey
   * @default "none"
   */
  sankeyLodeGuidance?: "none" | "zigzag" | "forward" | "backward" | "frontback" | "backfront" | false | (string & {});
  /**
   * Object mapping a Sankey node value (level) to its fill colour, used when
   * sankeyColorNodesByValue is set. The ggsankey path fills this from the emitted factor(node)
   * hue palette so each node and its outgoing ribbons match ggsankey exactly
   * @graphTypes Sankey
   * @default false
   */
  sankeyNodeColorMap?: Record<string, unknown> | boolean;
  /**
   * Title of the Sankey node-value legend drawn when sankeyColorNodesByValue and
   * sankeyNodeColorMap are set. The ggsankey path sets it to the fill aesthetic label (e.g.
   * "factor(node)"). Set false to draw the legend with no title
   * @graphTypes Sankey
   * @default false
   */
  sankeyNodeLegendTitle?: string | boolean;
  /**
   * Padding between the Sankey nodes
   * @graphTypes Sankey
   * @default 8
   */
  sankeyNodePadding?: number | boolean;
  /**
   * Order of the strata within each Sankey/alluvial column. <i>auto</i>: flow-based order that
   * minimizes ribbon crossings (default). <i>input</i>: data order, no reordering.
   * <i>ascending</i>/<i>descending</i>: by the stratum flow value. <i>alphabetical</i>: by the
   * stratum name. <i>factor</i>: by each axis variable factor levels (ggalluvial parity);
   * strata whose value has no defined level sort last, alphabetically
   * @graphTypes Sankey
   * @default "auto"
   */
  sankeyNodeSort?: "auto" | "input" | "ascending" | "descending" | "alphabetical" | "factor" | false | (string & {});
  /**
   * Width for the Sankey nodes
   * @graphTypes Sankey
   * @default 30
   */
  sankeyNodeWidth?: number | boolean;
  /**
   * Color for the sankey nodes
   * @graphTypes Sankey
   * @default false
   */
  sankeyNodesColor?: string | boolean;
  /**
   * Color for the sankey outline
   * @graphTypes Sankey
   * @default "rgba(0,0,0,0)"
   */
  sankeyOutlineColor?: string | boolean;
  /**
   * Name of a sample annotation to use as source in the sankey diagrams
   * @graphTypes Sankey
   * @default false
   */
  sankeySource?: string | boolean;
  /**
   * Name of a sample annotation to use as target in the sankey diagrams
   * @graphTypes Sankey
   * @default false
   */
  sankeyTarget?: string | boolean;
  /**
   * Alignment (or position) for the sankey diagram labels
   * @graphTypes Sankey
   * @default "center"
   */
  sankeyTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Flag to adjust the text orientation and the visibility for the labels in the Sankey
   * diagrams
   * @graphTypes Sankey
   * @default true
   */
  sankeyTextAuto?: boolean;
  /**
   * Baseline (or reference line) for the sankey diagram labels
   * @graphTypes Sankey
   * @default "middle"
   */
  sankeyTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in sankey diagram labels
   * @graphTypes Sankey
   * @default "rgb(0,0,0)"
   */
  sankeyTextColor?: string | boolean;
  /**
   * Font size for the text in sankey diagram labels. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the sankeyTextScaleFontFactor
   * @graphTypes Sankey
   * @default 10
   */
  sankeyTextFontSize?: number | boolean;
  /**
   * Font style for the sankey diagram labels
   * @graphTypes Sankey
   * @default ""
   */
  sankeyTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Flag to draw the text of the sankey labels inside the plot. It is only applicable when
   * sankeyTextAuto is false
   * @graphTypes Sankey
   * @default true
   */
  sankeyTextInside?: boolean;
  /**
   * Margin to pad or separate the characters in the sankey diagram labels
   * @graphTypes Sankey
   * @default 0
   */
  sankeyTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the sankey diagram labels
   * @graphTypes Sankey
   * @default 90
   */
  sankeyTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the sankey diagram labels font size in the
   * canvas
   * @graphTypes Sankey
   * @default 1
   */
  sankeyTextScaleFontFactor?: number | boolean;
  /**
   * Flag to show/hide the labels in the Sankey diagrams
   * @graphTypes Sankey
   * @default true
   */
  sankeyTextShow?: boolean;
  /**
   * Alignment (or position) for the sankey diagram titles
   * @graphTypes Sankey
   * @default "center"
   */
  sankeyTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the sankey diagram titles
   * @graphTypes Sankey
   * @default "middle"
   */
  sankeyTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in sankey diagram titles
   * @graphTypes Sankey
   * @default "rgb(0,0,0)"
   */
  sankeyTitleColor?: string | boolean;
  /**
   * Font size for the text in sankey diagram titles. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the sankeyTitleScaleFontFactor
   * @graphTypes Sankey
   * @default 10
   */
  sankeyTitleFontSize?: number | boolean;
  /**
   * Font style for the sankey diagram titles
   * @graphTypes Sankey
   * @default ""
   */
  sankeyTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the sankey diagram titles
   * @graphTypes Sankey
   * @default 0
   */
  sankeyTitleMargin?: number | boolean;
  /**
   * Position of the Sankey/alluvial axis (column) titles relative to the plot. <i>bottom</i>
   * (default) draws them under the columns; <i>top</i> draws them above (ggplot scale_x
   * position "top" parity)
   * @graphTypes Sankey
   * @default "bottom"
   */
  sankeyTitlePosition?: "bottom" | "top" | false | (string & {});
  /**
   * Rotation in degrees for the sankey diagram titles
   * @graphTypes Sankey
   * @default 0
   */
  sankeyTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the sankey diagram titles font size in the
   * canvas
   * @graphTypes Sankey
   * @default 1
   */
  sankeyTitleScaleFontFactor?: number | boolean;
  /**
   * Flag to show/hide the titles in the Sankey diagrams
   * @graphTypes Sankey
   * @default true
   */
  sankeyTitleShow?: boolean;
  /**
   * Height model for the Sankey/alluvial strata. <i>normal</i>: one shared scale across the
   * whole diagram (columns with fewer classes are shorter). <i>proportional</i>: each stratum
   * column is scaled independently to fill the full plot height, node heights stay
   * proportional to their value, and the flow ribbons proportionally fill the node boxes at
   * both ends. <i>equal</i>: every stratum (node) in a column gets the same height so the
   * column is evenly partitioned, with the ribbons proportionally filling each equal node box
   * at both ends. <i>aligned</i>: keeps the normal node heights but spreads the strata of each
   * column evenly over the full plot height (overrides sankeyNodePadding)
   * @graphTypes Sankey
   * @default "normal"
   */
  sankeyType?: "normal" | "proportional" | "equal" | "aligned" | false | (string & {});
  /**
   * Filename to use when downloading the canvas as an image or as json. If not specified. the
   * filename will be based on the target id of the canvas. cX- + canvas.targetId + extension
   * @default false
   */
  saveFilename?: string | boolean;
  /**
   * Flag to keep same range in both axes
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  scatterAxesEqual?: boolean;
  /**
   * Color for the data points in scatter plots
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  scatterDataPointsColor?: string | boolean;
  /**
   * Transparency applied to lines in scatter plots
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default 1
   */
  scatterLineAlpha?: number | boolean;
  /**
   * Maximum number of data points before skipping plotting their outline but only the fill
   * color
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default 50000
   */
  scatterOutlineThreshold?: number | boolean;
  /**
   * Could be a boolean to plot a matrix of 2D scatterplots or a sample annotation to color and
   * segregate the plots
   * @graphTypes Scatter2D
   * @default false
   */
  scatterPlotMatrix?: string | boolean;
  /**
   * Type for the matrix of 2D scatterplots. Draw either in both panels, upper only or lower
   * only. Show any combination of correlation, histogram, density and variability (boxplots).
   * Also specify whether to use all versus all or only the first data set
   * @graphTypes Scatter2D
   * @default "both"
   */
  scatterPlotMatrixType?: "both" | "upper" | "lower" | "correlation" | "correlationHistogram" | "correlationDensity" | "all" | "first" | false | (string & {});
  /**
   * Thickness applied to data points in scatter plots
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default 1
   */
  scatterPointAlpha?: number | boolean;
  /**
   * Scatter stream bandwidth. Tensor for the wiggles of the stream wiggles. A vaulue between 0
   * and 1
   * @graphTypes Scatter2D
   * @default 0.75
   */
  scatterStreamBandwidth?: number | boolean;
  /**
   * Scatter stream extra extension for the wiggles. A vaulue between 0 and 1 as in percent
   * @graphTypes Scatter2D
   * @default 0.01
   */
  scatterStreamExtraSpan?: number | boolean;
  /**
   * Number of values for the wiggles
   * @graphTypes Scatter2D
   * @default 1000
   */
  scatterStreamNumber?: number | boolean;
  /**
   * Expand the X axis
   * @graphTypes Scatter2D
   * @default "both"
   */
  scatterStreamTrueRange?: "both" | "min_x" | "max_x" | "none" | false | (string & {});
  /**
   * Type of stream scatter plot
   * @graphTypes Scatter2D
   * @default "mirror"
   */
  scatterStreamType?: "mirror" | "ridge" | "proportional" | false | (string & {});
  /**
   * Order for the streamgraph wiggles
   * @graphTypes Scatter2D
   * @default []
   */
  scatterStreamWiggles?: unknown[] | boolean | string | number;
  /**
   * Type of scatter plot
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  scatterType?: string | boolean;
  /**
   * Color for the Alternate background color for custom scrollbar tracks
   * @default "rgb(245, 245, 245)"
   */
  scrollbarAltBackgroundColor?: string | boolean;
  /**
   * Color for the Background color for custom scrollbars
   * @default "rgb(255, 255, 255)"
   */
  scrollbarBackgroundColor?: string | boolean;
  /**
   * Color for the Thumb color for custom scrollbars
   * @default "#cccccc"
   */
  scrollbarThumbColor?: string | boolean;
  /**
   * Color for the Thumb hover color for custom scrollbars
   * @default "#aaaaaa"
   */
  scrollbarThumbHoverColor?: string | boolean;
  /**
   * An array that holds the annotation(s) used to segregate the samples ala Facet way in R. It
   * must be categories in the data.x object
   * @default []
   */
  segregateSamplesBy?: unknown[] | boolean | string | number;
  /**
   * An array that holds the annotation(s) used to segregate the variables ala Facet way in R.
   * It must be categories in the data.z object
   * @default []
   */
  segregateVariablesBy?: unknown[] | boolean | string | number;
  /**
   * Variable / Sample names of data points (in the data object) to initially select
   * @default []
   */
  selectedDataPoints?: unknown[] | boolean | string | number;
  /**
   * Color for the DEPRECATED (use highlightColor): color for selected data points when
   * selectionMode is "highlight"; inherits highlightColor when not set
   * @default false
   */
  selectionColor?: string | boolean;
  /**
   * Metadata (or factor) to use to display selected data points instead of the variable name.
   * This metadata has to be in the data.z object. This property is only valid when the
   * selectionMode is name and the visualization is a Scatter plot
   * @default false
   */
  selectionMetadata?: string | boolean;
  /**
   * Mode used to render selected data points. Shares highlight / ghost / focus with
   * highlightMode and adds two selection-only modes. "highlight" recolors the selection;
   * "ghost" fades the non-selected marks; "focus" recolors the non-selected marks to grey and
   * keeps the selection in color (the storytelling focus technique, identical to highlightMode
   * "focus"); "name" labels the selection; "filter" keeps only the selection
   * @default "highlight"
   */
  selectionMode?: "highlight" | "ghost" | "focus" | "name" | "filter" | false | (string & {});
  /**
   * Color for the adenines and alanines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,103,0)"
   */
  sequenceAColor?: string | boolean;
  /**
   * Alignment (or position) for the sequence
   * @graphTypes Genome
   * @default "center"
   */
  sequenceAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Color for the degenerate C/G/T and asparagines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceBColor?: string | boolean;
  /**
   * Baseline (or reference line) for the sequence
   * @graphTypes Genome
   * @default "middle"
   */
  sequenceBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the cytosines and cysteins in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,255)"
   */
  sequenceCColor?: string | boolean;
  /**
   * Color for the text in sequence
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceColor?: string | boolean;
  /**
   * Color for the degenerate A/G/T and aspartic acids in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceDColor?: string | boolean;
  /**
   * Color for the glutamic acids in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceEColor?: string | boolean;
  /**
   * Color for the end codon in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceEndColor?: string | boolean;
  /**
   * Color for the phenylalanines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,255)"
   */
  sequenceFColor?: string | boolean;
  /**
   * Color for the background when showing sequnces in the box or sequence object in the
   * Genome. The default is to use the background of the object. If specied a valid color then
   * all the background of sequences will be uniform
   * @graphTypes Genome
   * @default false
   */
  sequenceFillColor?: string | boolean;
  /**
   * Font size for the text in sequence. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * sequenceScaleFontFactor
   * @graphTypes Genome
   * @default 10
   */
  sequenceFontSize?: number | boolean;
  /**
   * Font style for the sequence
   * @graphTypes Genome
   * @default ""
   */
  sequenceFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Color for the deletions, insertions and gaps in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,255)"
   */
  sequenceGAPColor?: string | boolean;
  /**
   * Color for the guanines and glycines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceGColor?: string | boolean;
  /**
   * Color for the degenerate A/C/T and histidines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceHColor?: string | boolean;
  /**
   * Color for the isoleucines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,103,0)"
   */
  sequenceIColor?: string | boolean;
  /**
   * Color for the degenerate G/T and lysines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceKColor?: string | boolean;
  /**
   * Color for the leucines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,103,0)"
   */
  sequenceLColor?: string | boolean;
  /**
   * Color for the degenerate A/G and methionines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,103,0)"
   */
  sequenceMColor?: string | boolean;
  /**
   * Margin to pad or separate the characters in the sequence
   * @graphTypes Genome
   * @default 8
   */
  sequenceMargin?: number | boolean;
  /**
   * Color for the degenerate A/C/G/T and asparagines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceNColor?: string | boolean;
  /**
   * Color for the prolines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,165,0)"
   */
  sequencePColor?: string | boolean;
  /**
   * Color for the glutamines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceQColor?: string | boolean;
  /**
   * Color for the degenerate A/G and arginines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceRColor?: string | boolean;
  /**
   * Rotation in degrees for the sequence
   * @graphTypes Genome
   * @default 0
   */
  sequenceRotate?: number | boolean;
  /**
   * Color for the degenerate G/C and serines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,165,0)"
   */
  sequenceSColor?: string | boolean;
  /**
   * Scaling factor used to increase or decrease the sequence font size in the canvas
   * @graphTypes Genome
   * @default 1
   */
  sequenceScaleFontFactor?: number | boolean;
  /**
   * Color for the start codon in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,204,0)"
   */
  sequenceStartColor?: string | boolean;
  /**
   * Color for the thymidines and threonines in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceTColor?: string | boolean;
  /**
   * Color for the uracils in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,0,0)"
   */
  sequenceUColor?: string | boolean;
  /**
   * Color for the degenerate A/C/G and valines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,103,0)"
   */
  sequenceVColor?: string | boolean;
  /**
   * Color for the degenerate A/T and tryptophans in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,255)"
   */
  sequenceWColor?: string | boolean;
  /**
   * Color for the any aminoacid code in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceXColor?: string | boolean;
  /**
   * Color for the degenerate C/T and tyrosines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,255)"
   */
  sequenceYColor?: string | boolean;
  /**
   * Color for the glutamines in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  sequenceZColor?: string | boolean;
  /**
   * Set the maximum value for data in the R axis
   * @graphTypes Circular
   * @default null
   */
  setMaxR?: number | boolean;
  /**
   * Set the maximum value for data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setMaxX?: number | boolean;
  /**
   * Set the maximum value for data in the second X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setMaxX2?: number | boolean;
  /**
   * Set the maximum value for data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  setMaxY?: number | boolean;
  /**
   * Set the maximum value for data in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  setMaxZ?: number | boolean;
  /**
   * Set the minimum value for data in the R axis
   * @graphTypes Circular
   * @default null
   */
  setMinR?: number | boolean;
  /**
   * Set the minimum value for data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setMinX?: number | boolean;
  /**
   * Set the minimum value for data in the second X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setMinX2?: number | boolean;
  /**
   * Set the minimum value for data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  setMinY?: number | boolean;
  /**
   * Set the minimum value for data in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  setMinZ?: number | boolean;
  /**
   * Set the maximum value allowed to pann the data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setPanningMaxX?: number | boolean;
  /**
   * Set the maximum value allowed to pann the data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  setPanningMaxY?: number | boolean;
  /**
   * Set the minimum value allowed to pann the data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  setPanningMinX?: number | boolean;
  /**
   * Set the minimum value allowed to pann the data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  setPanningMinY?: number | boolean;
  /**
   * Set the left dimension of the plotting area to the specified number of pixels, provided
   * the value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotLeft?: number | boolean;
  /**
   * Set the top dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotTop?: number | boolean;
  /**
   * Set the x dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotX?: number | boolean;
  /**
   * Set the y dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotY?: number | boolean;
  /**
   * Amount in blur for the shadow
   * @default 2
   */
  shadowBlur?: number | boolean;
  /**
   * Color for the shadow
   * @default "rgba(0,0,0,0.5)"
   */
  shadowColor?: string | boolean;
  /**
   * Length in pixels for the shadow offset in the X axis
   * @default 1
   */
  shadowOffsetX?: number | boolean;
  /**
   * Length in pixels for the shadow offset in the Y axis
   * @default 1
   */
  shadowOffsetY?: number | boolean;
  /**
   * Name of a variable annotation or a sample name or the string variable to shape the
   * variables. When shapeByData is specified shapeBy is used for the title in the legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeBy?: string | boolean;
  /**
   * Flag to use pie shapes with continuous data as opposed to by binning the data and show
   * regular shapes
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeByContinuous?: boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * shape data points when drawing a multidimensional Heatmap. It must be located within the
   * data.y object (for example: data.y.data2)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeByData?: string | boolean;
  /**
   * String that identify the shape to use in regular and multidimensional heatmaps.
   * shapeByData will take precedence over this property
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeByShape?: string | boolean;
  /**
   * Object to assign custom shapes to sample annotations and variable annotations included in
   * the data object. The key of the object is the name of an annotation in the data.x object
   * or the name of an annotation in the data.z object. A default shape will be assigned to a
   * data point whose value was not included the object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeKey?: Record<string, unknown> | boolean;
  /**
   * Title for the shape legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  shapeLegendTitle?: string | boolean;
  /**
   * Name of the attribute to shape the nods
   * @graphTypes Network
   * @default false
   */
  shapeNodeBy?: string | boolean;
  /**
   * Array with shapes used in visualizations. The order will dictate the utilization in the
   * visualization
   */
  shapes?: unknown[] | boolean | string | number;
  /**
   * Saved named authoring states from the Shelves customizer section (shared save-state store
   * for the Customizer, the data-filter toolbar, and the workflow timeline widget). Each entry
   * is { name, config } where config is a snapshot of the authoring keys (graphType,
   * colorBy/sizeBy/shapeBy/patternBy, segregate/grouping, filterData, calculatedFields,
   * aggregations). Data-filter entries add { smps, vars }; workflow-timeline entries add {
   * workflowStep, workflowTotal } capturing the 0-based timeline position (e.g. step 5 of a
   * 10-step workflow). Saved from the Shelves toolbar / data-filter or workflow disk icon and
   * re-applied from its dropdown; serialized so they persist and reproduce
   * @default []
   */
  shelfStates?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the X,Y,Z grid in 3D plots
   * @graphTypes Bar, Network, Scatter3D
   * @default true
   */
  show3DGrid?: boolean;
  /**
   * Flag to show/hide the animation for the graphs
   * @default true
   */
  showAnimation?: boolean;
  /**
   * Flag to show/hide the boxplots when violin plot are show. It does not affect anything
   * unless violins are shown
   * @graphTypes Boxplot
   * @default false
   */
  showBoxplotIfViolin?: boolean;
  /**
   * Flag to show/hide the observed data point in boxplots. (Should be called
   * showBoxplotDataPoints)
   * @graphTypes Boxplot
   * @default false
   */
  showBoxplotOriginalData?: boolean;
  /**
   * Flag to show/hide the connections in circular graphs
   * @graphTypes Circular
   * @default true
   */
  showCircularConnections?: boolean;
  /**
   * Flag to show/hide the code for the canvas
   * @default false
   */
  showCode?: boolean;
  /**
   * Flag to show/hide the legend edge color
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showColorEdgeLegend?: boolean;
  /**
   * Flag to show/hide the legend label color
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showColorLabelLegend?: boolean;
  /**
   * Flag to show/hide the legend color
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showColorLegend?: boolean;
  /**
   * Flag to show/hide the legend node color
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showColorNodeLegend?: boolean;
  /**
   * Flag to show/hide the confidence intervals in the regression plots
   * @graphTypes Scatter2D
   * @default true
   */
  showConfidenceIntervals?: boolean;
  /**
   * Flag to show/hide the legend connect
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showConnectLegend?: boolean;
  /**
   * Flag to show/hide the contour bands
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default true
   */
  showContourBands?: boolean;
  /**
   * Flag to show/hide the data points in contours
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default false
   */
  showContourDataPoints?: boolean;
  /**
   * Flag to show/hide the levels in contours
   * @graphTypes Pareto, Heatmap, Scatter2D
   * @default false
   */
  showContourLevel?: boolean;
  /**
   * Flag to show/hide the data labels in scatter plots
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  showDataLabels?: boolean;
  /**
   * Flag to show/hide the data values in the bar graphs, stacked graphs, dotplots and line
   * graphs
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  showDataValues?: boolean;
  /**
   * Flag to show/hide the decorations
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default true
   */
  showDecorations?: boolean;
  /**
   * Flag to show/hide the the decoration legends border
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default false
   */
  showDecorationsBorder?: boolean;
  /**
   * Flag to show/hide the decoration legends
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bin … (41 types; see CXGraphTypeKeys)
   * @default true
   */
  showDecorationsLegend?: boolean;
  /**
   * Flag to show/hide the error bars in graphs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  showErrorBars?: boolean;
  /**
   * Threshehold used to set te limit when there are too many features in the genome browser
   * @graphTypes Genome
   * @default 20
   */
  showFeatureNameThereshold?: number | boolean;
  /**
   * Flag to show/hide the filled histogram density
   * @graphTypes Scatter2D
   * @default false
   */
  showFilledHistogramDensity?: boolean;
  /**
   * Flag to show/hide the filled histogram path
   * @graphTypes Scatter2D
   * @default false
   */
  showFilledHistogramPath?: boolean;
  /**
   * Flag to show/hide the heatmap color indicator
   * @graphTypes Heatmap
   * @default true
   */
  showHeatmapIndicator?: boolean;
  /**
   * Flag to show/hide the heatmap along with the oncoprint
   * @graphTypes Heatmap
   * @default false
   */
  showHeatmapOncoprint?: boolean;
  /**
   * Flag or sample annotation to create histogram. If true is specified then the histogram
   * will be done with all data
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogram?: string | boolean;
  /**
   * Flag to hide the histogram bars
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramBars?: boolean;
  /**
   * Flag to show/hide the original data point in histograms
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramDataPoints?: boolean;
  /**
   * Flag to show/hide the density kernel in histograms
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramDensity?: boolean;
  /**
   * Flag to show/hide the histogram median
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramMedian?: boolean;
  /**
   * Flag to show/hide the histograms path
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramPath?: boolean;
  /**
   * Flag to show/hide the quantile 0.25 and 0.75 in density plots
   * @graphTypes Scatter2D
   * @default false
   */
  showHistogramQuantiles?: boolean;
  /**
   * Flag to show/hide the Human Chromosome Ideogram. Force circular plots to be two
   * dimensional
   * @graphTypes Circular, Genome
   * @default false
   */
  showIdeogram?: boolean;
  /**
   * Flag to show/hide the confidence intervals in Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default true
   */
  showKMConfidenceIntervals?: boolean;
  /**
   * Flag to show/hide the median survival time in Kaplan-Meier plots
   * @graphTypes Scatter2D
   * @default false
   */
  showKMMedianSurvivalTime?: boolean;
  /**
   * Flag to show/hide the legend
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showLegend?: boolean;
  /**
   * Flag to show/hide the the legend border
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showLegendBorder?: boolean;
  /**
   * Flag to show/hide the the legend title
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showLegendTitle?: boolean;
  /**
   * Flag to show/hide the legend line
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showLineLegend?: boolean;
  /**
   * Name of a variable annotation, or set to true, to display a loess smoothing curve in
   * Scatter plots
   * @graphTypes Scatter2D
   * @default false
   */
  showLoessFit?: string | boolean;
  /**
   * Flag to show/hide the the overlays name
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showNameOverlays?: boolean;
  /**
   * Flag to show/hide the network communities
   * @graphTypes Network
   * @default false
   */
  showNetworkCommunities?: boolean;
  /**
   * Flag to show/hide the radial layout wire
   * @graphTypes Network
   * @default false
   */
  showNetworkRadialLayout?: boolean;
  /**
   * Thereshold used to set the limit to hide or display the name of nodes in a network based
   * on the size of the node. If the number of node size exceed this thereshold then the name
   * will be shown
   * @graphTypes Network
   * @default 20
   */
  showNodeNameSizeThreshold?: number | boolean;
  /**
   * Thereshold used to set the limit to hide or display the name of nodes in a network. If the
   * number of nodes exceed this thereshold then the name will not be shown
   * @graphTypes Network
   * @default 50
   */
  showNodeNameThreshold?: number | boolean;
  /**
   * Flag to draw the rotate/resize handle boxes around a selected network node. When false
   * (default) a selected node only shows the highlight outline, matching selection in other
   * graphs
   * @graphTypes Network
   * @default false
   */
  showNodeResizeHandles?: boolean;
  /**
   * Flag to show/hide the legend outline
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showOutlineLegend?: boolean;
  /**
   * Flag to show/hide the overlays in one dimensional plots
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showOverlays?: boolean;
  /**
   * Flag to show/hide the legend pattern
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showPatternLegend?: boolean;
  /**
   * Flag to show/hide the legend node pattern
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showPatternNodeLegend?: boolean;
  /**
   * Flag to show/hide the sample label when plotting multiple pies
   * @graphTypes Pie
   * @default true
   */
  showPieSampleLabel?: boolean;
  /**
   * Flag to show/hide the values for the pie
   * @graphTypes Pie
   * @default true
   */
  showPieValues?: boolean;
  /**
   * Flag to show/hide the primary menus in toolbar
   * @default false
   */
  showPrimaryMenus?: boolean;
  /**
   * Flag to show/hide the Quantile Regression fit in Scatter2D plots
   * @graphTypes Scatter2D
   * @default false
   */
  showQuantileRegressionFit?: boolean;
  /**
   * Name of a variable annotation, or set to true, to display a regression fit in Scatter
   * plots
   * @graphTypes Scatter2D
   * @default false
   */
  showRegressionFit?: string | boolean;
  /**
   * Flag to show/hide the Flag to show the regression fit equation
   * @graphTypes Scatter2D
   * @default true
   */
  showRegressionFitEquation?: boolean;
  /**
   * Flag to show/hide the full range in regression plots
   * @graphTypes Scatter2D
   * @default false
   */
  showRegressionFullRange?: boolean;
  /**
   * Flag to show/hide the legend sample. Not implemented!!!!!
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showSampleLegend?: boolean;
  /**
   * Flag to show/hide the sample names
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  showSampleNames?: boolean;
  /**
   * Flag to show/hide the density kernel in histograms
   * @graphTypes Density, Distribution, Histogram, Ridgeline, Violin
   * @default false
   */
  showScatterDensity?: boolean;
  /**
   * Flag to show/hide the observed data points in scatter plots with scatter type line
   * @graphTypes Bin, Binplot, Bump, CDF, Contour, Density … (22 types; see CXGraphTypeKeys)
   * @default false
   */
  showScatterLineOriginalData?: boolean;
  /**
   * Flag to show/hide the labels in the scatter plot matrix
   * @graphTypes Scatter2D
   * @default false
   */
  showScatterPlotMatrixLabels?: boolean;
  /**
   * Flag to show/hide the shadows in all graph objects in the canvas. It will be forced to
   * false if the browser is IE
   * @default false
   */
  showShadow?: boolean;
  /**
   * Flag to show/hide the legend shape
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showShapeLegend?: boolean;
  /**
   * Flag to show/hide the legend node shape
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showShapeNodeLegend?: boolean;
  /**
   * Flag to show/hide the legend edge size
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showSizeEdgeLegend?: boolean;
  /**
   * Flag to show/hide the legend label size
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showSizeLabelLegend?: boolean;
  /**
   * Flag to show/hide the legend size
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showSizeLegend?: boolean;
  /**
   * Flag to show/hide the legend node size
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showSizeNodeLegend?: boolean;
  /**
   * Flag to show/hide the sample (row) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  showSmpDendrogram?: boolean;
  /**
   * Flag to show/hide the sample overlay legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default false
   */
  showSmpOverlaysLegend?: boolean;
  /**
   * Flag to show/hide the shadows in text in the canvas. It will be forced to false if the
   * browser is IE
   * @default false
   */
  showTextShadow?: boolean;
  /**
   * Flag to show/hide the transitions for the graphs
   * @default false
   */
  showTransition?: boolean;
  /**
   * Flag to show/hide the overlay values in one dimensional plots
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showValueOverlays?: boolean;
  /**
   * Flag to show/hide the variable (column) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  showVarDendrogram?: boolean;
  /**
   * Flag to show/hide the sample overlay legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default false
   */
  showVarOverlaysLegend?: boolean;
  /**
   * Flag to show/hide the legend variable
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default true
   */
  showVariableLegend?: boolean;
  /**
   * Flag to show/hide the variable names
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  showVariableNames?: boolean;
  /**
   * Flag to show/hide the version when mouse over top-left corner of the canvas
   * @default true
   */
  showVersion?: boolean;
  /**
   * Flag to show/hide the violin plot in boxplots
   * @graphTypes Boxplot
   * @default false
   */
  showViolinBoxplot?: boolean;
  /**
   * Flag to show/hide the quantile 0.25 and 0.75 in violin plots
   * @graphTypes Boxplot
   * @default false
   */
  showViolinQuantiles?: boolean;
  /**
   * Flag to show/hide the show dot in the middle of the range in manhattan plots
   * @graphTypes Scatter2D
   * @default false
   */
  showmanhattanRangeMiddle?: boolean;
  /**
   * Flag to jitter the data points in dotplots, boxplots and scatter2D plots with sina style
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Bullet … (31 types; see CXGraphTypeKeys)
   * @default false
   */
  sina?: boolean;
  /**
   * Name of a variable annotation or a sample name or the string variable to size the
   * variables. When sizeByData is specified sizeBy is used for the title in the legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeBy?: string | boolean;
  /**
   * Flag to show the size data continuously as opposed to by binning the sizes
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeByContinuous?: boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * size data points when drawing a multidimensional Heatmap. It must be located within the
   * data.y object (for example: data.y.data3)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeByData?: string | boolean;
  /**
   * Name of the attribute to size the edges
   * @graphTypes Network
   * @default false
   */
  sizeEdgeBy?: string | boolean;
  /**
   * Object to assign custom sizes to sample annotations and variable annotations included in
   * the data object. The key of the object is the name of an annotation in the data.x object
   * or the name of an annotation in the data.z object. A default size will be assigned to a
   * data point whose value was not included the object
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeKey?: Record<string, unknown> | boolean;
  /**
   * Name of the variable annotation to size the labels in Scatter2D plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeLabelBy?: string | boolean;
  /**
   * Title for the size legend
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sizeLegendTitle?: string | boolean;
  /**
   * Name of the attribute to size the nodes
   * @graphTypes Network
   * @default false
   */
  sizeNodeBy?: string | boolean;
  /**
   * Size step in pixels for the objects in the visualizations
   * @default 4
   */
  sizeStep?: number | boolean;
  /**
   * Array with sizes used invisualizations. The order will dictate the utilization in the
   * visualization
   * @default [8,12,16,20,24,28,32,36,40,44,48]
   */
  sizes?: unknown[] | boolean | string | number;
  /**
   * Flag to use extend the lines to the end of the terminal nodes when the newick is provided
   * for the sample (row) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  smpDendrogramHang?: boolean;
  /**
   * Custom dendrogram in Newick format created outside CanvasXpress to define and specify the
   * hierarchy for the sample (row) dendrogram.
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  smpDendrogramNewick?: string | boolean;
  /**
   * Position for the sample (row) dendrogram in the plot. It could be top, bottom, right or
   * left depending on the orientation of the graph
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "left"
   */
  smpDendrogramPosition?: "left" | "right" | false | (string & {});
  /**
   * Boolean flag to allow the use of height in the provided Newick string for branch
   * representation in the sample (row) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  smpDendrogramUseHeight?: boolean;
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted samples; inherits
   * highlightColor when not set
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  smpHighlightColor?: string | boolean;
  /**
   * Flag to use best position for sample labels depending on the location of them. It will
   * align them right when placed in the left of the graphs and viceversa
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  smpLabelAutoAlignPosition?: boolean;
  /**
   * Flag to use images as sample labels when possible
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  smpLabelImage?: boolean;
  /**
   * Flag to use round images as sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  smpLabelImageRound?: boolean;
  /**
   * Interval for the sample labels in one dimensional and circular plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  smpLabelInterval?: number | boolean;
  /**
   * Object to assign properties of the sample overlays. The key should be a valid sample
   * annotation (metadata) and the value and object with properties like: type, color,
   * spectrum, scheme, showLegend, showName, showBox, rotate, position, thicknes
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default {}
   */
  smpOverlayProperties?: Record<string, unknown> | boolean;
  /**
   * Sample metadata to overlay in one dimensional plots
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default []
   */
  smpOverlays?: unknown[] | boolean | string | number;
  /**
   * Number of columns for the sample overlay legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  smpOverlaysLegendColumns?: number | boolean;
  /**
   * Alignment (or position) for the sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "right"
   */
  smpTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  smpTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(77,77,77)"
   */
  smpTextColor?: string | boolean;
  /**
   * Font size for the text in sample labels. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the smpTextScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 10
   */
  smpTextFontSize?: number | boolean;
  /**
   * Font style for the sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  smpTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  smpTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the sample labels
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  smpTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the sample labels font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  smpTextScaleFontFactor?: number | boolean;
  /**
   * Title for the sample axis in one dimensional plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  smpTitle?: string | boolean;
  /**
   * Alignment (or position) for the sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  smpTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  smpTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  smpTitleColor?: string | boolean;
  /**
   * Font size for the text in sample title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * smpTitleScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 10
   */
  smpTitleFontSize?: number | boolean;
  /**
   * Font style for the sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  smpTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Position for sample labels
   * @graphTypes Heatmap
   * @default "left"
   */
  smpTitleLabelPosition?: "left" | "right" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  smpTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the sample title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  smpTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the sample title font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  smpTitleScaleFontFactor?: number | boolean;
  /**
   * Flag to use case sensitive in ascii sorting. Almost private parameters used within the
   * different CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sortCaseSensitive?: boolean;
  /**
   * Array of arrays with sorting functions. Each function takes three parameters. The first
   * parameter must be either smp to identify the parameters are related to the samples, var to
   * identify the parameters are related to the variables, or cat to identify a sample or
   * variable category. The second parameter can be either smp to indicate to sort the sample
   * indices or var to indicate to sort the variable indices. The third parameter is the value
   * for the key referenced by the first parameter. A special case for this parameter could be
   * samples or variables to indicate to sort by the names of the samples or variables
   * respectively. Here are some examples to sort the samples in the data: [ [cat, smp,
   * Factor1] ] : Sort the samples by the sample category Factor1 [ [var, smp, Variable1] ] :
   * Sort the samples by the value of the Variable1 [ [cat, smp, samples] ] : Sort the samples
   * by their name. Important!!!! This parameter will clean the data and remove any variables
   * not used in the dataset at load time
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  sortData?: unknown[] | boolean | string | number;
  /**
   * Default direction for data sorting. Almost private parameters used within the different
   * CanvasXpress UIs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "ascending"
   */
  sortDir?: "ascending" | "descending" | false | (string & {});
  /**
   * Flag to include empty groups when sorting
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  sortIncludeEmpty?: boolean;
  /**
   * Sort the name of the groups after sample grouping.
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  sortOnGrouping?: string | boolean;
  /**
   * Factor (in the x data object) used to split the samples ala split in a complex heatmap.
   * Unlike segregateSamplesBy, the split keeps a single full-width plot and only inserts a
   * thin gap (splitSeparation) at each group boundary
   * @default false
   */
  splitSamplesBy?: string | boolean;
  /**
   * Size in pixels of the gap inserted at each split boundary when splitSamplesBy or
   * splitVariablesBy is used
   * @default 5
   */
  splitSeparation?: number | boolean;
  /**
   * Factor (in the z data object) used to split the variables ala split in a complex heatmap.
   * Unlike segregateVariablesBy, the split keeps a single full-width plot and only inserts a
   * thin gap (splitSeparation) at each group boundary
   * @default false
   */
  splitVariablesBy?: string | boolean;
  /**
   * Name of a sample annotation to stack the samples of each variable in Bar graphs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  stackBy?: string | boolean;
  /**
   * Type of Standard Deviation. biased uses n as denominator and unbiased uses (n - 1) as
   * denominator where n is the number of values
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "unbiased"
   */
  standardDeviationType?: "biased" | "unbiased" | false | (string & {});
  /**
   * Starting degrees for pie sectors. 0 is equivalent to 3:00 oclock
   * @graphTypes Pie
   * @default 270
   */
  startPieSectors?: number | boolean;
  /**
   * Array containing edge attributes. The numeric edge attributes will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for edges at
   * load time
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  stringEdgeAttributes?: unknown[] | boolean | string | number;
  /**
   * Array containing node attributes. The numeric node attributes will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for nodes at
   * load time
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  stringNodeAttributes?: unknown[] | boolean | string | number;
  /**
   * Array containing sample factors. The numeric sample factors will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for samples at
   * load time. It can be used in conjunction with the parameter asSampleFactors. TO DO: write
   * example
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  stringSampleFactors?: unknown[] | boolean | string | number;
  /**
   * Array containing variable factors. The numeric variable factors will be treated as
   * strings. This parameter accomplishes the same as the function switchNumericToString for
   * variables at load time. It can be used in conjunction with the parameter
   * asVariableFactors. TO DO: write example
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  stringVariableFactors?: unknown[] | boolean | string | number;
  /**
   * Color for the border in layout label strip background
   * @default "rgba(0,0,0,0)"
   */
  stripBackgroundBorderColor?: string | boolean;
  /**
   * Type of line for the border in layout label strip background
   * @default "solid"
   */
  stripBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Size for the border line in layout label strip background
   * @default 1
   */
  stripBackgroundBorderSize?: number | boolean;
  /**
   * Color for the layout label strip background
   * @default "rgba(255,255,255,0)"
   */
  stripBackgroundColor?: string | boolean;
  /**
   * Flag to show/hide the the layout label strip
   * @default true
   */
  stripShow?: boolean;
  /**
   * Alignment (or position) for the label strip text in layout graphs
   * @default "center"
   */
  stripTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the label strip text in layout graphs
   * @default "middle"
   */
  stripTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in label strip text in layout graphs
   * @default "rgb(0,0,0)"
   */
  stripTextColor?: string | boolean;
  /**
   * Font size for the text in label strip text in layout graphs. Be aware that auto scaling
   * font must be turned off for this property to take effect. A more convenient way to modify
   * the size is to use the stripTextScaleFontFactor
   * @default 10
   */
  stripTextFontSize?: number | boolean;
  /**
   * Font style for the label strip text in layout graphs
   * @default ""
   */
  stripTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Lines for the layout label strip
   * @default 1
   */
  stripTextLines?: number | boolean;
  /**
   * Margin to pad or separate the characters in the label strip text in layout graphs
   * @default 5
   */
  stripTextMargin?: number | boolean;
  /**
   * Maximum length for the layout label strip. If longer, text will be ellipsed
   * @default 100
   */
  stripTextMaxLength?: number | boolean;
  /**
   * Rotation in degrees for the label strip text in layout graphs
   * @default 0
   */
  stripTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the label strip text in layout graphs font
   * size in the canvas
   * @default 1
   */
  stripTextScaleFontFactor?: number | boolean;
  /**
   * Thickness of the layout label strip
   * @default 30
   */
  stripThickness?: number | boolean;
  /**
   * Subtitle of the graph
   * @default false
   */
  subtitle?: string | boolean;
  /**
   * Alignment (or position) for the subtitle
   * @default "center"
   */
  subtitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the subtitle
   * @default "middle"
   */
  subtitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in subtitle
   * @default "rgb(0,0,0)"
   */
  subtitleColor?: string | boolean;
  /**
   * Font size for the text in subtitle. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * subtitleScaleFontFactor
   * @default 11
   */
  subtitleFontSize?: number | boolean;
  /**
   * Font style for the subtitle
   * @default ""
   */
  subtitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the subtitle
   * @default 5
   */
  subtitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the subtitle
   * @default 0
   */
  subtitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the subtitle font size in the canvas
   * @default 1
   */
  subtitleScaleFontFactor?: number | boolean;
  /**
   * Maximum number of subtracks to show in a track
   * @graphTypes Genome
   * @default 8
   */
  subtracksMaxDefault?: number | boolean;
  /**
   * Summary type for the data when grouping
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  summaryType?: string | boolean;
  /**
   * Variable to use in Swimmer Plot. Defaults to the third variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @graphTypes Bar
   * @default false
   */
  swimEnd?: string | boolean;
  /**
   * Variable to use in Swimmer plot. Defaults to the first variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @graphTypes Bar
   * @default false
   */
  swimHigh?: string | boolean;
  /**
   * Name of sample annotation to use in Swimmer Plot. Defaults to High Cap. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @graphTypes Bar
   * @default false
   */
  swimHighCap?: string | boolean;
  /**
   * Variable to use in Swimmer Plot. Defaults to the second variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @graphTypes Bar
   * @default false
   */
  swimStart?: string | boolean;
  /**
   * Name of sample annotation to use in Swimmer Plot. Defaults to Status. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @graphTypes Bar
   * @default false
   */
  swimStatus?: string | boolean;
  /**
   * Shape for the tag cloud
   * @graphTypes TagCloud
   * @default false
   */
  tagCloudShape?: string | boolean;
  /**
   * Ellipticity for the for text in tag cloud visualizations
   * @graphTypes TagCloud
   * @default 0.65
   */
  tagCloudTextEllipticity?: number | boolean;
  /**
   * Size for the grid in text tag cloud visualizations
   * @graphTypes TagCloud
   * @default 8
   */
  tagCloudTextGridSize?: number | boolean;
  /**
   * Ratio for rotation of text in cloud visualizations
   * @graphTypes TagCloud
   * @default 0.1
   */
  tagCloudTextRotateRatio?: number | boolean;
  /**
   * Factor weight for text in tag cloud visualizations
   * @graphTypes TagCloud
   * @default 1
   */
  tagCloudTextWeightFactor?: number | boolean;
  /**
   * Tags
   * @default []
   */
  tags?: unknown[] | boolean | string | number;
  /**
   * Curvature for the splines and hulls
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default 0.3
   */
  tension?: number | boolean;
  /**
   * Number of segments to smooth a quadratic curve
   * @graphTypes Area, AreaLine, BarLine, DotLine, Line, ParallelCoordinates … (9 types; see CXGraphTypeKeys)
   * @default 16
   */
  tensionSegments?: number | boolean;
  /**
   * The style for the plot or theme will control all the non-data elements of the plot
   * including titles, legends, axes, panel and plot background colors and other stylistic
   * elements
   * @default "none"
   */
  theme?: string | boolean;
  /**
   * Time Format according to date.format.js Steven Levithan <stevenlevithan.com>
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "isoDate"
   */
  timeFormat?: "default" | "shortDate" | "mediumDate" | "longDate" | "fullDate" | "shortTime" | "mediumTime" | "longTime" | "isoDate" | "isoTime" | "isoDateTime" | "isoUtcDateTime" | "year" | "month" | "day" | "hour" | "minute" | "second" | false | (string & {});
  /**
   * Title of the graph
   * @default false
   */
  title?: string | boolean;
  /**
   * Alignment (or position) for the title
   * @default "center"
   */
  titleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the title
   * @default "middle"
   */
  titleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in title
   * @default "rgb(0,0,0)"
   */
  titleColor?: string | boolean;
  /**
   * Font size for the text in title. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * titleScaleFontFactor
   * @default 12
   */
  titleFontSize?: number | boolean;
  /**
   * Font style for the title
   * @default "bold"
   */
  titleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the title
   * @default 5
   */
  titleMargin?: number | boolean;
  /**
   * Rotation in degrees for the title
   * @default 0
   */
  titleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the title font size in the canvas
   * @default 1
   */
  titleScaleFontFactor?: number | boolean;
  /**
   * Color for the toggle switch in the data filters
   * @default "rgb(8, 122, 209)"
   */
  toggleSwitchBackgroundColor?: string | boolean;
  /**
   * Array containing the items in the left toolbar for language code. Options are: JSON, R,
   * Python, Jupyter, Streamlit, Shiny, JSFiddle, CodePen. Leave empty to disable
   * @default []
   */
  toolbarCodes?: unknown[] | boolean | string | number;
  /**
   * Array containing the items in the right toolbar for font families. Some examples are:
   * American Typewriter, Andale Mono, Arial, Bradley Hand, Comic Sans MS, Courier, Monaco,
   * Optima, Times New Roman, Trebuchet MS. Leave empty to disable
   * @default []
   */
  toolbarFonts?: unknown[] | boolean | string | number;
  /**
   * Array containing the items in the top toolbar. All items included by default
   * @default ["Save","Chat","History","Table","Tabs","Explore","Lasso","Customize","Password","Maximize"]
   */
  toolbarItems?: unknown[] | boolean | string | number;
  /**
   * Array containing the items in the bottom toolbar for color schemes. Some examples are:
   * Economist, GGPlot, Excel, PaulTol, BlackAndWhite, Solarized, Stata, Tableau, GGBlanket,
   * CanvasXpress. Leave empty to disable
   * @default []
   */
  toolbarSchemes?: unknown[] | boolean | string | number;
  /**
   * Height for the toolbar in graphs
   * @default 36
   */
  toolbarSize?: number | boolean;
  /**
   * Toolbar type
   * @default "under"
   */
  toolbarType?: "over" | "under" | "fixed" | false | (string & {});
  /**
   * Color for the Background color for the tooltip if specified
   * @default false
   */
  tooltipBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for the tooltip if specifies
   * @default false
   */
  tooltipBorderColor?: string | boolean;
  /**
   * Color for the Color for the tooltip text if specified
   * @default false
   */
  tooltipFontColor?: string | boolean;
  /**
   * Transparency for the tooltip
   * @default null
   */
  tooltipTransparency?: number | boolean;
  /**
   * Text to include at the top of the graph in the top margin
   * @default false
   */
  topMarginalText?: string | boolean;
  /**
   * Alignment (or position) for the top marginal text
   * @default "left"
   */
  topMarginalTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the top marginal text
   * @default "top"
   */
  topMarginalTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in top marginal text
   * @default "rgb(0,0,0)"
   */
  topMarginalTextColor?: string | boolean;
  /**
   * Font size for the text in top marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the topMarginalTextScaleFontFactor
   * @default 12
   */
  topMarginalTextFontSize?: number | boolean;
  /**
   * Font style for the top marginal text
   * @default ""
   */
  topMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the top marginal text
   * @default 5
   */
  topMarginalTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the top marginal text
   * @default 0
   */
  topMarginalTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the top marginal text font size in the canvas
   * @default 1
   */
  topMarginalTextScaleFontFactor?: number | boolean;
  /**
   * TopoJSON map string
   * @graphTypes Map
   * @default false
   */
  topoJSON?: string | boolean;
  /**
   * Color for the strand direction of the tracks in the genome browser
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  trackDirColor?: string | boolean;
  /**
   * Color for the fill of the tracks in the genome browser
   * @graphTypes Genome
   * @default "rgb(255,255,255)"
   */
  trackFillColor?: string | boolean;
  /**
   * Alignment (or position) for the track name
   * @graphTypes Genome
   * @default "center"
   */
  trackNameAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the track name
   * @graphTypes Genome
   * @default "middle"
   */
  trackNameBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in track name
   * @graphTypes Genome
   * @default "rgb(0,0,0)"
   */
  trackNameColor?: string | boolean;
  /**
   * Font size for the text in track name. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * trackNameScaleFontFactor
   * @graphTypes Genome
   * @default 10
   */
  trackNameFontSize?: number | boolean;
  /**
   * Font style for the track name
   * @graphTypes Genome
   * @default ""
   */
  trackNameFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the track name
   * @graphTypes Genome
   * @default 8
   */
  trackNameMargin?: number | boolean;
  /**
   * Rotation in degrees for the track name
   * @graphTypes Genome
   * @default 0
   */
  trackNameRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the track name font size in the canvas
   * @graphTypes Genome
   * @default 1
   */
  trackNameScaleFontFactor?: number | boolean;
  /**
   * Default axis to use to transform the data when either z-score or ratio transformation is
   * used
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "samples"
   */
  transformAxis?: "samples" | "variables" | false | (string & {});
  /**
   * Default transformation type for ALL the data. Data can also be transformed by axis (x,y,z)
   * to give more flexibility. false, save, reset and undo are NOT real transformations. They
   * are only used in the canvasXpress UIs to save the transformed data
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  transformData?: string | boolean;
  /**
   * Easing function for the transition
   * @default "easeInOutQuad"
   */
  transitionFunction?: "linear" | "easeInQuad" | "easeOutQuad" | "easeInOutQuad" | "easeInCubic" | "easeOutCubic" | "easeInOutCubic" | "easeInQuart" | "easeOutQuart" | "easeInOutQuart" | "easeInQuint" | "easeOutQuint" | "easeInOutQuint" | false | (string & {});
  /**
   * String to be interpreted in the CSS transitions
   * @default "0.3s"
   */
  transitionSpeed?: string | boolean;
  /**
   * Steps for transitionioning data objects
   * @default 10
   */
  transitionStaggering?: number | boolean;
  /**
   * Steps for transition
   * @default 30
   */
  transitionStep?: number | boolean;
  /**
   * How showTransition animates a re-render: "morph" (default) interpolates each mark from its
   * old to its new position; "crossfade" dissolves the whole previous frame into the new one
   * (a raster blend) — smoother for composite graphs whose marks change shape/count between
   * renders
   * @default "morph"
   */
  transitionType?: "morph" | "crossfade" | false | (string & {});
  /**
   * Unit interval or fraction of transparency applied to all elements in the visualizations
   * @default null
   */
  transparency?: number | boolean;
  /**
   * Unit interval or fraction of transparency applied to elements that are hidden
   * @default 0.1
   */
  transparencyHidden?: number | boolean;
  /**
   * Flag to transpose data as a parameter. This parameter accomplishes the same as the
   * function transpose at load time
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  transposeData?: boolean;
  /**
   * Proportion of the tree bracket to use
   * @graphTypes Tree
   * @default 0.5
   */
  treeBracketFactor?: number | boolean;
  /**
   * Factor to extend the length of the tree node
   * @graphTypes Tree
   * @default 4
   */
  treeBracketLengthFactor?: number | boolean;
  /**
   * Flag to disable clicking in tree plots
   * @graphTypes Tree
   * @default false
   */
  treeClickDisable?: boolean;
  /**
   * Flag to plot the tree inverted
   * @graphTypes Tree
   * @default false
   */
  treeInverted?: boolean;
  /**
   * Alignment for labels the tree diagrams
   * @graphTypes Tree
   * @default "center"
   */
  treeLabelAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Color for the tree lines (links)
   * @graphTypes Tree
   * @default "rgba(204,204,204,0.66)"
   */
  treeLinkColor?: string | boolean;
  /**
   * Width for the Tree lines
   * @graphTypes Tree
   * @default 1
   */
  treeLinkWidth?: number | boolean;
  /**
   * Color for the tree node outline
   * @graphTypes Tree
   * @default "#0ab0db"
   */
  treeNodeOutlineColor?: string | boolean;
  /**
   * Scale factor to adjust the size of tree nodes
   * @graphTypes Tree
   * @default 1
   */
  treeNodeSizeScaleFactor?: number | boolean;
  /**
   * Type of tree layout
   * @graphTypes Tree
   * @default "normal"
   */
  treeType?: "bracket" | "circular" | "normal" | false | (string & {});
  /**
   * Color for the treemap header and border
   * @graphTypes Treemap
   * @default "rgba(204,204,204,0.33)"
   */
  treemapBorderColor?: string | boolean;
  /**
   * Width for the treemap border
   * @graphTypes Treemap
   * @default 3
   */
  treemapBorderWidth?: number | boolean;
  /**
   * Array of sample annotations to treemap the variables. The array may also include sample to
   * use as last level
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  treemapBy?: unknown[] | boolean | string | number;
  /**
   * Array containing the names of the sets to include
   * @graphTypes Heatmap
   * @default []
   */
  upSetSets?: unknown[] | boolean | string | number;
  /**
   * Adjust width of lines in matrix plot
   * @graphTypes Heatmap
   * @default 1
   */
  upsetLineSizeFactor?: number | boolean;
  /**
   * Color for the the main bar plot
   * @graphTypes Heatmap
   * @default "rgb(59,59,59)"
   */
  upsetMainBarColor?: string | boolean;
  /**
   * Color for the the intersection points
   * @graphTypes Heatmap
   * @default "rgb(59,59,59)"
   */
  upsetMatrixColor?: string | boolean;
  /**
   * Transparency of the empty intersections points in the matrix
   * @graphTypes Heatmap
   * @default 0.2
   */
  upsetMatrixDotAlpha?: number | boolean;
  /**
   * Ratio between matrix plot and main bar plot
   * @graphTypes Heatmap
   * @default 0.7
   */
  upsetMatrixPlotBarRatio?: number | boolean;
  /**
   * Adjust the size of points in matrix plot
   * @graphTypes Heatmap
   * @default 1
   */
  upsetPointSizeFactor?: number | boolean;
  /**
   * Color for the set bar plot
   * @graphTypes Heatmap
   * @default "rgb(59,59,59)"
   */
  upsetSetsBarColor?: string | boolean;
  /**
   * Transparency of shading in matrix
   * @graphTypes Heatmap
   * @default 0.1
   */
  upsetShadeAlpha?: number | boolean;
  /**
   * Color for the row shading in matrix
   * @graphTypes Heatmap
   * @default "rgb(159,159,159)"
   */
  upsetShadeColor?: string | boolean;
  /**
   * Flag to use Barnes-Hut simulation
   * @graphTypes Network
   * @default false
   */
  useBarnesHutSimulation?: boolean;
  /**
   * Flag to use leaflet
   * @graphTypes Map
   * @default false
   */
  useLeaflet?: boolean;
  /**
   * Flag to use round rectangles in bar graphs, stacked graphs and boxplots
   * @default false
   */
  useRoundRectangles?: boolean;
  /**
   * Flag to use extend the lines to the end of the terminal nodes when the newick is provided
   * for the variable (column) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  varDendrogramHang?: boolean;
  /**
   * Custom dendrogram in Newick format created outside CanvasXpress to define and specify the
   * hierarchy for the variable (column) dendrogram.
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  varDendrogramNewick?: string | boolean;
  /**
   * Position for the variable (column) dendrogram in the plot. It could be top, bottom, right
   * or left depending on the orientation of the graph
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default "top"
   */
  varDendrogramPosition?: "top" | "bottom" | false | (string & {});
  /**
   * Boolean flag to allow the use of height in the provided Newick string for branch
   * representation in the variable (column) dendrogram
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  varDendrogramUseHeight?: boolean;
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted variables; inherits
   * highlightColor when not set
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  varHighlightColor?: string | boolean;
  /**
   * Interval for the variable labels in heatmaps
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  varLabelInterval?: number | boolean;
  /**
   * Object to assign properties of the variable overlays. The key should be a valid variable
   * annotation (metadata) and the value and object with properties like: type, color,
   * spectrum, scheme, showLegend, showName, showBox, rotate, position, thicknes
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default {}
   */
  varOverlayProperties?: Record<string, unknown> | boolean;
  /**
   * Variable metadata to overlay in heatmap plots
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default []
   */
  varOverlays?: unknown[] | boolean | string | number;
  /**
   * Number of columns for the variable overlay legends
   * @graphTypes Bar, BarLine, Boxplot, Bullet, Cleveland, DotLine … (19 types; see CXGraphTypeKeys)
   * @default 1
   */
  varOverlaysLegendColumns?: number | boolean;
  /**
   * Alignment (or position) for the variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  varTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  varTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(77,77,77)"
   */
  varTextColor?: string | boolean;
  /**
   * Font size for the text in variable text. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the varTextScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 10
   */
  varTextFontSize?: number | boolean;
  /**
   * Font style for the variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  varTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  varTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the variable text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  varTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the variable text font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  varTextScaleFontFactor?: number | boolean;
  /**
   * Title for the variables in hetamap plots
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  varTitle?: string | boolean;
  /**
   * Alignment (or position) for the variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  varTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  varTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  varTitleColor?: string | boolean;
  /**
   * Font size for the text in variable title. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the varTitleScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 10
   */
  varTitleFontSize?: number | boolean;
  /**
   * Font style for the variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  varTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Position for variable labels
   * @graphTypes Heatmap
   * @default "bottom"
   */
  varTitleLabelPosition?: "bottom" | "top" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  varTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the variable title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  varTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the variable title font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  varTitleScaleFontFactor?: number | boolean;
  /**
   * Pixels between the data series in one-dimensional plots
   * @default 2
   */
  variableSpace?: number | boolean;
  /**
   * Flag to cluster variables
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  variablesClustered?: boolean;
  /**
   * Flag to k-mean variables
   * @graphTypes Area, AreaLine, Bar, BarLine, Boxplot, Circular … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  variablesKmeaned?: boolean;
  /**
   * Colors for the Venn bubles. If not specified the colors will be chosen from the colors
   * array. Colors in this array need to be at least the same number of groups in the Venn
   * diagram
   * @graphTypes Venn
   * @default []
   */
  vennColors?: unknown[] | boolean | string | number;
  /**
   * Number of groups in the Venn diagram
   * @graphTypes Venn
   * @default 4
   */
  vennGroups?: number | boolean;
  /**
   * Flag to use the venn colors to use for the legends instead of the letters
   * @graphTypes Venn
   * @default false
   */
  vennLegendColors?: boolean;
  /**
   * Flag to turn on/off verbose
   * @default false
   */
  verbose?: boolean;
  /**
   * Specify the initial view or display for the visualization
   * @default "canvas"
   */
  view?: "canvas" | "table" | "layout" | "explore" | false | (string & {});
  /**
   * Color for the violin borders
   * @graphTypes Boxplot
   * @default "rgb(0,0,0)"
   */
  violinBorderColor?: string | boolean;
  /**
   * Color for the violins. If specified all the violins will have the assigned color;
   * otherwise it will be automatically assigned
   * @graphTypes Boxplot
   * @default false
   */
  violinColor?: string | boolean;
  /**
   * Order of the shown elements (violin, boxplot, points) across the band when a half violin
   * is drawn. An array is a global order of the shown elements (e.g.
   * ["violin","boxplot","points"]); an object keyed by variable name or sample-group name
   * gives per-variable / per-sample orders. Empty means natural order
   * @graphTypes Boxplot
   * @default false
   */
  violinPartitionOrder?: Record<string, unknown> | unknown[] | boolean | string | number;
  /**
   * Side the original data points (showBoxplotOriginalData) sit on for half violins. false
   * (default) places them on the opposite half from the violin; lt/rb pin them to an end;
   * center draws them on the centre line (the shared split line for split violins, pooling
   * both levels into one central cloud). May be given as a single value or as an object keyed
   * by variable name or sample-group name for per-variable / per-sample control
   * @graphTypes Boxplot
   * @default false
   */
  violinPointsSide?: "lt" | "rb" | "center" | false | (string & {});
  /**
   * Type for scaling violin plots
   * @graphTypes Boxplot
   * @default "width"
   */
  violinScale?: "area" | "count" | "width" | false | (string & {});
  /**
   * Which half of the band a violin occupies: both (full symmetric violin, default), lt (left
   * when vertical / top when horizontal), rb (right / bottom), or split (auto-assign the two
   * halves from a 2-level color/segregate group, seaborn split=True). May be given as a single
   * value (applies to all groups) or as an object keyed by variable name or sample-group name
   * for per-variable / per-sample sides, e.g. {"Before":"lt","After":"rb"}
   * @graphTypes Boxplot
   * @default "both"
   */
  violinSide?: "both" | "lt" | "rb" | "split" | false | (string & {});
  /**
   * Fraction to adjust color transparency for the violins
   * @graphTypes Boxplot
   * @default 0.4
   */
  violinTransparency?: number | boolean;
  /**
   * Flag to trim violin plots
   * @graphTypes Boxplot
   * @default true
   */
  violinTrim?: boolean;
  /**
   * Visible Map features. It Overrides the hidden features
   * @graphTypes Map
   * @default []
   */
  visibleMapFeatures?: unknown[] | boolean | string | number;
  /**
   * Flag to fix aspect ratio for visium plots
   * @graphTypes Scatter2D
   * @default true
   */
  visiumFixedAspectRatio?: boolean;
  /**
   * Flag to invert the data in visium plots.
   * @graphTypes Scatter2D
   * @default false
   */
  visiumFlip?: boolean;
  /**
   * Flag to disallow panning in visium plots. Dragging will always zoom
   * @graphTypes Scatter2D
   * @default false
   */
  visiumPanning?: boolean;
  /**
   * Color for the bars decreasing in the waterfall plot
   * @graphTypes Bar
   * @default "rgb(254, 105, 105)"
   */
  waterfallDecreaseColor?: string | boolean;
  /**
   * Color for the bars increasing in the waterfall plot
   * @graphTypes Bar
   * @default "rgb(10,176,219)"
   */
  waterfallIncreaseColor?: string | boolean;
  /**
   * Color for the bars in end of the waterfall plot
   * @graphTypes Bar
   * @default "rgb(153,153,153)"
   */
  waterfallNetColor?: string | boolean;
  /**
   * Color for the accent elements in all the UI widgets. It only applied if the dataUIStyle is
   * set to false
   * @default "rgba(83, 105, 255, 0.1)"
   */
  widgetsAccentColor?: string | boolean;
  /**
   * Color for the background all the UI widgets. It only applied if the dataUIStyle is set to
   * false
   * @default "rgba(255, 255, 255, 0.95)"
   */
  widgetsBackgroundColor?: string | boolean;
  /**
   * Color for the elements in all the UI widgets. It only applied if the dataUIStyle is set to
   * false
   * @default "rgb(83, 105, 255)"
   */
  widgetsBaseColor?: string | boolean;
  /**
   * Color for the border of all elements in all the UI widgets. It only applied if the
   * dataUIStyle is set to false
   * @default "rgb(83, 105, 255)"
   */
  widgetsBorderColor?: string | boolean;
  /**
   * Border radius applied to all UI widget elements
   * @default "5px"
   */
  widgetsBorderRadius?: string | boolean;
  /**
   * Color for the contrast elements in all the UI widgets. It only applied if the dataUIStyle
   * is set to false
   * @default "rgb(83, 105, 255)"
   */
  widgetsContrastColor?: string | boolean;
  /**
   * Color for the the elements in all the UI widgets. It only applied if the dataUIStyle is
   * set to false
   * @default "rgb(34, 34, 34)"
   */
  widgetsFontColor?: string | boolean;
  /**
   * Base font size for all UI widgets
   * @default "15px"
   */
  widgetsFontSize?: string | boolean;
  /**
   * Transparency for the elements in all the UI widgets when mouse overs. It only applied if
   * the dataUIStyle is set to false
   * @default 0.2
   */
  widgetsHoverTransparency?: number | boolean;
  /**
   * Color for the class-a widget icons
   * @default "#5369ff"
   */
  widgetsIconClsAColor?: string | boolean;
  /**
   * Color for the class-b widget icons
   * @default "#292929"
   */
  widgetsIconClsBColor?: string | boolean;
  /**
   * Color for the class-c widget icons
   * @default "#999999"
   */
  widgetsIconClsCColor?: string | boolean;
  /**
   * Color for the class-x widget icons
   * @default "#ffffff"
   */
  widgetsIconClsXColor?: string | boolean;
  /**
   * Color for the stripe elements in the data table
   * @default "rgba(83, 105, 255, 0.05)"
   */
  widgetsStripedColor?: string | boolean;
  /**
   * Factor to adjust the width of the graph elements in one-dimensional and three-dimensional
   * plots. The greater the number, the wider the elements
   * @default 1
   */
  widthFactor?: number | boolean;
  /**
   * Color for the ticks in the genome browser
   * @graphTypes Genome
   * @default "rgba(204,204,204,0.1)"
   */
  wireColor?: string | boolean;
  /**
   * Color for the Active element color for the workflow widget
   * @default "rgba(124, 182, 226, 0.2)"
   */
  workflowActiveColor?: string | boolean;
  /**
   * Color for the Background color for the workflow widget
   * @default "#ffffff"
   */
  workflowBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowBorderColor?: string | boolean;
  /**
   * Color for the Background color for buttons in the workflow widget
   * @default "#ffffff"
   */
  workflowButtonBackgroundColor?: string | boolean;
  /**
   * Color for the Border color for buttons in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowButtonBorderColor?: string | boolean;
  /**
   * Name of a variable annotation whose levels become the keyframes of an animation played
   * through a timeline widget (play/stop and a draggable scrubber). Each level filters the
   * data to that frame and the graph tweens between frames via showTransition. Supported in
   * Scatter, Bar, Map, Fish and line-based graphs
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  workflowBy?: string | boolean;
  /**
   * Alignment (or position) for the workflow charts
   * @default "center"
   */
  workflowCurrentAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the workflow charts
   * @default "middle"
   */
  workflowCurrentBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in workflow charts
   * @default "rgb(0,0,0,0.3)"
   */
  workflowCurrentColor?: string | boolean;
  /**
   * Font size for the text in workflow charts. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the workflowCurrentScaleFontFactor
   * @default 60
   */
  workflowCurrentFontSize?: number | boolean;
  /**
   * Font style for the workflow charts
   * @default ""
   */
  workflowCurrentFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the workflow charts
   * @default 5
   */
  workflowCurrentMargin?: number | boolean;
  /**
   * Rotation in degrees for the workflow charts
   * @default 0
   */
  workflowCurrentRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the workflow charts font size in the canvas
   * @default 1
   */
  workflowCurrentScaleFontFactor?: number | boolean;
  /**
   * Duration in milliseconds each frame of a workflowBy animation is held before advancing to
   * the next frame. A value of 0 inherits the reproduceTime duration
   * @default 0
   */
  workflowFrameDuration?: number | boolean;
  /**
   * Color for the Hover highlight color for the workflow widget
   * @default "rgba(124, 182, 226, 0.2)"
   */
  workflowHoverColor?: string | boolean;
  /**
   * Font size for list labels in the workflow widget
   * @default "10px"
   */
  workflowListLabelFontSize?: string | boolean;
  /**
   * Color for the Text color for lists in the workflow widget
   * @default "#555b62"
   */
  workflowListTextColor?: string | boolean;
  /**
   * Color for the Tick color for lists in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowListTickColor?: string | boolean;
  /**
   * Font size for list tick marks in the workflow widget
   * @default "6px"
   */
  workflowListTickFontSize?: string | boolean;
  /**
   * Flag to continuously loop a workflowBy animation. When the timeline reaches the last frame
   * it restarts from the first frame instead of stopping
   * @default false
   */
  workflowLoop?: boolean;
  /**
   * Color for the Fill color for sliders in the workflow widget
   * @default "rgb(8, 122, 209)"
   */
  workflowSliderFillColor?: string | boolean;
  /**
   * Color for the Border color for slider thumbs in the workflow widget
   * @default "#ffffff"
   */
  workflowSliderThumbBorderColor?: string | boolean;
  /**
   * Color for the Thumb color for sliders in the workflow widget
   * @default "rgb(8, 122, 209)"
   */
  workflowSliderThumbColor?: string | boolean;
  /**
   * Color for the Track color for sliders in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowSliderTrackColor?: string | boolean;
  /**
   * Color for the Text color for the workflow widget
   * @default "#555b62"
   */
  workflowTextColor?: string | boolean;
  /**
   * Color for the Border color for the timeline in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowTimelineBorderColor?: string | boolean;
  /**
   * Size in pixels for the workflow widget when used to reproduce user customizations
   * @default 300
   */
  workflowWidth?: number | boolean;
  /**
   * Value between 0 - 1 for adjusting the 3D of the X Axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 1
   */
  x3DRatio?: number | boolean;
  /**
   * Name of the samples, groups or variables to be displayed in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  xAxis?: unknown[] | boolean | string | number;
  /**
   * Name of the samples, groups or variables to be displayed in the second X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  xAxis2?: unknown[] | boolean | string | number;
  /**
   * Flag to rotate 180 degrees the direction of the X axis on the top
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxis2Rotate?: boolean;
  /**
   * Flag to show/hide the X axis on the top
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxis2Show?: boolean;
  /**
   * X axis format for the tick values in the second X axis. It could be a string with the
   * sprintf format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxis2TickFormat?: string | unknown[] | boolean | number;
  /**
   * Approx number of tick lines in the second X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  xAxis2Ticks?: number | boolean;
  /**
   * X axis2 title on the top
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxis2Title?: string | boolean;
  /**
   * Value to ceil the data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  xAxisCeilValue?: number | boolean;
  /**
   * Sample id that is currently displayed in the X axis. Important when there are more that
   * one series displayed in the graph
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  xAxisCurrent?: number | boolean;
  /**
   * Flag to force exact values in X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisExact?: boolean;
  /**
   * Value to factor the data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  xAxisFactorValue?: number | boolean;
  /**
   * Value to floor the data in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  xAxisFloorValue?: number | boolean;
  /**
   * Color for the major grid lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  xAxisGridMajorColor?: string | boolean;
  /**
   * Type of line for the major grid lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the major grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  xAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisGridMajorTransparency?: number | boolean;
  /**
   * Width for the major grid lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisGridMajorWidth?: number | boolean;
  /**
   * Color for the minor grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  xAxisGridMinorColor?: string | boolean;
  /**
   * Type of line for the minor grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  xAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisGridMinorTransparency?: number | boolean;
  /**
   * Width for the minor grid lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  xAxisGridMinorWidth?: number | boolean;
  /**
   * Size in pixels for the histogram in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 80
   */
  xAxisHistogramHeight?: number | boolean;
  /**
   * Flag to show/hide the histogram in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisHistogramShow?: boolean;
  /**
   * Color for the bottom line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  xAxisLineBottomColor?: string | boolean;
  /**
   * Type of line for the bottom line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisLineBottomLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the line in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisLineBottomShow?: boolean;
  /**
   * Transparency for the color of the bottom line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLineBottomTransparency?: number | boolean;
  /**
   * Width for the bottom line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLineBottomWidth?: number | boolean;
  /**
   * Color for the top line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  xAxisLineTopColor?: string | boolean;
  /**
   * Type of line for the top line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisLineTopLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the line in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisLineTopShow?: boolean;
  /**
   * Transparency for the color of the top line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLineTopTransparency?: number | boolean;
  /**
   * Width for the top line across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLineTopWidth?: number | boolean;
  /**
   * Color for the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  xAxisLogTicksColor?: string | boolean;
  /**
   * Length for the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 8
   */
  xAxisLogTicksLength?: number | boolean;
  /**
   * Type of line for the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLogTicksTransparency?: number | boolean;
  /**
   * Width for the log tick lines in the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisLogTicksWidth?: number | boolean;
  /**
   * Number of minor ticks between major ticks in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 2
   */
  xAxisMinorTicks?: number | boolean;
  /**
   * Size in pixels for the data rug in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 15
   */
  xAxisRugHeight?: number | boolean;
  /**
   * Position for the data rug in theX axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "bottom"
   */
  xAxisRugPosition?: "bottom" | "top" | "both" | false | (string & {});
  /**
   * Flag to show/hide a data rug in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisRugShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with xAxisSetValues in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  xAxisSetLabels?: unknown[] | boolean | string | number;
  /**
   * Set the minor values for the axis in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  xAxisSetMinorValues?: unknown[] | boolean | string | number;
  /**
   * Set the values for the axis in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default []
   */
  xAxisSetValues?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the X axis on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  xAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  xAxisTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  xAxisTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  xAxisTextColor?: string | boolean;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * xAxisTextScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 8
   */
  xAxisTextFontSize?: number | boolean;
  /**
   * Font style for the axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  xAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  xAxisTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis text
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  xAxisTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisTextScaleFontFactor?: number | boolean;
  /**
   * X axis format for the tick values in the X axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTickFormat?: string | unknown[] | boolean | number;
  /**
   * Approx number of tick lines in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  xAxisTicks?: number | boolean;
  /**
   * Color for the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  xAxisTicksColor?: string | boolean;
  /**
   * Length for the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default null
   */
  xAxisTicksLength?: number | boolean;
  /**
   * Type of line for the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  xAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default true
   */
  xAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisTicksTransparency?: number | boolean;
  /**
   * Width for the marker lines across the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisTicksWidth?: number | boolean;
  /**
   * Flag to force date format in X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTime?: boolean;
  /**
   * X axis title on the bottom
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTitle?: string | boolean;
  /**
   * Alignment (or position) for the axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "center"
   */
  xAxisTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  xAxisTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  xAxisTitleColor?: string | boolean;
  /**
   * Set the title for the X axis dynamically as it changes when configured by the user
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * xAxisTitleScaleFontFactor
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 8
   */
  xAxisTitleFontSize?: number | boolean;
  /**
   * Font style for the axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default ""
   */
  xAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 5
   */
  xAxisTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis title
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 0
   */
  xAxisTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default 1
   */
  xAxisTitleScaleFontFactor?: number | boolean;
  /**
   * Type of transformation for values in X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTransform?: string | boolean;
  /**
   * Flag to transform the values of the ticks back to linear scale in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the X axis
   * @graphTypes Alluvial, Area, AreaLine, Bar, BarLine, Boxplot … (65 types; see CXGraphTypeKeys)
   * @default false
   */
  xAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the X axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 45
   */
  xRotate?: number | boolean;
  /**
   * Value between 0 - 1 for adjusting the 3D of the Y Axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 1
   */
  y3DRatio?: number | boolean;
  /**
   * Name of the samples, groups or variables to be displayed in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default []
   */
  yAxis?: unknown[] | boolean | string | number;
  /**
   * Flag to rotate 180 degrees the direction of the Y axis on the right
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxis2Rotate?: boolean;
  /**
   * Flag to show/hide the Y axis on the right
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxis2Show?: boolean;
  /**
   * Y axis2 title on the right
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxis2Title?: string | boolean;
  /**
   * Value to ceil the data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  yAxisCeilValue?: number | boolean;
  /**
   * Sample id that is currently displayed in the Y axis. Important when there are more that
   * one series displayed in the graph
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 0
   */
  yAxisCurrent?: number | boolean;
  /**
   * Flag to force exact values in Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisExact?: boolean;
  /**
   * Value to factor the data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  yAxisFactorValue?: number | boolean;
  /**
   * Value to floor the data in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  yAxisFloorValue?: number | boolean;
  /**
   * Color for the major grid lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  yAxisGridMajorColor?: string | boolean;
  /**
   * Type of line for the major grid lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the major grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  yAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisGridMajorTransparency?: number | boolean;
  /**
   * Width for the major grid lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisGridMajorWidth?: number | boolean;
  /**
   * Color for the minor grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  yAxisGridMinorColor?: string | boolean;
  /**
   * Type of line for the minor grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  yAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisGridMinorTransparency?: number | boolean;
  /**
   * Width for the minor grid lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 0.5
   */
  yAxisGridMinorWidth?: number | boolean;
  /**
   * Size in pixels for the histogram in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 80
   */
  yAxisHistogramHeight?: number | boolean;
  /**
   * Flag to show/hide the histogram in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisHistogramShow?: boolean;
  /**
   * Color for the left line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  yAxisLineLeftColor?: string | boolean;
  /**
   * Type of line for the left line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisLineLeftLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the line in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisLineLeftShow?: boolean;
  /**
   * Transparency for the color of the left line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLineLeftTransparency?: number | boolean;
  /**
   * Width for the left line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLineLeftWidth?: number | boolean;
  /**
   * Color for the right line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  yAxisLineRightColor?: string | boolean;
  /**
   * Type of line for the right line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisLineRightLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the line in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisLineRightShow?: boolean;
  /**
   * Transparency for the color of the right line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLineRightTransparency?: number | boolean;
  /**
   * Width for the right line across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLineRightWidth?: number | boolean;
  /**
   * Color for the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  yAxisLogTicksColor?: string | boolean;
  /**
   * Length for the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 8
   */
  yAxisLogTicksLength?: number | boolean;
  /**
   * Type of line for the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLogTicksTransparency?: number | boolean;
  /**
   * Width for the log tick lines in the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisLogTicksWidth?: number | boolean;
  /**
   * Number of minor ticks between major ticks in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 2
   */
  yAxisMinorTicks?: number | boolean;
  /**
   * Size in pixels for the data rug in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 15
   */
  yAxisRugHeight?: number | boolean;
  /**
   * Position for the data rug in theY axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "left"
   */
  yAxisRugPosition?: "left" | "rigth" | "both" | false | (string & {});
  /**
   * Flag to show/hide a data rug in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisRugShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with yAxisSetValues in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default []
   */
  yAxisSetLabels?: unknown[] | boolean | string | number;
  /**
   * Set the minor values for the axis in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default []
   */
  yAxisSetMinorValues?: unknown[] | boolean | string | number;
  /**
   * Set the values for the axis in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default []
   */
  yAxisSetValues?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the Y axis on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  yAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "center"
   */
  yAxisTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  yAxisTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  yAxisTextColor?: string | boolean;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * yAxisTextScaleFontFactor
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 8
   */
  yAxisTextFontSize?: number | boolean;
  /**
   * Font style for the axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default ""
   */
  yAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 5
   */
  yAxisTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis text
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 0
   */
  yAxisTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisTextScaleFontFactor?: number | boolean;
  /**
   * Y axis format for the tick values in the Y axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTickFormat?: string | unknown[] | boolean | number;
  /**
   * Approx number of tick lines in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 5
   */
  yAxisTicks?: number | boolean;
  /**
   * Color for the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(204, 204, 204)"
   */
  yAxisTicksColor?: string | boolean;
  /**
   * Length for the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default null
   */
  yAxisTicksLength?: number | boolean;
  /**
   * Type of line for the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "solid"
   */
  yAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default true
   */
  yAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisTicksTransparency?: number | boolean;
  /**
   * Width for the marker lines across the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisTicksWidth?: number | boolean;
  /**
   * Flag to force date format in Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTime?: boolean;
  /**
   * Y axis title on the left
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTitle?: string | boolean;
  /**
   * Alignment (or position) for the axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "center"
   */
  yAxisTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "middle"
   */
  yAxisTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default "rgb(0,0,0)"
   */
  yAxisTitleColor?: string | boolean;
  /**
   * Set the title for the Y axis dynamically as it changes when configured by the user
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * yAxisTitleScaleFontFactor
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 8
   */
  yAxisTitleFontSize?: number | boolean;
  /**
   * Font style for the axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default ""
   */
  yAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 5
   */
  yAxisTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis title
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 0
   */
  yAxisTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default 1
   */
  yAxisTitleScaleFontFactor?: number | boolean;
  /**
   * Type of transformation for values in Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTransform?: string | boolean;
  /**
   * Flag to transform the values of the ticks back to linear scale in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the Y axis
   * @graphTypes Bin, Binplot, CDF, Contour, Density, Distribution … (21 types; see CXGraphTypeKeys)
   * @default false
   */
  yAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the Y axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 0
   */
  yRotate?: number | boolean;
  /**
   * Value between 0 - 1 for adjusting the 3D of the Z Axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 1
   */
  z3DRatio?: number | boolean;
  /**
   * Name of the samples, groups or variables to be displayed in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default []
   */
  zAxis?: unknown[] | boolean | string | number;
  /**
   * Z axis2 title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxis2Title?: string | boolean;
  /**
   * Value to ceil the data in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  zAxisCeilValue?: number | boolean;
  /**
   * Sample id that is currently displayed in the Z axis. Important when there are more that
   * one series displayed in the graph
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 0
   */
  zAxisCurrent?: number | boolean;
  /**
   * Flag to force exact values in Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisExact?: boolean;
  /**
   * Value to factor the data in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  zAxisFactorValue?: number | boolean;
  /**
   * Value to floor the data in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  zAxisFloorValue?: number | boolean;
  /**
   * Color for the major grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(204, 204, 204)"
   */
  zAxisGridMajorColor?: string | boolean;
  /**
   * Type of line for the major grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "solid"
   */
  zAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the major grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default true
   */
  zAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisGridMajorTransparency?: number | boolean;
  /**
   * Width for the major grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisGridMajorWidth?: number | boolean;
  /**
   * Color for the minor grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(204, 204, 204)"
   */
  zAxisGridMinorColor?: string | boolean;
  /**
   * Type of line for the minor grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "solid"
   */
  zAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default true
   */
  zAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisGridMinorTransparency?: number | boolean;
  /**
   * Width for the minor grid lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 0.5
   */
  zAxisGridMinorWidth?: number | boolean;
  /**
   * Color for the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(0,0,0)"
   */
  zAxisLogTicksColor?: string | boolean;
  /**
   * Length for the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 8
   */
  zAxisLogTicksLength?: number | boolean;
  /**
   * Type of line for the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "solid"
   */
  zAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisLogTicksTransparency?: number | boolean;
  /**
   * Width for the log tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisLogTicksWidth?: number | boolean;
  /**
   * Set the tick labels paired one-to-one with zAxisSetValues in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default []
   */
  zAxisSetLabels?: unknown[] | boolean | string | number;
  /**
   * Set the minor values for the axis in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default []
   */
  zAxisSetMinorValues?: unknown[] | boolean | string | number;
  /**
   * Set the values for the axis in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default []
   */
  zAxisSetValues?: unknown[] | boolean | string | number;
  /**
   * Flag to show/hide the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default true
   */
  zAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "center"
   */
  zAxisTextAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "middle"
   */
  zAxisTextBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(0,0,0)"
   */
  zAxisTextColor?: string | boolean;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * zAxisTextScaleFontFactor
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 8
   */
  zAxisTextFontSize?: number | boolean;
  /**
   * Font style for the axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default ""
   */
  zAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 5
   */
  zAxisTextMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis text
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 0
   */
  zAxisTextRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisTextScaleFontFactor?: number | boolean;
  /**
   * Z axis format for the tick values in the Z axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTickFormat?: string | unknown[] | boolean | number;
  /**
   * Approx number of tick lines in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 10
   */
  zAxisTicks?: number | boolean;
  /**
   * Color for the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(204, 204, 204)"
   */
  zAxisTicksColor?: string | boolean;
  /**
   * Length for the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default null
   */
  zAxisTicksLength?: number | boolean;
  /**
   * Type of line for the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "solid"
   */
  zAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | false | (string & {});
  /**
   * Flag to show/hide the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default true
   */
  zAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisTicksTransparency?: number | boolean;
  /**
   * Width for the marker lines across the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisTicksWidth?: number | boolean;
  /**
   * Flag to force date format in Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTime?: boolean;
  /**
   * Z axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTitle?: string | boolean;
  /**
   * Alignment (or position) for the axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "center"
   */
  zAxisTitleAlign?: "left" | "center" | "right" | false | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "middle"
   */
  zAxisTitleBaseline?: "top" | "middle" | "bottom" | false | (string & {});
  /**
   * Color for the text in axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default "rgb(0,0,0)"
   */
  zAxisTitleColor?: string | boolean;
  /**
   * Set the title for the Z axis dynamically as it changes when configured by the user
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * zAxisTitleScaleFontFactor
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 8
   */
  zAxisTitleFontSize?: number | boolean;
  /**
   * Font style for the axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default ""
   */
  zAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | false | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 5
   */
  zAxisTitleMargin?: number | boolean;
  /**
   * Rotation in degrees for the axis title
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 0
   */
  zAxisTitleRotate?: number | boolean;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default 1
   */
  zAxisTitleScaleFontFactor?: number | boolean;
  /**
   * Type of transformation for values in Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTransform?: string | boolean;
  /**
   * Flag to transform the values of the ticks back to linear scale in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the Z axis
   * @graphTypes ScatterBubble2D, Scatter3D
   * @default false
   */
  zAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the Z axis
   * @graphTypes Bar, Network, Scatter3D
   * @default 0
   */
  zRotate?: number | boolean;
  /**
   * Zoom factor for the networks. A number greater than zero
   * @default 1
   */
  zoom?: number | boolean;
  /**
   * Flag to disable zooming in all plots
   * @default false
   */
  zoomDisable?: boolean;
  /**
   * Flag to disable zooming of samples with mouse wheel in Heatmaps
   * @default false
   */
  zoomSamplesDisable?: boolean;
  /**
   * Flag to scale nodes and edges in networks with zoom and data points in 3D scatter plots
   * @default true
   */
  zoomScale?: boolean;
  /**
   * Percentage step for zooming networks and genome panel
   * @default 0.2
   */
  zoomStep?: number | boolean;
  /**
   * Flag to disable zooming of variables with mouse wheel in Heatmaps
   * @default false
   */
  zoomVariablesDisable?: boolean;
  /**
   * Flag to disable zooming of x axis with mouse wheel in Scatter plots
   * @default false
   */
  zoomXDisable?: boolean;
  /**
   * Flag to disable zooming of y axis with mouse wheel in Scatter plots
   * @default false
   */
  zoomYDisable?: boolean;
  /** Obfuscation aliases and any parameter newer than this generated file. */
  [key: string]: unknown;
}

// ---- Per-graph-type key sets (generated from x-cx-graphtypes) ----------
/** Config keys in the "3D Attributes" category. */
export type CXKeys3DAttributes =
  | "outline3DColor"
  | "perspectiveFactor"
  | "rotationSensitivity"
  | "show3DGrid"
  | "x3DRatio"
  | "xRotate"
  | "y3DRatio"
  | "yRotate"
  | "z3DRatio"
  | "zRotate";
/** Config keys in the "Animations and Visualization Transitions" category. */
export type CXKeysAnimationsandVisualizationTransitions =
  | "showAnimation"
  | "showTransition"
  | "transitionFunction"
  | "transitionSpeed"
  | "transitionStaggering"
  | "transitionStep"
  | "transitionType";
/** Config keys in the "Area Graphs" category. */
export type CXKeysAreaGraphs =
  | "areaStyle"
  | "areaType";
/** Config keys in the "Aspect Ratio, Space and Width" category. */
export type CXKeysAspectRatioSpaceandWidth =
  | "dataPointSize"
  | "dataPointSizeScaleFactor"
  | "fixedAspectRatio"
  | "percentAspectRatioPlotArea"
  | "setPlotLeft"
  | "setPlotTop"
  | "setPlotX"
  | "setPlotY"
  | "variableSpace"
  | "widthFactor";
/** Config keys in the "Axis" category. */
export type CXKeysAxis =
  | "axisAlgorithm"
  | "axisCoordinate"
  | "axisExtension"
  | "axisWilkinsonLoose";
/** Config keys in the "Bar Graphs" category. */
export type CXKeysBarGraphs =
  | "barType"
  | "barZero";
/** Config keys in the "Bin Plots" category. */
export type CXKeysBinPlots =
  | "binplotBinWidth"
  | "binplotBins"
  | "binplotColorScheme"
  | "binplotShape";
/** Config keys in the "Boxplot Graphs" category. */
export type CXKeysBoxplotGraphs =
  | "boxplotBorderColor"
  | "boxplotCoef"
  | "boxplotColor"
  | "boxplotConnect"
  | "boxplotConnectWidth"
  | "boxplotDataPointTransparency"
  | "boxplotHingeFunction"
  | "boxplotMean"
  | "boxplotMeanBorderColor"
  | "boxplotMeanColor"
  | "boxplotMedianColor"
  | "boxplotMedianWidth"
  | "boxplotNotched"
  | "boxplotOriginalDataColor"
  | "boxplotOutliersBorderColor"
  | "boxplotOutliersColor"
  | "boxplotOutliersRatio"
  | "boxplotOutliersShape"
  | "boxplotTransparency"
  | "boxplotType"
  | "boxplotVarWidth"
  | "boxplotWhiskersType"
  | "showBoxplotOriginalData";
/** Config keys in the "Bubble Graphs" category. */
export type CXKeysBubbleGraphs =
  | "bubbleColor"
  | "bubbleLabel"
  | "bubbleLabelLineType"
  | "bubbleLabelPosition"
  | "bubbleOutlineColor";
/** Config keys in the "Bullet Graphs" category. */
export type CXKeysBulletGraphs =
  | "bulletStyle"
  | "bulletTargetLineWidth"
  | "bulletTargetType"
  | "bulletTargetVarColor"
  | "bulletTargetVarName"
  | "bulletTargetWidthRatio"
  | "bulletWidthRatio"
  | "progressTrackColor"
  | "progressWidthRatio";
/** Config keys in the "Chord Graphs" category. */
export type CXKeysChordGraphs =
  | "chordColor"
  | "chordScaleShow"
  | "chordThickness";
/** Config keys in the "Circular Graph Arc Sectors" category. */
export type CXKeysCircularGraphArcSectors =
  | "circularArcSectorRadius"
  | "circularArcSectorSeparation";
/** Config keys in the "Circular Graph Connections" category. */
export type CXKeysCircularGraphConnections =
  | "circularConnections"
  | "circularConnectionsTransparency"
  | "showCircularConnections";
/** Config keys in the "Circular Graph Tracks" category. */
export type CXKeysCircularGraphTracks =
  | "circularTrackGraphType"
  | "circularTrackGraphWeight"
  | "circularTrackName"
  | "circularTrackOrder"
  | "circularTrackSeparation";
/** Config keys in the "Circular Graphs" category. */
export type CXKeysCircularGraphs =
  | "circularAnchorColor"
  | "circularAnchorLength"
  | "circularAnchors2Align"
  | "circularAnchorsAlign"
  | "circularArc"
  | "circularCenterProportion"
  | "circularDataPosition"
  | "circularLabelsAlign"
  | "circularLetterSeparationFactor"
  | "circularOverlayLevelOrientation"
  | "circularOverlayThickness"
  | "circularRotate"
  | "circularSampleLabelOrientation"
  | "circularScalesAlign"
  | "circularType";
/** Config keys in the "Citations or References" category. */
export type CXKeysCitationsorReferences =
  | "citation"
  | "citationAlign"
  | "citationBaseline"
  | "citationColor"
  | "citationFontSize"
  | "citationFontStyle"
  | "citationMargin"
  | "citationRotate"
  | "citationScaleFontFactor";
/** Config keys in the "Clustering" category. */
export type CXKeysClustering =
  | "clusterAxis"
  | "clusteringDistance"
  | "imputeMethod"
  | "kmeansSmpClusters"
  | "kmeansVarClusters"
  | "linkage"
  | "maxIterations"
  | "samplesClustered"
  | "samplesKmeaned"
  | "variablesClustered"
  | "variablesKmeaned";
/** Config keys in the "Colors" category. */
export type CXKeysColors =
  | "blindnessType"
  | "colorScheme"
  | "colorSpectrum"
  | "colorSpectrumBinned"
  | "colorSpectrumBreaks"
  | "colorSpectrumByFactor"
  | "colorSpectrumByObject"
  | "colorSpectrumZeroValue"
  | "colors"
  | "evenColor"
  | "oddColor";
/** Config keys in the "Combination Plot Strips" category. */
export type CXKeysCombinationPlotStrips =
  | "stripBackgroundBorderColor"
  | "stripBackgroundBorderLineType"
  | "stripBackgroundBorderSize"
  | "stripBackgroundColor"
  | "stripShow"
  | "stripTextAlign"
  | "stripTextBaseline"
  | "stripTextColor"
  | "stripTextFontSize"
  | "stripTextFontStyle"
  | "stripTextLines"
  | "stripTextMargin"
  | "stripTextMaxLength"
  | "stripTextRotate"
  | "stripTextScaleFontFactor"
  | "stripThickness";
/** Config keys in the "Combination Plots" category. */
export type CXKeysCombinationPlots =
  | "layoutAdjust"
  | "layoutCanvasCompartments"
  | "layoutCollapse"
  | "layoutConfig"
  | "layoutGlobalGroups"
  | "layoutRemoveEmpty"
  | "layoutSpacing"
  | "layoutTopology"
  | "layoutType";
/** Config keys in the "Confidence Intervals" category. */
export type CXKeysConfidenceIntervals =
  | "confidenceIntervalColor"
  | "confidenceIntervalColorCoordinate"
  | "confidenceIntervalsMax"
  | "confidenceLevel"
  | "showConfidenceIntervals";
/** Config keys in the "Context Menu" category. */
export type CXKeysContextMenu =
  | "contextMenuBackgroundColor"
  | "contextMenuBorderColor"
  | "contextMenuFontSize"
  | "contextMenuHoverColor"
  | "contextMenuTextColor";
/** Config keys in the "Contours" category. */
export type CXKeysContours =
  | "contourBandsColor"
  | "contourColorScheme"
  | "contourDataPointsColor"
  | "contourFilled"
  | "contourFilledTransparency"
  | "contourLevelNumber"
  | "contourLevelWidth"
  | "contourLevels"
  | "contourStat"
  | "contourType"
  | "isContour"
  | "showContourBands"
  | "showContourDataPoints"
  | "showContourLevel";
/** Config keys in the "Correlation Graphs" category. */
export type CXKeysCorrelationGraphs =
  | "correlationAnchorLegend"
  | "correlationAnchorLegendAlignWidth"
  | "correlationAxis"
  | "correlationLabelInterval"
  | "correlationType";
/** Config keys in the "DOE" category. */
export type CXKeysDOE =
  | "asDOE"
  | "extendedDOE"
  | "includeDOE"
  | "maxDOENumber";
/** Config keys in the "Data" category. */
export type CXKeysData =
  | "appendNetworkData"
  | "dataTextAlign"
  | "dataTextBaseline"
  | "dataTextColor"
  | "dataTextFontSize"
  | "dataTextFontStyle"
  | "dataTextMargin"
  | "dataTextRotate"
  | "dataTextScaleFontFactor"
  | "groupingFactorLevelsOrder"
  | "groupingFactors"
  | "groupingFactorsLabelsHide"
  | "summaryType"
  | "transposeData";
/** Config keys in the "Data Context" category. */
export type CXKeysDataContext =
  | "asSampleFactors"
  | "asVariableFactors"
  | "stringEdgeAttributes"
  | "stringNodeAttributes"
  | "stringSampleFactors"
  | "stringVariableFactors";
/** Config keys in the "Data Customizer" category. */
export type CXKeysDataCustomizer =
  | "customizerBackgroundColor"
  | "customizerBorderColor"
  | "customizerCloseBackgroundColor"
  | "customizerCloseTextColor"
  | "customizerEntriesAsList"
  | "customizerFontSize"
  | "customizerGraphMaximize"
  | "customizerHoverColor"
  | "customizerSize"
  | "customizerTextColor"
  | "maxDataCustomizerEntries";
/** Config keys in the "Data Faceting" category. */
export type CXKeysDataFaceting =
  | "segregateSamplesBy"
  | "segregateVariablesBy"
  | "splitSamplesBy"
  | "splitSeparation"
  | "splitVariablesBy";
/** Config keys in the "Data Filters" category. */
export type CXKeysDataFilters =
  | "aggregations"
  | "calculatedFields"
  | "dataFilterBackgroundColor"
  | "dataFilterBorderColor"
  | "dataFilterFontSize"
  | "dataFilterHoverColor"
  | "dataFilterMaxItems"
  | "dataFilterTextColor"
  | "dataFilterToolbarBackgroundColor"
  | "dataFilterWidth"
  | "filterData"
  | "filterDataBy"
  | "filterEdgeBy"
  | "filterFeatureBy"
  | "filterMode"
  | "filterNodeBy"
  | "filterSkipNullKeys"
  | "filterSkipNullValues"
  | "filterSmpBy"
  | "filterType"
  | "filterVarBy"
  | "shelfStates"
  | "toggleSwitchBackgroundColor";
/** Config keys in the "Data Point Attributes" category. */
export type CXKeysDataPointAttributes =
  | "colorBy"
  | "colorByData"
  | "colorKey"
  | "colorLabelBy"
  | "colorLegendTitle"
  | "confidenceBy"
  | "connectBy"
  | "connectByColor"
  | "connectByNoColor"
  | "connectByPointColor"
  | "connectByWidth"
  | "connectKey"
  | "dodgeBy"
  | "ellipseBy"
  | "labelBy"
  | "labelSelect"
  | "lineBy"
  | "markerBy"
  | "outlineBy"
  | "outlineByData"
  | "patternBy"
  | "patternByData"
  | "patternKey"
  | "pieBy"
  | "pivotBy"
  | "ribbonBy"
  | "ribbonByType"
  | "ridgeBy"
  | "shapeBy"
  | "shapeByContinuous"
  | "shapeByData"
  | "shapeByShape"
  | "shapeKey"
  | "shapeLegendTitle"
  | "sizeBy"
  | "sizeByContinuous"
  | "sizeByData"
  | "sizeKey"
  | "sizeLabelBy"
  | "sizeLegendTitle"
  | "stackBy"
  | "treemapBy"
  | "workflowBy";
/** Config keys in the "Data Ratio Reference" category. */
export type CXKeysDataRatioReference =
  | "ratioGroupReference"
  | "ratioLevelReference"
  | "ratioReference"
  | "ratioSampleReference";
/** Config keys in the "Data Selection" category. */
export type CXKeysDataSelection =
  | "selectedDataPoints"
  | "selectionColor"
  | "selectionMetadata"
  | "selectionMode";
/** Config keys in the "Data Sorting" category. */
export type CXKeysDataSorting =
  | "numericGroupSort"
  | "sortCaseSensitive"
  | "sortData"
  | "sortDir"
  | "sortIncludeEmpty"
  | "sortOnGrouping";
/** Config keys in the "Data Table" category. */
export type CXKeysDataTable =
  | "dataTableAccentColor"
  | "dataTableActiveCellBorderColor"
  | "dataTableAutoColumnWidth"
  | "dataTableBannerBackgroundColor"
  | "dataTableBannerBorderColor"
  | "dataTableBannerImage"
  | "dataTableBannerShow"
  | "dataTableBannerTextAlign"
  | "dataTableBannerTextBaseline"
  | "dataTableBannerTextColor"
  | "dataTableBannerTextFontSize"
  | "dataTableBannerTextFontStyle"
  | "dataTableBannerTextMargin"
  | "dataTableBannerTextRotate"
  | "dataTableBannerTextScaleFontFactor"
  | "dataTableBorderColor"
  | "dataTableCellBackgroundColor"
  | "dataTableCellBorderColor"
  | "dataTableCellBorders"
  | "dataTableCellHoverBackgroundColor"
  | "dataTableCellTextAlign"
  | "dataTableCellTextBaseline"
  | "dataTableCellTextColor"
  | "dataTableCellTextFontSize"
  | "dataTableCellTextFontStyle"
  | "dataTableCellTextMargin"
  | "dataTableCellTextRotate"
  | "dataTableCellTextScaleFontFactor"
  | "dataTableColAlignment"
  | "dataTableColFormat"
  | "dataTableColHide"
  | "dataTableColOrder"
  | "dataTableColPin"
  | "dataTableColProperties"
  | "dataTableColWidth"
  | "dataTableColorTransparency"
  | "dataTableColored"
  | "dataTableGrouped"
  | "dataTableHeaderBackgroundColor"
  | "dataTableHeaderTemplate"
  | "dataTableHeaderTextAlign"
  | "dataTableHeaderTextBaseline"
  | "dataTableHeaderTextColor"
  | "dataTableHeaderTextFontSize"
  | "dataTableHeaderTextFontStyle"
  | "dataTableHeaderTextMargin"
  | "dataTableHeaderTextRotate"
  | "dataTableHeaderTextScaleFontFactor"
  | "dataTableNetwork"
  | "dataTableOddCellBackgroundColor"
  | "dataTableOnSelectShow"
  | "dataTablePaginationBackgroundColor"
  | "dataTablePaginationBorderColor"
  | "dataTablePaginationSelectTextAlign"
  | "dataTablePaginationSelectTextBaseline"
  | "dataTablePaginationSelectTextColor"
  | "dataTablePaginationSelectTextFontSize"
  | "dataTablePaginationSelectTextFontStyle"
  | "dataTablePaginationSelectTextMargin"
  | "dataTablePaginationSelectTextRotate"
  | "dataTablePaginationSelectTextScaleFontFactor"
  | "dataTablePaginationShow"
  | "dataTablePaginationSize"
  | "dataTablePaginationTextAlign"
  | "dataTablePaginationTextBaseline"
  | "dataTablePaginationTextColor"
  | "dataTablePaginationTextFontSize"
  | "dataTablePaginationTextFontStyle"
  | "dataTablePaginationTextMargin"
  | "dataTablePaginationTextRotate"
  | "dataTablePaginationTextScaleFontFactor"
  | "dataTableRowGroups"
  | "dataTableRowHeight"
  | "dataTableRowHoverBackgroundColor"
  | "dataTableRowLines"
  | "dataTableRowNumbersShow"
  | "dataTableScrollDirection"
  | "dataTableStatusBackgroundColor"
  | "dataTableStatusBorderColor"
  | "dataTableStatusShow"
  | "dataTableStatusTextAlign"
  | "dataTableStatusTextBaseline"
  | "dataTableStatusTextColor"
  | "dataTableStatusTextFontSize"
  | "dataTableStatusTextFontStyle"
  | "dataTableStatusTextMargin"
  | "dataTableStatusTextRotate"
  | "dataTableStatusTextScaleFontFactor"
  | "dataTableStripeTransparency"
  | "dataTableStriped"
  | "dataTableSummaryRowFunction"
  | "dataTableSummaryRowFunctions"
  | "dataTableSummaryRowLabel"
  | "dataTableSummaryRowShow"
  | "dataTableToolbarBackgroundColor"
  | "dataTableToolbarBorderColor"
  | "dataTableToolbarShow"
  | "dataTableTransposed"
  | "dataTableZeroHeader"
  | "datatableBackgroundColor";
/** Config keys in the "Data Time Series" category. */
export type CXKeysDataTimeSeries =
  | "isGraphTime"
  | "timeFormat";
/** Config keys in the "Data Transformation" category. */
export type CXKeysDataTransformation =
  | "dataPipeline"
  | "transformAxis"
  | "transformData";
/** Config keys in the "Data UI Widgets" category. */
export type CXKeysDataUIWidgets =
  | "dataUIStyle"
  | "widgetsAccentColor"
  | "widgetsBackgroundColor"
  | "widgetsBaseColor"
  | "widgetsBorderColor"
  | "widgetsBorderRadius"
  | "widgetsContrastColor"
  | "widgetsFontColor"
  | "widgetsFontSize"
  | "widgetsHoverTransparency"
  | "widgetsIconClsAColor"
  | "widgetsIconClsBColor"
  | "widgetsIconClsCColor"
  | "widgetsIconClsXColor"
  | "widgetsStripedColor";
/** Config keys in the "Debug" category. */
export type CXKeysDebug =
  | "codeType"
  | "debug"
  | "debugWithArea"
  | "offline"
  | "showCode"
  | "showVersion"
  | "verbose";
/** Config keys in the "Decorations" category. */
export type CXKeysDecorations =
  | "decorations"
  | "decorationsBackgroundBorderColor"
  | "decorationsBackgroundBorderLineType"
  | "decorationsBackgroundBorderSize"
  | "decorationsBackgroundColor"
  | "decorationsClipped"
  | "decorationsColors"
  | "decorationsHeight"
  | "decorationsOnTop"
  | "decorationsPosition"
  | "decorationsProperties"
  | "decorationsTextAlign"
  | "decorationsTextBaseline"
  | "decorationsTextColor"
  | "decorationsTextFontSize"
  | "decorationsTextFontStyle"
  | "decorationsTextMargin"
  | "decorationsTextRotate"
  | "decorationsTextScaleFontFactor"
  | "decorationsTransform"
  | "decorationsTransparency"
  | "decorationsType"
  | "decorationsWidth"
  | "showDecorations"
  | "showDecorationsBorder"
  | "showDecorationsLegend";
/** Config keys in the "Dendrograms" category. */
export type CXKeysDendrograms =
  | "colorSmpDendrogramBy"
  | "colorVarDendrogramBy"
  | "dendrogramColor"
  | "dendrogramHeight"
  | "showSmpDendrogram"
  | "showVarDendrogram"
  | "smpDendrogramHang"
  | "smpDendrogramNewick"
  | "smpDendrogramPosition"
  | "smpDendrogramUseHeight"
  | "varDendrogramHang"
  | "varDendrogramNewick"
  | "varDendrogramPosition"
  | "varDendrogramUseHeight";
/** Config keys in the "Density Plots" category. */
export type CXKeysDensityPlots =
  | "bandwidthAdjust"
  | "bandwidthCut"
  | "bandwidthRule"
  | "densityKernel"
  | "densityPosition"
  | "showScatterDensity";
/** Config keys in the "Dotplot Graphs" category. */
export type CXKeysDotplotGraphs =
  | "dotplotType";
/** Config keys in the "Dumbbell Graphs" category. */
export type CXKeysDumbbellGraphs =
  | "dumbbellType";
/** Config keys in the "Error Bars" category. */
export type CXKeysErrorBars =
  | "errorBarsColor"
  | "errorBarsThickness"
  | "errorBarsType"
  | "errorBarsWidth"
  | "showErrorBars"
  | "standardDeviationType";
/** Config keys in the "Events" category. */
export type CXKeysEvents =
  | "broadcast"
  | "broadcastFilter"
  | "broadcastGroup"
  | "disableBeacon"
  | "disableCSSTransitions"
  | "disableCanvas"
  | "disableChat"
  | "disableCode"
  | "disableCustomizer"
  | "disableDataFilters"
  | "disableDataTable"
  | "disableDocument"
  | "disableDrag"
  | "disableEvents"
  | "disableGrid"
  | "disableKeys"
  | "disableLLMService"
  | "disableMenu"
  | "disablePlusMinusKeys"
  | "disableShowShortcuts"
  | "disableToolbar"
  | "disableTooltipCallout"
  | "disableUndoRedoKeys"
  | "disableWheel"
  | "disableWindow"
  | "fullscreenExclude"
  | "hoverTemplate"
  | "hoverTemplate2"
  | "infoTimeIn"
  | "infoTimeOut"
  | "lazyLoad"
  | "maxSubMenus"
  | "playable"
  | "resizable"
  | "resizableX"
  | "resizableY"
  | "showPrimaryMenus"
  | "toolbarCodes"
  | "toolbarFonts"
  | "toolbarItems"
  | "toolbarSchemes"
  | "toolbarSize"
  | "toolbarType";
/** Config keys in the "Fish Graphs" category. */
export type CXKeysFishGraphs =
  | "fishAxis"
  | "fishAxisLabels"
  | "fishCloneLabels"
  | "fishParents"
  | "fishSeparateIndependentClones"
  | "fishShape"
  | "fishTimepoints";
/** Config keys in the "Fit Lines" category. */
export type CXKeysFitLines =
  | "fitLineColor"
  | "fitLineTransparency"
  | "fitLineType"
  | "fitLineWidth";
/** Config keys in the "Foreground and Background" category. */
export type CXKeysForegroundandBackground =
  | "background"
  | "foreground";
/** Config keys in the "Gantt Charts" category. */
export type CXKeysGanttCharts =
  | "ganttCompletion"
  | "ganttCompletionTransparency"
  | "ganttDependency"
  | "ganttDependencyColor"
  | "ganttDependencyEnd"
  | "ganttDependencyThickness"
  | "ganttEnd"
  | "ganttStart";
/** Config keys in the "General" category. */
export type CXKeysGeneral =
  | "graphType"
  | "theme";
/** Config keys in the "General Attributes" category. */
export type CXKeysGeneralAttributes =
  | "images"
  | "linePatterns"
  | "patternFillColor"
  | "patternStrokeColor"
  | "patternStrokeWidth"
  | "patterns"
  | "shapes";
/** Config keys in the "General One Dimensional Graphs" category. */
export type CXKeysGeneralOneDimensionalGraphs =
  | "graphOrientation"
  | "invertGraph";
/** Config keys in the "Genome Browser" category. */
export type CXKeysGenomeBrowser =
  | "genomeResolution"
  | "genomeTicks"
  | "wireColor";
/** Config keys in the "Genome Browser Features" category. */
export type CXKeysGenomeBrowserFeatures =
  | "featureCoordinateHeight"
  | "featureCoordinateShow"
  | "featureDirColor"
  | "featureFillColor"
  | "featureHeightDefault"
  | "featureNameAlign"
  | "featureNameBaseline"
  | "featureNameColor"
  | "featureNameFontSize"
  | "featureNameFontStyle"
  | "featureNameMargin"
  | "featureNameRotate"
  | "featureNameScaleFontFactor"
  | "featureQualityHeight"
  | "featureQualityShow"
  | "featureQualityValues"
  | "featureSignalToNoiseHeight"
  | "featureSignalToNoiseShow"
  | "featureSignalToNoiseValues"
  | "featureSpliceStyle"
  | "featureStaggered"
  | "featureTraceHeight"
  | "featureTraceTrim"
  | "featureTracesShow"
  | "featureTranslateHeight"
  | "featureTranslateShow"
  | "featureTypeDefault"
  | "featureWidthDefault"
  | "maxFeatureStringLen"
  | "showFeatureNameThereshold";
/** Config keys in the "Genome Browser Sequences" category. */
export type CXKeysGenomeBrowserSequences =
  | "sequenceAColor"
  | "sequenceAlign"
  | "sequenceBColor"
  | "sequenceBaseline"
  | "sequenceCColor"
  | "sequenceColor"
  | "sequenceDColor"
  | "sequenceEColor"
  | "sequenceEndColor"
  | "sequenceFColor"
  | "sequenceFillColor"
  | "sequenceFontSize"
  | "sequenceFontStyle"
  | "sequenceGAPColor"
  | "sequenceGColor"
  | "sequenceHColor"
  | "sequenceIColor"
  | "sequenceKColor"
  | "sequenceLColor"
  | "sequenceMColor"
  | "sequenceMargin"
  | "sequenceNColor"
  | "sequencePColor"
  | "sequenceQColor"
  | "sequenceRColor"
  | "sequenceRotate"
  | "sequenceSColor"
  | "sequenceScaleFontFactor"
  | "sequenceStartColor"
  | "sequenceTColor"
  | "sequenceUColor"
  | "sequenceVColor"
  | "sequenceWColor"
  | "sequenceXColor"
  | "sequenceYColor"
  | "sequenceZColor";
/** Config keys in the "Genome Browser Tracks" category. */
export type CXKeysGenomeBrowserTracks =
  | "subtracksMaxDefault"
  | "trackDirColor"
  | "trackFillColor"
  | "trackNameAlign"
  | "trackNameBaseline"
  | "trackNameColor"
  | "trackNameFontSize"
  | "trackNameFontStyle"
  | "trackNameMargin"
  | "trackNameRotate"
  | "trackNameScaleFontFactor";
/** Config keys in the "Gradients" category. */
export type CXKeysGradients =
  | "gradient"
  | "gradientOrientation"
  | "gradientType";
/** Config keys in the "Graph Metadata" category. */
export type CXKeysGraphMetadata =
  | "metaData"
  | "password"
  | "tags";
/** Config keys in the "Grey Out" category. */
export type CXKeysGreyOut =
  | "highlightBy"
  | "highlightColor"
  | "highlightGreyOut"
  | "highlightMode";
/** Config keys in the "HTML Widgets" category. */
export type CXKeysHTMLWidgets =
  | "htmlWidget"
  | "htmlWidgetHeight"
  | "htmlWidgetType";
/** Config keys in the "Heatmap Color Indicators" category. */
export type CXKeysHeatmapColorIndicators =
  | "adjustAspectRatioHeatmapIndicator"
  | "heatmapIndicatorBeforeOverlays"
  | "heatmapIndicatorHeight"
  | "heatmapIndicatorHistogram"
  | "heatmapIndicatorHistogramColor"
  | "heatmapIndicatorPosition"
  | "heatmapIndicatorWidth"
  | "showHeatmapIndicator";
/** Config keys in the "Heatmap Graphs" category. */
export type CXKeysHeatmapGraphs =
  | "heatmapAutoAdjust"
  | "heatmapCellBox"
  | "heatmapCellBoxColor"
  | "heatmapCellBoxColorHighlight"
  | "heatmapCellBoxHighlightWidth"
  | "heatmapCellBoxWidth"
  | "heatmapCellMarkerColorColor"
  | "heatmapCellMarkerShape"
  | "heatmapCellMarkerSize"
  | "heatmapCellMarkerWidth"
  | "heatmapCellMarkers"
  | "heatmapCollapse"
  | "heatmapHighlightByRowCol"
  | "heatmapHighlightByRowColIntersectionColor"
  | "heatmapHighlightByRowColIntersectionWidth"
  | "heatmapType"
  | "smpTitleLabelPosition"
  | "varTitleLabelPosition";
/** Config keys in the "Hierarchy" category. */
export type CXKeysHierarchy =
  | "hierarchy";
/** Config keys in the "Histograms" category. */
export type CXKeysHistograms =
  | "histogramAsDotplot"
  | "histogramBinWidth"
  | "histogramBins"
  | "histogramBreaks"
  | "histogramDensityFillTransparency"
  | "histogramDotplotBorderColor"
  | "histogramDotplotBorderLineType"
  | "histogramDotplotBorderSize"
  | "histogramDotplotColor"
  | "histogramLowest"
  | "histogramMedianLineType"
  | "histogramPathColor"
  | "histogramPathFillTransparency"
  | "histogramPathWidth"
  | "histogramRight"
  | "histogramSizeEstimator"
  | "histogramStackDir"
  | "histogramStackRatio"
  | "histogramStat"
  | "histogramType"
  | "showFilledHistogramDensity"
  | "showFilledHistogramPath"
  | "showHistogram"
  | "showHistogramBars"
  | "showHistogramDataPoints"
  | "showHistogramDensity"
  | "showHistogramMedian"
  | "showHistogramPath"
  | "showHistogramQuantiles";
/** Config keys in the "Ideograms" category. */
export type CXKeysIdeograms =
  | "ideogram"
  | "ideogramChromosome"
  | "ideogramChromosomeNumber"
  | "ideogramChromosomePosition"
  | "ideogramHeight"
  | "ideogramSegmentAlign"
  | "ideogramSegmentBaseline"
  | "ideogramSegmentColor"
  | "ideogramSegmentFontSize"
  | "ideogramSegmentFontStyle"
  | "ideogramSegmentMargin"
  | "ideogramSegmentRotate"
  | "ideogramSegmentScaleFontFactor"
  | "ideogramShowFullChromosome"
  | "showIdeogram";
/** Config keys in the "Images" category. */
export type CXKeysImages =
  | "imageMaxTries"
  | "imageTimeOut";
/** Config keys in the "Kaplan Meier Plots" category. */
export type CXKeysKaplanMeierPlots =
  | "kmCensoredRug"
  | "kmColors"
  | "kmConfidenceIntervalType"
  | "kmConfidenceLevel"
  | "kmCxplot"
  | "kmInvertCensored"
  | "kmPvalue"
  | "kmRiskTable"
  | "kmTime"
  | "showKMConfidenceIntervals"
  | "showKMMedianSurvivalTime";
/** Config keys in the "LLM" category. */
export type CXKeysLLM =
  | "connectorsServiceURL"
  | "dashboardsServiceURL"
  | "llmBehaviour"
  | "llmCodeExamples"
  | "llmCodeExamplesShow"
  | "llmCodeMaxSentences"
  | "llmHeader"
  | "llmMinCoverageFactor"
  | "llmMinParameterCoverage"
  | "llmPrompt"
  | "llmSelectFirst"
  | "llmServiceURL"
  | "llmStack"
  | "llmTemperature"
  | "llmTool"
  | "llmUseAutocomplete"
  | "prompt";
/** Config keys in the "Legends" category. */
export type CXKeysLegends =
  | "customLegend"
  | "legendBackgroundBorderColor"
  | "legendBackgroundBorderLineType"
  | "legendBackgroundBorderSize"
  | "legendBackgroundColor"
  | "legendColumns"
  | "legendDirection"
  | "legendHorizontalJustification"
  | "legendInside"
  | "legendKeyBackgroundBorderColor"
  | "legendKeyBackgroundBorderLineType"
  | "legendKeyBackgroundBorderSize"
  | "legendKeyBackgroundColor"
  | "legendKeyMargin"
  | "legendKeySize"
  | "legendMax"
  | "legendOrder"
  | "legendOrderByCols"
  | "legendPosition"
  | "legendRows"
  | "legendStyleGgplot"
  | "legendTextAlign"
  | "legendTextBaseline"
  | "legendTextColor"
  | "legendTextFontSize"
  | "legendTextFontStyle"
  | "legendTextMargin"
  | "legendTextRotate"
  | "legendTextScaleFontFactor"
  | "legendTitleAlign"
  | "legendTitleBaseline"
  | "legendTitleColor"
  | "legendTitleFontSize"
  | "legendTitleFontStyle"
  | "legendTitleMargin"
  | "legendTitleRotate"
  | "legendTitleScaleFontFactor"
  | "legendVerticalJustification"
  | "showColorEdgeLegend"
  | "showColorLabelLegend"
  | "showColorLegend"
  | "showColorNodeLegend"
  | "showConnectLegend"
  | "showLegend"
  | "showLegendBorder"
  | "showLegendTitle"
  | "showLineLegend"
  | "showOutlineLegend"
  | "showPatternLegend"
  | "showPatternNodeLegend"
  | "showSampleLegend"
  | "showShapeLegend"
  | "showShapeNodeLegend"
  | "showSizeEdgeLegend"
  | "showSizeLabelLegend"
  | "showSizeLegend"
  | "showSizeNodeLegend"
  | "showVariableLegend";
/** Config keys in the "Line Graphs" category. */
export type CXKeysLineGraphs =
  | "coordinateLineColor"
  | "lineDecoration"
  | "lineErrorType"
  | "lineType"
  | "tension"
  | "tensionSegments";
/** Config keys in the "Lines" category. */
export type CXKeysLines =
  | "adjustBezier"
  | "arrowHeadAngle"
  | "arrowHeadSize"
  | "arrowHeadType"
  | "arrowHeadTypeOpen"
  | "arrowQuadraticFactor"
  | "capType"
  | "dashLength"
  | "dotLength"
  | "joinType"
  | "lineThickness"
  | "outlineWidth";
/** Config keys in the "Loess" category. */
export type CXKeysLoess =
  | "loessBandwidth"
  | "loessCell"
  | "loessDegree"
  | "loessFamily"
  | "loessNormalize"
  | "loessSpan"
  | "loessStatistics"
  | "loessSteps"
  | "loessSurface"
  | "showLoessFit";
/** Config keys in the "Lollipop Graphs" category. */
export type CXKeysLollipopGraphs =
  | "barLollipopOpen";
/** Config keys in the "Manhattan Plots" category. */
export type CXKeysManhattanPlots =
  | "armLengths"
  | "chromosomeLengths"
  | "manhattanCNV"
  | "manhattanColors"
  | "manhattanContrastColor"
  | "manhattanMarkerChromosomeNumber"
  | "manhattanMarkerLogPValue"
  | "manhattanMarkerPosition"
  | "manhattanRangeEnd"
  | "manhattanRangeLineWidth"
  | "manhattanRangeStart"
  | "showmanhattanRangeMiddle";
/** Config keys in the "Maps" category. */
export type CXKeysMaps =
  | "hiddenMapFeatures"
  | "mapColor"
  | "mapConfig"
  | "mapConfigFeatures"
  | "mapId"
  | "mapMarkerShape"
  | "mapMarkerShapeScaleFactor"
  | "mapOutlineColor"
  | "mapProjection"
  | "mapSmps"
  | "mapZipCodeIds"
  | "topoJSON"
  | "visibleMapFeatures";
/** Config keys in the "Maps Albers" category. */
export type CXKeysMapsAlbers =
  | "mapCentralMeridian"
  | "mapLatitudeOrigin"
  | "mapStandardParallel1"
  | "mapStandardParallel2";
/** Config keys in the "Maps Leaflet" category. */
export type CXKeysMapsLeaflet =
  | "leafletAlpha"
  | "leafletTileType"
  | "leafletZoomAlphaColor"
  | "useLeaflet";
/** Config keys in the "Maps Orthographic" category. */
export type CXKeysMapsOrthographic =
  | "mapGraticuleShow"
  | "mapGraticuleType";
/** Config keys in the "Marginal Text" category. */
export type CXKeysMarginalText =
  | "bottomMarginalText"
  | "bottomMarginalTextAlign"
  | "bottomMarginalTextBaseline"
  | "bottomMarginalTextColor"
  | "bottomMarginalTextFontSize"
  | "bottomMarginalTextFontStyle"
  | "bottomMarginalTextMargin"
  | "bottomMarginalTextRotate"
  | "bottomMarginalTextScaleFontFactor"
  | "leftMarginalText"
  | "leftMarginalTextAlign"
  | "leftMarginalTextBaseline"
  | "leftMarginalTextColor"
  | "leftMarginalTextFontSize"
  | "leftMarginalTextFontStyle"
  | "leftMarginalTextMargin"
  | "leftMarginalTextRotate"
  | "leftMarginalTextScaleFontFactor"
  | "rightMarginalText"
  | "rightMarginalTextAlign"
  | "rightMarginalTextBaseline"
  | "rightMarginalTextColor"
  | "rightMarginalTextFontSize"
  | "rightMarginalTextFontStyle"
  | "rightMarginalTextMargin"
  | "rightMarginalTextRotate"
  | "rightMarginalTextScaleFontFactor"
  | "topMarginalText"
  | "topMarginalTextAlign"
  | "topMarginalTextBaseline"
  | "topMarginalTextColor"
  | "topMarginalTextFontSize"
  | "topMarginalTextFontStyle"
  | "topMarginalTextMargin"
  | "topMarginalTextRotate"
  | "topMarginalTextScaleFontFactor";
/** Config keys in the "Margins" category. */
export type CXKeysMargins =
  | "margin"
  | "marginBottom"
  | "marginLeft"
  | "marginRight"
  | "marginTop";
/** Config keys in the "Meter Graphs" category. */
export type CXKeysMeterGraphs =
  | "meterAlign"
  | "meterBackgroundColor"
  | "meterCard"
  | "meterCardBackgroundColor"
  | "meterCardBorderColor"
  | "meterMargin"
  | "meterNeedleColor"
  | "meterProgress"
  | "meterRingTitlePosition"
  | "meterRingValueDigits"
  | "meterThickness"
  | "meterTitleAlign"
  | "meterTopology"
  | "meterType";
/** Config keys in the "Missing Data" category. */
export type CXKeysMissingData =
  | "missingDataColor"
  | "missingDataValue"
  | "nanOmit";
/** Config keys in the "Network Algorithm Parameters" category. */
export type CXKeysNetworkAlgorithmParameters =
  | "attractiveForceFunction"
  | "networkConvergenceThreshold"
  | "networkDisjoint"
  | "networkDragCoeff"
  | "networkGravity"
  | "networkRepulsion"
  | "networkSpeed"
  | "networkSpringCoeff"
  | "networkSpringLength"
  | "networkTheta"
  | "networkTimeStep"
  | "repulsiveForceFunction"
  | "useBarnesHutSimulation";
/** Config keys in the "Network Cola Algorithm Parameters" category. */
export type CXKeysNetworkColaAlgorithmParameters =
  | "networkColaAllConstraintsIterations"
  | "networkColaAvoidOverlaps"
  | "networkColaCenterGraph"
  | "networkColaConvergenceThreshold"
  | "networkColaFlowLayoutAxis"
  | "networkColaFlowLayoutSeparation"
  | "networkColaGridSnapIterations"
  | "networkColaGroupCompactness"
  | "networkColaHandleDisconnected"
  | "networkColaJaccardLinkLength"
  | "networkColaJaccardLinkLengthDefault"
  | "networkColaKeepRunning"
  | "networkColaLinkDistance"
  | "networkColaStartUnconstrainedIterations"
  | "networkColaSymmetricDiffLinkLengths"
  | "networkColaUserConstraintIterations";
/** Config keys in the "Network Communities" category. */
export type CXKeysNetworkCommunities =
  | "calculateNetworkCommunities"
  | "coordinateNetworkConvexHullCommunityColor"
  | "hullScale"
  | "showNetworkCommunities";
/** Config keys in the "Network Graphs" category. */
export type CXKeysNetworkGraphs =
  | "calculateLayout"
  | "edgeColor"
  | "edgeSeparationFactor"
  | "highlightNode"
  | "ignoreEventlessOrder"
  | "is3DNetwork"
  | "isNetworkMetrics"
  | "labelNodePosition"
  | "moveParentsWithChildren"
  | "networkFreeze"
  | "networkFreezeOnLoad"
  | "networkLayoutType"
  | "networkMaxIterations"
  | "networkNodesOnTop"
  | "networkProgressBarPosition"
  | "networkRoot"
  | "networkVendor"
  | "nodeAlign"
  | "nodeBaseline"
  | "nodeColor"
  | "nodeFontSize"
  | "nodeFontStyle"
  | "nodeHighlightColor"
  | "nodeMargin"
  | "nodeRotate"
  | "nodeScaleFontFactor"
  | "nodeSizeScaleFactor"
  | "preScaleNetwork"
  | "showNetworkRadialLayout"
  | "showNodeNameSizeThreshold"
  | "showNodeNameThreshold"
  | "showNodeResizeHandles";
/** Config keys in the "Network Node and Edge Attributes" category. */
export type CXKeysNetworkNodeandEdgeAttributes =
  | "colorEdgeBy"
  | "colorNodeBy"
  | "maxEdgeSize"
  | "minEdgeSize"
  | "patternNodeBy"
  | "shapeNodeBy"
  | "sizeEdgeBy"
  | "sizeNodeBy";
/** Config keys in the "Oncoprint Graphs" category. */
export type CXKeysOncoprintGraphs =
  | "oncoprintAlteredText"
  | "oncoprintCNA"
  | "oncoprintColSummary"
  | "oncoprintEXP"
  | "oncoprintHeatmapPosition"
  | "oncoprintMUT"
  | "oncoprintNoAlterations"
  | "oncoprintPresorted"
  | "oncoprintRowSummary"
  | "showHeatmapOncoprint";
/** Config keys in the "OptionsWall Charts" category. */
export type CXKeysOptionsWallCharts =
  | "optionsWallCadence"
  | "optionsWallCallMax"
  | "optionsWallCallMin"
  | "optionsWallCenterSpot"
  | "optionsWallChain"
  | "optionsWallExpiry"
  | "optionsWallFlankMetric"
  | "optionsWallMoneynessShading"
  | "optionsWallPanelRatio"
  | "optionsWallPutMax"
  | "optionsWallPutMin"
  | "optionsWallPutsSide"
  | "optionsWallSpot";
/** Config keys in the "Overlays" category. */
export type CXKeysOverlays =
  | "maxOverlayStringLen"
  | "overlayTextAlign"
  | "overlayTextBaseline"
  | "overlayTextColor"
  | "overlayTextFontSize"
  | "overlayTextFontStyle"
  | "overlayTextMargin"
  | "overlayTextRotate"
  | "overlayTextScaleFontFactor"
  | "overlaysLegendPosition"
  | "overlaysThickness"
  | "panelOverlayBackgroundBorderColor"
  | "panelOverlayBackgroundBorderLineType"
  | "panelOverlayBackgroundBorderSize"
  | "panelOverlayBackgroundColor"
  | "showNameOverlays"
  | "showOverlays"
  | "showSmpOverlaysLegend"
  | "showValueOverlays"
  | "showVarOverlaysLegend"
  | "smpOverlayProperties"
  | "smpOverlays"
  | "smpOverlaysLegendColumns"
  | "varOverlayProperties"
  | "varOverlays"
  | "varOverlaysLegendColumns";
/** Config keys in the "Pie Charts" category. */
export type CXKeysPieCharts =
  | "maxPieSectors"
  | "pieColors"
  | "pieInnerRadius"
  | "pieLabelType"
  | "pieSegmentLabels"
  | "pieSegmentPrecision"
  | "pieSegmentSeparation"
  | "pieType"
  | "showPieSampleLabel"
  | "showPieValues"
  | "startPieSectors";
/** Config keys in the "Plot Area" category. */
export type CXKeysPlotArea =
  | "binAlignment"
  | "binned"
  | "blockContrast"
  | "dataValuesFrequency"
  | "dataValuesPosition"
  | "dotplotOutlineThreshold"
  | "guideStyle"
  | "guidesColor"
  | "guidesLength"
  | "guidesLineType"
  | "guidesShow"
  | "guidesTransparency"
  | "guidesWidth"
  | "is3DPlot"
  | "jitter"
  | "jitterFactor"
  | "linesOnGroups"
  | "objectBorderColor"
  | "objectColorTransparency"
  | "plotByVariable"
  | "showDataValues"
  | "sina";
/** Config keys in the "Plot Data Type" category. */
export type CXKeysPlotDataType =
  | "ggMatrixRole"
  | "isChat"
  | "isCxplot"
  | "isDataFrame"
  | "isGGMatrix"
  | "isR";
/** Config keys in the "Plot Mode" category. */
export type CXKeysPlotMode =
  | "isEditable"
  | "isReproducibleResearch"
  | "reproduceTime"
  | "reproduceVideoMode";
/** Config keys in the "Plot Performance" category. */
export type CXKeysPlotPerformance =
  | "overplotPixels";
/** Config keys in the "Plot View" category. */
export type CXKeysPlotView =
  | "view";
/** Config keys in the "Plot and Panel Areas" category. */
export type CXKeysPlotandPanelAreas =
  | "backgroundImage"
  | "backgroundImageSrc"
  | "backgroundType"
  | "panelBackgroundBorderColor"
  | "panelBackgroundBorderLineType"
  | "panelBackgroundBorderSize"
  | "panelBackgroundColor"
  | "plotBackgroundBorderColor"
  | "plotBackgroundBorderLineType"
  | "plotBackgroundBorderSize"
  | "plotBackgroundColor";
/** Config keys in the "Print" category. */
export type CXKeysPrint =
  | "cacheBase64"
  | "printMagnification"
  | "printThumbnail"
  | "printType"
  | "saveFilename";
/** Config keys in the "Quantile Regression Plots" category. */
export type CXKeysQuantileRegressionPlots =
  | "quantiles"
  | "showQuantileRegressionFit";
/** Config keys in the "R" category. */
export type CXKeysR =
  | "Rdataset"
  | "loadRDatasets";
/** Config keys in the "R-Axis" category. */
export type CXKeysRAxis =
  | "rAxis"
  | "rAxisCeilValue"
  | "rAxisExact"
  | "rAxisFactorValue"
  | "rAxisFloorValue"
  | "rAxisGridMajorColor"
  | "rAxisGridMajorLineType"
  | "rAxisGridMajorShow"
  | "rAxisGridMajorTransparency"
  | "rAxisGridMajorWidth"
  | "rAxisGridMinorColor"
  | "rAxisGridMinorLineType"
  | "rAxisGridMinorShow"
  | "rAxisGridMinorTransparency"
  | "rAxisGridMinorWidth"
  | "rAxisLabelOrientation"
  | "rAxisLogTicksColor"
  | "rAxisLogTicksLength"
  | "rAxisLogTicksLineType"
  | "rAxisLogTicksShow"
  | "rAxisLogTicksTransparency"
  | "rAxisLogTicksWidth"
  | "rAxisPercentShow"
  | "rAxisSetLabels"
  | "rAxisSetMinorValues"
  | "rAxisSetValues"
  | "rAxisShow"
  | "rAxisTextAlign"
  | "rAxisTextBaseline"
  | "rAxisTextColor"
  | "rAxisTextFontSize"
  | "rAxisTextFontStyle"
  | "rAxisTextMargin"
  | "rAxisTextRotate"
  | "rAxisTextScaleFontFactor"
  | "rAxisTickFormat"
  | "rAxisTicks"
  | "rAxisTicksColor"
  | "rAxisTicksLength"
  | "rAxisTicksLineType"
  | "rAxisTicksShow"
  | "rAxisTicksTransparency"
  | "rAxisTicksWidth"
  | "rAxisTime"
  | "rAxisTitle"
  | "rAxisTitleAlign"
  | "rAxisTitleBaseline"
  | "rAxisTitleColor"
  | "rAxisTitleDynamic"
  | "rAxisTitleFontSize"
  | "rAxisTitleFontStyle"
  | "rAxisTitleMargin"
  | "rAxisTitleRotate"
  | "rAxisTitleScaleFontFactor"
  | "rAxisTransform"
  | "rAxisTransformLinearTicks"
  | "rAxisTransformTicks"
  | "setMaxR"
  | "setMinR";
/** Config keys in the "Random" category. */
export type CXKeysRandom =
  | "pseudoRandom"
  | "randomMethod"
  | "randomSeed";
/** Config keys in the "Ranges" category. */
export type CXKeysRanges =
  | "rangeColorTransparency"
  | "rangeColors"
  | "rangeSegments"
  | "rangeStack"
  | "rangeStackShow";
/** Config keys in the "Regression" category. */
export type CXKeysRegression =
  | "regressionFitEquationPosition"
  | "regressionOrder"
  | "regressionType"
  | "showRegressionFit"
  | "showRegressionFitEquation"
  | "showRegressionFullRange";
/** Config keys in the "Ridgeline Plots" category. */
export type CXKeysRidgelinePlots =
  | "ridgelineScale"
  | "ridgelineViolin";
/** Config keys in the "Samples" category. */
export type CXKeysSamples =
  | "highlightSmp"
  | "maxSmpStringLen"
  | "showSampleNames"
  | "smpHighlightColor"
  | "smpLabelAutoAlignPosition"
  | "smpLabelImage"
  | "smpLabelImageRound"
  | "smpLabelInterval"
  | "smpTextAlign"
  | "smpTextBaseline"
  | "smpTextColor"
  | "smpTextFontSize"
  | "smpTextFontStyle"
  | "smpTextMargin"
  | "smpTextRotate"
  | "smpTextScaleFontFactor"
  | "smpTitle"
  | "smpTitleAlign"
  | "smpTitleBaseline"
  | "smpTitleColor"
  | "smpTitleFontSize"
  | "smpTitleFontStyle"
  | "smpTitleMargin"
  | "smpTitleRotate"
  | "smpTitleScaleFontFactor";
/** Config keys in the "Sankey Diagrams" category. */
export type CXKeysSankeyDiagrams =
  | "sankeyAxes"
  | "sankeyAxesOrder"
  | "sankeyColorNodesByValue"
  | "sankeyLinkLineWidth"
  | "sankeyLinkOrder"
  | "sankeyLinksColor"
  | "sankeyLinksOpacity"
  | "sankeyLodeGuidance"
  | "sankeyNodeColorMap"
  | "sankeyNodeLegendTitle"
  | "sankeyNodePadding"
  | "sankeyNodeSort"
  | "sankeyNodeWidth"
  | "sankeyNodesColor"
  | "sankeyOutlineColor"
  | "sankeySource"
  | "sankeyTarget"
  | "sankeyTextAlign"
  | "sankeyTextAuto"
  | "sankeyTextBaseline"
  | "sankeyTextColor"
  | "sankeyTextFontSize"
  | "sankeyTextFontStyle"
  | "sankeyTextInside"
  | "sankeyTextMargin"
  | "sankeyTextRotate"
  | "sankeyTextScaleFontFactor"
  | "sankeyTextShow"
  | "sankeyTitleAlign"
  | "sankeyTitleBaseline"
  | "sankeyTitleColor"
  | "sankeyTitleFontSize"
  | "sankeyTitleFontStyle"
  | "sankeyTitleMargin"
  | "sankeyTitlePosition"
  | "sankeyTitleRotate"
  | "sankeyTitleScaleFontFactor"
  | "sankeyTitleShow"
  | "sankeyType";
/** Config keys in the "Scatter Plot Matrix" category. */
export type CXKeysScatterPlotMatrix =
  | "scatterPlotMatrix"
  | "scatterPlotMatrixType"
  | "showScatterPlotMatrixLabels";
/** Config keys in the "Scatter Plots" category. */
export type CXKeysScatterPlots =
  | "dataLabelBackgroundBorderColor"
  | "dataLabelBackgroundBorderLineType"
  | "dataLabelBackgroundBorderSize"
  | "dataLabelBackgroundColor"
  | "functionColor"
  | "groupingFactorWindow"
  | "isBumpPlot"
  | "isDataLabels"
  | "isDataLabelsBackgroundColor"
  | "scatterAxesEqual"
  | "scatterDataPointsColor"
  | "scatterLineAlpha"
  | "scatterOutlineThreshold"
  | "scatterPointAlpha"
  | "scatterType"
  | "showDataLabels"
  | "showScatterLineOriginalData";
/** Config keys in the "Scrollbar" category. */
export type CXKeysScrollbar =
  | "scrollbarAltBackgroundColor"
  | "scrollbarBackgroundColor"
  | "scrollbarThumbColor"
  | "scrollbarThumbHoverColor";
/** Config keys in the "Shadows" category. */
export type CXKeysShadows =
  | "shadowBlur"
  | "shadowColor"
  | "shadowOffsetX"
  | "shadowOffsetY"
  | "showShadow"
  | "showTextShadow";
/** Config keys in the "Shapes" category. */
export type CXKeysShapes =
  | "plotStyle"
  | "roundedPolygonRadius"
  | "useRoundRectangles";
/** Config keys in the "Sizes" category. */
export type CXKeysSizes =
  | "initialSize"
  | "sizeStep"
  | "sizes";
/** Config keys in the "Stream Plots" category. */
export type CXKeysStreamPlots =
  | "scatterStreamBandwidth"
  | "scatterStreamExtraSpan"
  | "scatterStreamNumber"
  | "scatterStreamTrueRange"
  | "scatterStreamType"
  | "scatterStreamWiggles";
/** Config keys in the "Swimmer Graphs" category. */
export type CXKeysSwimmerGraphs =
  | "swimEnd"
  | "swimHigh"
  | "swimHighCap"
  | "swimStart"
  | "swimStatus";
/** Config keys in the "Tag Cloud" category. */
export type CXKeysTagCloud =
  | "tagCloudShape"
  | "tagCloudTextEllipticity"
  | "tagCloudTextGridSize"
  | "tagCloudTextRotateRatio"
  | "tagCloudTextWeightFactor";
/** Config keys in the "Text" category. */
export type CXKeysText =
  | "align"
  | "autoScaleFont"
  | "baseline"
  | "fontColor"
  | "fontName"
  | "fontScaleFontFactor"
  | "fontSize"
  | "fontStyle"
  | "fonts"
  | "fontsExternal"
  | "maxTextSize"
  | "minTextSize";
/** Config keys in the "Text Placement" category. */
export type CXKeysTextPlacement =
  | "optimizeTextPosition"
  | "optimizeTextPositionCooling"
  | "optimizeTextPositionEnforceBounds"
  | "optimizeTextPositionStrategy"
  | "optimizeTextPositionTemperature";
/** Config keys in the "Titles and Subtitles" category. */
export type CXKeysTitlesandSubtitles =
  | "subtitle"
  | "subtitleAlign"
  | "subtitleBaseline"
  | "subtitleColor"
  | "subtitleFontSize"
  | "subtitleFontStyle"
  | "subtitleMargin"
  | "subtitleRotate"
  | "subtitleScaleFontFactor"
  | "title"
  | "titleAlign"
  | "titleBaseline"
  | "titleColor"
  | "titleFontSize"
  | "titleFontStyle"
  | "titleMargin"
  | "titleRotate"
  | "titleScaleFontFactor";
/** Config keys in the "Tooltip" category. */
export type CXKeysTooltip =
  | "tooltipBackgroundColor"
  | "tooltipBorderColor"
  | "tooltipFontColor"
  | "tooltipTransparency";
/** Config keys in the "Transparency" category. */
export type CXKeysTransparency =
  | "transparency"
  | "transparencyHidden";
/** Config keys in the "Tree Bracket" category. */
export type CXKeysTreeBracket =
  | "treeBracketFactor"
  | "treeBracketLengthFactor";
/** Config keys in the "Treemap Graphs" category. */
export type CXKeysTreemapGraphs =
  | "treemapBorderColor"
  | "treemapBorderWidth";
/** Config keys in the "Trees" category. */
export type CXKeysTrees =
  | "treeClickDisable"
  | "treeInverted"
  | "treeLabelAlign"
  | "treeLinkColor"
  | "treeLinkWidth"
  | "treeNodeOutlineColor"
  | "treeNodeSizeScaleFactor"
  | "treeType";
/** Config keys in the "UpSet Plots" category. */
export type CXKeysUpSetPlots =
  | "nUpSets"
  | "upSetSets"
  | "upsetLineSizeFactor"
  | "upsetMainBarColor"
  | "upsetMatrixColor"
  | "upsetMatrixDotAlpha"
  | "upsetMatrixPlotBarRatio"
  | "upsetPointSizeFactor"
  | "upsetSetsBarColor"
  | "upsetShadeAlpha"
  | "upsetShadeColor";
/** Config keys in the "Variables" category. */
export type CXKeysVariables =
  | "highlightVar"
  | "maxVarStringLen"
  | "showVariableNames"
  | "varHighlightColor"
  | "varLabelInterval"
  | "varTextAlign"
  | "varTextBaseline"
  | "varTextColor"
  | "varTextFontSize"
  | "varTextFontStyle"
  | "varTextMargin"
  | "varTextRotate"
  | "varTextScaleFontFactor"
  | "varTitle"
  | "varTitleAlign"
  | "varTitleBaseline"
  | "varTitleColor"
  | "varTitleFontSize"
  | "varTitleFontStyle"
  | "varTitleMargin"
  | "varTitleRotate"
  | "varTitleScaleFontFactor";
/** Config keys in the "Venn Diagrams" category. */
export type CXKeysVennDiagrams =
  | "vennColors"
  | "vennGroups"
  | "vennLegendColors";
/** Config keys in the "Violin Plots" category. */
export type CXKeysViolinPlots =
  | "boxplotWidthRatioIfViolin"
  | "showBoxplotIfViolin"
  | "showViolinBoxplot"
  | "showViolinQuantiles"
  | "violinBorderColor"
  | "violinColor"
  | "violinPartitionOrder"
  | "violinPointsSide"
  | "violinScale"
  | "violinSide"
  | "violinTransparency"
  | "violinTrim";
/** Config keys in the "Visium Plots" category. */
export type CXKeysVisiumPlots =
  | "visiumFixedAspectRatio"
  | "visiumFlip"
  | "visiumPanning";
/** Config keys in the "Waterfall Graphs" category. */
export type CXKeysWaterfallGraphs =
  | "waterfallDecreaseColor"
  | "waterfallIncreaseColor"
  | "waterfallNetColor";
/** Config keys in the "Workflow Charts" category. */
export type CXKeysWorkflowCharts =
  | "workflowActiveColor"
  | "workflowBackgroundColor"
  | "workflowBorderColor"
  | "workflowButtonBackgroundColor"
  | "workflowButtonBorderColor"
  | "workflowCurrentAlign"
  | "workflowCurrentBaseline"
  | "workflowCurrentColor"
  | "workflowCurrentFontSize"
  | "workflowCurrentFontStyle"
  | "workflowCurrentMargin"
  | "workflowCurrentRotate"
  | "workflowCurrentScaleFontFactor"
  | "workflowFrameDuration"
  | "workflowHoverColor"
  | "workflowListLabelFontSize"
  | "workflowListTextColor"
  | "workflowListTickColor"
  | "workflowListTickFontSize"
  | "workflowLoop"
  | "workflowSliderFillColor"
  | "workflowSliderThumbBorderColor"
  | "workflowSliderThumbColor"
  | "workflowSliderTrackColor"
  | "workflowTextColor"
  | "workflowTimelineBorderColor"
  | "workflowWidth";
/** Config keys in the "X-Axis" category. */
export type CXKeysXAxis =
  | "setMaxX"
  | "setMaxX2"
  | "setMinX"
  | "setMinX2"
  | "setPanningMaxX"
  | "setPanningMinX"
  | "xAxis"
  | "xAxis2"
  | "xAxis2Rotate"
  | "xAxis2Show"
  | "xAxis2TickFormat"
  | "xAxis2Ticks"
  | "xAxis2Title"
  | "xAxisCeilValue"
  | "xAxisCurrent"
  | "xAxisExact"
  | "xAxisFactorValue"
  | "xAxisFloorValue"
  | "xAxisGridMajorColor"
  | "xAxisGridMajorLineType"
  | "xAxisGridMajorShow"
  | "xAxisGridMajorTransparency"
  | "xAxisGridMajorWidth"
  | "xAxisGridMinorColor"
  | "xAxisGridMinorLineType"
  | "xAxisGridMinorShow"
  | "xAxisGridMinorTransparency"
  | "xAxisGridMinorWidth"
  | "xAxisHistogramHeight"
  | "xAxisHistogramShow"
  | "xAxisLineBottomColor"
  | "xAxisLineBottomLineType"
  | "xAxisLineBottomShow"
  | "xAxisLineBottomTransparency"
  | "xAxisLineBottomWidth"
  | "xAxisLineTopColor"
  | "xAxisLineTopLineType"
  | "xAxisLineTopShow"
  | "xAxisLineTopTransparency"
  | "xAxisLineTopWidth"
  | "xAxisLogTicksColor"
  | "xAxisLogTicksLength"
  | "xAxisLogTicksLineType"
  | "xAxisLogTicksShow"
  | "xAxisLogTicksTransparency"
  | "xAxisLogTicksWidth"
  | "xAxisMinorTicks"
  | "xAxisRugHeight"
  | "xAxisRugPosition"
  | "xAxisRugShow"
  | "xAxisSetLabels"
  | "xAxisSetMinorValues"
  | "xAxisSetValues"
  | "xAxisShow"
  | "xAxisTextAlign"
  | "xAxisTextBaseline"
  | "xAxisTextColor"
  | "xAxisTextFontSize"
  | "xAxisTextFontStyle"
  | "xAxisTextMargin"
  | "xAxisTextRotate"
  | "xAxisTextScaleFontFactor"
  | "xAxisTickFormat"
  | "xAxisTicks"
  | "xAxisTicksColor"
  | "xAxisTicksLength"
  | "xAxisTicksLineType"
  | "xAxisTicksShow"
  | "xAxisTicksTransparency"
  | "xAxisTicksWidth"
  | "xAxisTime"
  | "xAxisTitle"
  | "xAxisTitleAlign"
  | "xAxisTitleBaseline"
  | "xAxisTitleColor"
  | "xAxisTitleDynamic"
  | "xAxisTitleFontSize"
  | "xAxisTitleFontStyle"
  | "xAxisTitleMargin"
  | "xAxisTitleRotate"
  | "xAxisTitleScaleFontFactor"
  | "xAxisTransform"
  | "xAxisTransformLinearTicks"
  | "xAxisTransformTicks";
/** Config keys in the "Y-Axis" category. */
export type CXKeysYAxis =
  | "setMaxY"
  | "setMinY"
  | "setPanningMaxY"
  | "setPanningMinY"
  | "yAxis"
  | "yAxis2Rotate"
  | "yAxis2Show"
  | "yAxis2Title"
  | "yAxisCeilValue"
  | "yAxisCurrent"
  | "yAxisExact"
  | "yAxisFactorValue"
  | "yAxisFloorValue"
  | "yAxisGridMajorColor"
  | "yAxisGridMajorLineType"
  | "yAxisGridMajorShow"
  | "yAxisGridMajorTransparency"
  | "yAxisGridMajorWidth"
  | "yAxisGridMinorColor"
  | "yAxisGridMinorLineType"
  | "yAxisGridMinorShow"
  | "yAxisGridMinorTransparency"
  | "yAxisGridMinorWidth"
  | "yAxisHistogramHeight"
  | "yAxisHistogramShow"
  | "yAxisLineLeftColor"
  | "yAxisLineLeftLineType"
  | "yAxisLineLeftShow"
  | "yAxisLineLeftTransparency"
  | "yAxisLineLeftWidth"
  | "yAxisLineRightColor"
  | "yAxisLineRightLineType"
  | "yAxisLineRightShow"
  | "yAxisLineRightTransparency"
  | "yAxisLineRightWidth"
  | "yAxisLogTicksColor"
  | "yAxisLogTicksLength"
  | "yAxisLogTicksLineType"
  | "yAxisLogTicksShow"
  | "yAxisLogTicksTransparency"
  | "yAxisLogTicksWidth"
  | "yAxisMinorTicks"
  | "yAxisRugHeight"
  | "yAxisRugPosition"
  | "yAxisRugShow"
  | "yAxisSetLabels"
  | "yAxisSetMinorValues"
  | "yAxisSetValues"
  | "yAxisShow"
  | "yAxisTextAlign"
  | "yAxisTextBaseline"
  | "yAxisTextColor"
  | "yAxisTextFontSize"
  | "yAxisTextFontStyle"
  | "yAxisTextMargin"
  | "yAxisTextRotate"
  | "yAxisTextScaleFontFactor"
  | "yAxisTickFormat"
  | "yAxisTicks"
  | "yAxisTicksColor"
  | "yAxisTicksLength"
  | "yAxisTicksLineType"
  | "yAxisTicksShow"
  | "yAxisTicksTransparency"
  | "yAxisTicksWidth"
  | "yAxisTime"
  | "yAxisTitle"
  | "yAxisTitleAlign"
  | "yAxisTitleBaseline"
  | "yAxisTitleColor"
  | "yAxisTitleDynamic"
  | "yAxisTitleFontSize"
  | "yAxisTitleFontStyle"
  | "yAxisTitleMargin"
  | "yAxisTitleRotate"
  | "yAxisTitleScaleFontFactor"
  | "yAxisTransform"
  | "yAxisTransformLinearTicks"
  | "yAxisTransformTicks";
/** Config keys in the "Z-Axis" category. */
export type CXKeysZAxis =
  | "setMaxZ"
  | "setMinZ"
  | "zAxis"
  | "zAxis2Title"
  | "zAxisCeilValue"
  | "zAxisCurrent"
  | "zAxisExact"
  | "zAxisFactorValue"
  | "zAxisFloorValue"
  | "zAxisGridMajorColor"
  | "zAxisGridMajorLineType"
  | "zAxisGridMajorShow"
  | "zAxisGridMajorTransparency"
  | "zAxisGridMajorWidth"
  | "zAxisGridMinorColor"
  | "zAxisGridMinorLineType"
  | "zAxisGridMinorShow"
  | "zAxisGridMinorTransparency"
  | "zAxisGridMinorWidth"
  | "zAxisLogTicksColor"
  | "zAxisLogTicksLength"
  | "zAxisLogTicksLineType"
  | "zAxisLogTicksShow"
  | "zAxisLogTicksTransparency"
  | "zAxisLogTicksWidth"
  | "zAxisSetLabels"
  | "zAxisSetMinorValues"
  | "zAxisSetValues"
  | "zAxisShow"
  | "zAxisTextAlign"
  | "zAxisTextBaseline"
  | "zAxisTextColor"
  | "zAxisTextFontSize"
  | "zAxisTextFontStyle"
  | "zAxisTextMargin"
  | "zAxisTextRotate"
  | "zAxisTextScaleFontFactor"
  | "zAxisTickFormat"
  | "zAxisTicks"
  | "zAxisTicksColor"
  | "zAxisTicksLength"
  | "zAxisTicksLineType"
  | "zAxisTicksShow"
  | "zAxisTicksTransparency"
  | "zAxisTicksWidth"
  | "zAxisTime"
  | "zAxisTitle"
  | "zAxisTitleAlign"
  | "zAxisTitleBaseline"
  | "zAxisTitleColor"
  | "zAxisTitleDynamic"
  | "zAxisTitleFontSize"
  | "zAxisTitleFontStyle"
  | "zAxisTitleMargin"
  | "zAxisTitleRotate"
  | "zAxisTitleScaleFontFactor"
  | "zAxisTransform"
  | "zAxisTransformLinearTicks"
  | "zAxisTransformTicks";
/** Config keys in the "Zooming, Panning and Resizing" category. */
export type CXKeysZoomingPanningandResizing =
  | "panningStep"
  | "panningX"
  | "panningY"
  | "zoom"
  | "zoomDisable"
  | "zoomSamplesDisable"
  | "zoomScale"
  | "zoomStep"
  | "zoomVariablesDisable"
  | "zoomXDisable"
  | "zoomYDisable";
/** Config keys in the "cxplot" category. */
export type CXKeyscxplot =
  | "aes"
  | "ggplot";

/** For each graph type, the union of config keys that apply to it. */
export interface CXGraphTypeKeys {
  "Alluvial": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysSankeyDiagrams | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Area": CXKeysAnimationsandVisualizationTransitions | CXKeysAreaGraphs | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "AreaLine": CXKeysAnimationsandVisualizationTransitions | CXKeysAreaGraphs | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Bar": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysLollipopGraphs | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysRanges | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysSwimmerGraphs | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWaterfallGraphs | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "BarLine": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Boxplot": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBoxplotGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysViolinPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Bin": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Binplot": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Bubble": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBubbleGraphs | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Bullet": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysBulletGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysLollipopGraphs | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysRanges | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysSwimmerGraphs | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWaterfallGraphs | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Bump": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "CDF": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Chord": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysChordGraphs | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Circular": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Cleveland": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Contour": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Correlation": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysCorrelationGraphs | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Density": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDensityPlots | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Distribution": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDensityPlots | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Donut": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "DotLine": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Dotplot": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Dumbbell": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Fish": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysFishGraphs | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Gantt": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGanttCharts | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Genome": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataSelection | CXKeysDataTable | CXKeysDataUIWidgets | CXKeysDebug | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGenomeBrowser | CXKeysGenomeBrowserFeatures | CXKeysGenomeBrowserSequences | CXKeysGenomeBrowserTracks | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysWorkflowCharts | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Heatmap": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHeatmapColorIndicators | CXKeysHeatmapGraphs | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOncoprintGraphs | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysUpSetPlots | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Hex": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Hexplot": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Histogram": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDensityPlots | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "KaplanMeier": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Line": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Lollipop": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysLollipopGraphs | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysRanges | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysSwimmerGraphs | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWaterfallGraphs | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Map": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMaps | CXKeysMapsAlbers | CXKeysMapsLeaflet | CXKeysMapsOrthographic | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Meter": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMeterGraphs | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysRanges | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Network": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataSelection | CXKeysDataTable | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysNetworkAlgorithmParameters | CXKeysNetworkColaAlgorithmParameters | CXKeysNetworkCommunities | CXKeysNetworkGraphs | CXKeysNetworkNodeandEdgeAttributes | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysWorkflowCharts | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Oncoprint": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHeatmapColorIndicators | CXKeysHeatmapGraphs | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOncoprintGraphs | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysUpSetPlots | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "OptionsWall": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOptionsWallCharts | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "ParallelCoordinates": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Pareto": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Pie": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPieCharts | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "QQ": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Quantile": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Radar": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Ribbon": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysSankeyDiagrams | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Ridgeline": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDensityPlots | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Sankey": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysSankeyDiagrams | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Scatter2D": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Scatter3D": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "ScatterBubble2D": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Spaghetti": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "SPLOM": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Stacked": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "StackedLine": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "StackedPercent": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "StackedPercentLine": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLineGraphs | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Streamgraph": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Sunburst": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCircularGraphArcSectors | CXKeysCircularGraphConnections | CXKeysCircularGraphTracks | CXKeysCircularGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysIdeograms | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRAxis | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "TagCloud": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysTagCloud | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "TimeSeries": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Tornado": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Tree": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysTreeBracket | CXKeysTrees | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "TreeBracket": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHierarchy | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysTreeBracket | CXKeysTrees | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Treemap": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysTreemapGraphs | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Upset": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHeatmapColorIndicators | CXKeysHeatmapGraphs | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOncoprintGraphs | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysUpSetPlots | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Violin": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBoxplotGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysDensityPlots | CXKeysDotplotGraphs | CXKeysDumbbellGraphs | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysViolinPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Volcano": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBinPlots | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysConfidenceIntervals | CXKeysContextMenu | CXKeysContours | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysErrorBars | CXKeysEvents | CXKeysFitLines | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysHistograms | CXKeysImages | CXKeysKaplanMeierPlots | CXKeysLLM | CXKeysLines | CXKeysLoess | CXKeysManhattanPlots | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysQuantileRegressionPlots | CXKeysR | CXKeysRandom | CXKeysRegression | CXKeysRidgelinePlots | CXKeysSamples | CXKeysScatterPlotMatrix | CXKeysScatterPlots | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysStreamPlots | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysVisiumPlots | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysYAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Venn": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataSelection | CXKeysDataTable | CXKeysDataUIWidgets | CXKeysDebug | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVennDiagrams | CXKeysWorkflowCharts | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "Waterfall": CXKeys3DAttributes | CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysBarGraphs | CXKeysCitationsorReferences | CXKeysClustering | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysDecorations | CXKeysDendrograms | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLegends | CXKeysLines | CXKeysLollipopGraphs | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysOverlays | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysRanges | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysSwimmerGraphs | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWaterfallGraphs | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
  "WordCloud": CXKeysAnimationsandVisualizationTransitions | CXKeysAspectRatioSpaceandWidth | CXKeysAxis | CXKeysCitationsorReferences | CXKeysColors | CXKeysCombinationPlotStrips | CXKeysCombinationPlots | CXKeysContextMenu | CXKeysDOE | CXKeysData | CXKeysDataContext | CXKeysDataCustomizer | CXKeysDataFaceting | CXKeysDataFilters | CXKeysDataPointAttributes | CXKeysDataRatioReference | CXKeysDataSelection | CXKeysDataSorting | CXKeysDataTable | CXKeysDataTimeSeries | CXKeysDataTransformation | CXKeysDataUIWidgets | CXKeysDebug | CXKeysErrorBars | CXKeysEvents | CXKeysForegroundandBackground | CXKeysGeneral | CXKeysGeneralAttributes | CXKeysGeneralOneDimensionalGraphs | CXKeysGradients | CXKeysGraphMetadata | CXKeysGreyOut | CXKeysHTMLWidgets | CXKeysImages | CXKeysLLM | CXKeysLines | CXKeysMarginalText | CXKeysMargins | CXKeysMissingData | CXKeysPlotArea | CXKeysPlotDataType | CXKeysPlotMode | CXKeysPlotPerformance | CXKeysPlotView | CXKeysPlotandPanelAreas | CXKeysPrint | CXKeysR | CXKeysRandom | CXKeysSamples | CXKeysScrollbar | CXKeysShadows | CXKeysShapes | CXKeysSizes | CXKeysTagCloud | CXKeysText | CXKeysTextPlacement | CXKeysTitlesandSubtitles | CXKeysTooltip | CXKeysTransparency | CXKeysVariables | CXKeysWorkflowCharts | CXKeysXAxis | CXKeysZoomingPanningandResizing | CXKeyscxplot;
}

/**
 * The configuration keys that apply to ONE graph type, e.g.
 * `const c: CXConfigFor<"Heatmap"> = { graphType: "Heatmap", heatmapType: "..." }`.
 * Autocomplete lists only that type's keys; `graphType` is pinned to `G`.
 * (Keys outside the set are still accepted at runtime — use `CXConfig` for the
 * permissive view.)
 */
export type CXConfigFor<G extends CXGraphType> =
  Pick<CXConfig, CXGraphTypeKeys[G]> & { graphType: G };

/** A live CanvasXpress chart instance. */
export interface CanvasXpressInstance {
  // ---- instance state (commonly read by integrators) --------------------
  target: HTMLCanvasElement;
  data: CXData;
  config: CXConfig;
  /** The canonical graph type after alias normalization (e.g. "Volcano" -> "Scatter2D"). */
  graphType: CXGraphType;

  // ---- instance methods -------------------------------------------------
  /** Replace the chart data. `redraw` defaults true; `soft`/`config` are optional refinements. */
  updateData(data: CXData, redraw?: boolean, soft?: boolean, config?: CXConfig): void;
  /** Merge new configuration. `noReset` keeps current view state where possible. */
  updateConfig(config: CXConfig, noReset?: boolean): void;
  /** Reset configuration to defaults, optionally preserving the named keys. */
  resetConfig(keep?: string[]): void;
  /** Resize the chart. Pass `noDraw = true` to defer the redraw. */
  setDimensions(width: number, height: number, noDraw?: boolean): void;
  /** Re-render from current data/config. */
  render(...args: unknown[]): void;
  /** Redraw the current frame. */
  redraw(...args: unknown[]): void;
  /** Force a (re)draw. */
  draw(options?: unknown): void;
  /** Tear down the instance and free its canvas/timers. */
  destroy(): void;

  [key: string]: unknown;
}

/** The CanvasXpress constructor with its static helpers. */
export interface CanvasXpressConstructor {
  new (
    target: CXTarget,
    data?: CXData,
    config?: CXConfig,
    events?: CXEvents,
    info?: object,
    afterRender?: CXAfterRender,
    callback?: (cx: CanvasXpressInstance) => void,
    noValidate?: boolean,
    synchronous?: boolean
  ): CanvasXpressInstance;
  prototype: CanvasXpressInstance;
  // ---- static factory / lifecycle --------------------------------------
  create(target: CXTarget, data?: CXData, config?: CXConfig): CanvasXpressInstance;
  createObject(
    target: CXTarget, data?: CXData, config?: CXConfig, events?: CXEvents,
    info?: object, afterRender?: CXAfterRender,
    callback?: (cx: CanvasXpressInstance) => void, noValidate?: boolean
  ): CanvasXpressInstance;
  getObject(id: string, create?: boolean): CanvasXpressInstance | undefined;
  destroy(id?: string, s?: unknown): void;
  inject(target: CXTarget): CanvasXpressInstance;
  /** All live instances on the page. */
  instances: CanvasXpressInstance[];
  /** Engine version, e.g. "68.8". */
  version: string;

  // ---- static data loaders ---------------------------------------------
  loadRemoteData(
    target: CXTarget, url: string, config?: CXConfig,
    events?: CXEvents, callback?: (cx: CanvasXpressInstance) => void
  ): void;
  json(url: string, callback: (data: unknown) => void): void;
  csv(url: string, callback: (data: unknown) => void): void;
  svg(url: string, id: string, callback: (data: unknown) => void): void;

  // ---- static data reshaping helpers -----------------------------------
  melt(d: unknown, i: unknown, m: unknown, vn?: unknown, nn?: unknown): unknown;
  pivot(d: unknown, r: unknown, c: unknown, v: unknown): unknown;

  // ---- page-level saved states -----------------------------------------
  savePageState(name: string, group?: string): void;
  applyPageState(name: string, group?: string): void;
  deletePageState(name: string, group?: string): void;
  getPageStates(group?: string): unknown;

  [key: string]: unknown;
}

/** ggplot-style plotting entry point (grammar of graphics). */
export type CXPlotFn = (target: CXTarget, data?: CXData, config?: CXConfig, events?: CXEvents) => CanvasXpressInstance;
/** Aesthetic-mapping helper used by the cxplot grammar. */
export type CXAesFn = (...mappings: unknown[]) => unknown;

export declare const CanvasXpress: CanvasXpressConstructor;
export type CanvasXpress = CanvasXpressInstance;
export default CanvasXpress;

// Ambient global for <script>-tag consumers who use the library without a bundler.
declare global {
  // eslint-disable-next-line no-var
  var CanvasXpress: CanvasXpressConstructor;
}
