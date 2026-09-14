// Type definitions for CanvasXpress
// Project: https://www.canvasxpress.org
//
// GENERATED FILE — do not edit by hand.
// Produced by tools/schema/generate-dts.js from
// data/schema/canvasxpress-config-latest.schema.json.
// Regenerate with:  node tools/schema/generate-dts.js   (or build.py --schema)
//
// Types-only sidecar: contains NO runtime code, is never loaded by the browser,
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
  click?: (o: any, e: MouseEvent, t: CanvasXpress) => void;
  dblclick?: (o: any, e: MouseEvent, t: CanvasXpress) => void;
  mousemove?: (o: any, e: MouseEvent, t: CanvasXpress) => void;
  mouseout?: (o: any, e: MouseEvent, t: CanvasXpress) => void;
  [key: string]: ((o: any, e: Event, t: CanvasXpress) => void) | undefined;
}

/** A post-render call: [methodName, ...args] applied after the chart draws. */
export type CXAfterRender = Array<[string, ...unknown[]]>;

/**
 * Full chart configuration — one property per parameter in the CanvasXpress
 * config schema (1686 keys). String enums become open literal
 * unions; the index signature keeps obfuscation aliases and any newer key valid.
 */
export interface CXConfig {
  /**
   * Object to hold the info for the R dataset loaded
   * @default {}
   */
  Rdataset?: Record<string, unknown>;
  /**
   * Flag to ensure the heatmap indicator scales appropriately when the graph is rendered or
   * the user manually resizes the graph, the adjustAspectRatio flag must be set to true for
   * the adjustAspectRatioHeatmapIndicator to take effect
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
  aes?: Record<string, unknown>;
  /**
   * Flexible aggregation (Tableau-style materialized group-by). Each entry is { by:[annotation
   * names], defaultFn, overrides:{ variable: fn }, sep? } where fn is mean | median | sum |
   * min | max | sd | count | first. Collapses the samples by the grouping annotation(s) so the
   * distinct group keys become the new samples, each variable reduced per group. Applied at
   * load AFTER calculatedFields; serialized so it persists and reproduces
   * @default []
   */
  aggregations?: unknown[];
  /**
   * Default horizontal alignment for drawing text
   * @default "center"
   */
  align?: "right" | "center" | "left" | (string & {});
  /**
   * Array containing additional data files to append to networks. Useful for loading KEGG and
   * Wikipatways to decorate the nodes and the edges
   * @default []
   */
  appendNetworkData?: unknown[];
  /**
   * Style for area graphs. The options include solid which is the default, translucent, and
   * outlined
   * @default "solid"
   */
  areaStyle?: "solid" | "translucent" | "outlined" | (string & {});
  /**
   * Types of area graphs when displaying multiple series. The options include overlapping
   * which is the default, stacked, and percent area graphs
   * @default "overlapping"
   */
  areaType?: "overlapping" | "stacked" | "percent" | (string & {});
  /**
   * Manhattan Chromosomes arm length is a sorted array by chromosome with the length in base
   * pairs for each chromosomeshort arm. It has to have the same dimesions as the
   * chromosomeLengths
   * @default []
   */
  armLengths?: unknown[];
  /**
   * The angle for the head of the arrow
   * @default 22.5
   */
  arrowHeadAngle?: number;
  /**
   * Size in pixels of the arrow head in arrow lines
   * @default 10
   */
  arrowHeadSize?: number;
  /**
   * Type for the head of the arrows
   * @default "filledArc"
   */
  arrowHeadType?: "wire" | "filledStraight" | "filledArc" | "filledQuadratic" | "filledBezier" | (string & {});
  /**
   * Flag to use white fill for the arrow head
   * @default false
   */
  arrowHeadTypeOpen?: boolean;
  /**
   * Factor to use to bend the quadratic lines
   * @default 2.3
   */
  arrowQuadraticFactor?: number;
  /**
   * Object with configurations to create DOE
   * @default false
   */
  asDOE?: Record<string, unknown>;
  /**
   * Array containing variable names. Numeric variable data (in rows) to be treated as a sample
   * factor (move from y to x object). This parameter accomplishes the same as the function
   * switchVarToAnnotation at load time. It can be used in conjunction with the parameter
   * stringSampleFactors to be treated as a string. TO DO: write example
   * @default []
   */
  asSampleFactors?: unknown[];
  /**
   * Array containing sample names. Numeric sample data (in columns) to be treated as a
   * variable factor (move from y to z object). This parameter accomplishes the same as the
   * function switchSmpToAnnotation at load time. It can be used in conjunction with the
   * parameter stringVariableFactors to be treated as a string. TO DO: write example
   * @default []
   */
  asVariableFactors?: unknown[];
  /**
   * Type of function to apply when calculating attractive force in forceDirected network
   * layouts. Fruchterman-Reingold uses square while Eades uses log
   * @default "square"
   */
  attractiveForceFunction?: "square" | "cubic" | "log" | "pow" | "sqrt" | (string & {});
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
   * @default "rPretty"
   */
  axisAlgorithm?: "heckbert" | "wilkinson" | "wilkinsonExtended" | "rPretty" | (string & {});
  /**
   * Flag to coordinate xAxis and xAxis2 in *-Line combination plots
   * @default false
   */
  axisCoordinate?: boolean;
  /**
   * Percentage to extend the values of the data to ensure all the data points are plotted
   * inside and not over the edges of the graph
   * @default 0.1
   */
  axisExtension?: number;
  /**
   * Flag to indicate whether to use loose positioning when using the wilkinson algorithm to
   * position the labels on the axis. There will not be a difference most of the times
   * @default false
   */
  axisWilkinsonLoose?: boolean;
  /**
   * Color for the Specifies the default background color for elements in the canvas not
   * covered in a more specific configuration property
   * @default "rgb(255,255,255)"
   */
  background?: string;
  /**
   * Specifies the url for the background image when the background type is of the type image
   * or panelImage
   * @default false
   */
  backgroundImage?: string;
  /**
   * Specifies the source for the background image when the background type is of the type
   * image or panelImage
   * @default false
   */
  backgroundImageSrc?: string;
  /**
   * Specifies the style for the background of the canvas. The canvas background is composed of
   * a frame with a panel where the data is plotted. Either of these elements the may be a
   * solid or gradient color or an image of your choosing. The colorScheme property will be
   * used If gradient is specified
   * @default "solid"
   */
  backgroundType?: "solid" | "gradient" | "panel" | "panelGradient" | "panelSolidGradient" | "image" | "panelImage" | (string & {});
  /**
   * Bandwidth adjust for the window
   * @default 1
   */
  bandwidthAdjust?: number;
  /**
   * Bandwidth cut
   * @default 3
   */
  bandwidthCut?: number;
  /**
   * Bandwidth rule
   * @default "nrd0"
   */
  bandwidthRule?: "nrd0" | "nrd" | "silverman" | (string & {});
  /**
   * Flag to use open pattern for the lollipop
   * @default false
   */
  barLollipopOpen?: boolean;
  /**
   * Flag to produce normal or other modifications of bar graphs
   * @default "normal"
   */
  barType?: "normal" | "lollipop" | "arrow" | "bullet" | "lollipopBullet" | "swimmer" | "waterfall" | (string & {});
  /**
   * Flag to force zero in bar graphs with positive values
   * @default true
   */
  barZero?: boolean;
  /**
   * Default vertical alignment for drawing text
   * @default "middle"
   */
  baseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Alignment for the data points when binned
   * @default "center"
   */
  binAlignment?: "left" | "center" | "right" | (string & {});
  /**
   * Flag to bin the data points in dotplots and boxplots
   * @default false
   */
  binned?: boolean;
  /**
   * Width in actual units for the histogram bin
   * @default []
   */
  binplotBinWidth?: unknown[];
  /**
   * Approximate number of bins in a bin plot. It may vary considerably to the actual number
   * used in the bin plot to ensure a pretty size for the intervals in the bin plot. ggplots
   * default is 30
   * @default []
   */
  binplotBins?: unknown[];
  /**
   * Color scheme to use in binplots
   * @default "BluesDark"
   */
  binplotColorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | (string & {});
  /**
   * Type for the shape to use in binplots
   * @default "hexagon"
   */
  binplotShape?: "rectangle" | "hexagon" | "oval" | (string & {});
  /**
   * Color Blindness
   * @default false
   */
  blindnessType?: string;
  /**
   * Flag to creates a shade between the samples so there are two backgrounds, one for the odd
   * samples and one for the even samples
   * @default false
   */
  blockContrast?: boolean;
  /**
   * Text to include at the bottom of the graph in the bottom margin
   * @default false
   */
  bottomMarginalText?: string;
  /**
   * Alignment (or position) for the bottom marginal text
   * @default "left"
   */
  bottomMarginalTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the bottom marginal text
   * @default "top"
   */
  bottomMarginalTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in bottom marginal text
   * @default "rgb(0,0,0)"
   */
  bottomMarginalTextColor?: string;
  /**
   * Font size for the text in bottom marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the bottomMarginalTextScaleFontFactor
   * @default 12
   */
  bottomMarginalTextFontSize?: number;
  /**
   * Font style for the bottom marginal text
   * @default ""
   */
  bottomMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the bottom marginal text
   * @default 5
   */
  bottomMarginalTextMargin?: number;
  /**
   * Rotation in degrees for the bottom marginal text
   * @default 0
   */
  bottomMarginalTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the bottom marginal text font size in the
   * canvas
   * @default 1
   */
  bottomMarginalTextScaleFontFactor?: number;
  /**
   * Color for the line of the borders in boxplots
   * @default "rgb(0,0,0)"
   */
  boxplotBorderColor?: string;
  /**
   * Number that determines how far the plot whiskers extend out from the box
   * @default 1.5
   */
  boxplotCoef?: number;
  /**
   * Color for the boxplot if individual data points are shown
   * @default false
   */
  boxplotColor?: string;
  /**
   * Flag to show data in boxplots connected
   * @default false
   */
  boxplotConnect?: boolean;
  /**
   * Width for the line of the connection of boxes in boxplots
   * @default 2
   */
  boxplotConnectWidth?: number;
  /**
   * Fraction to adjust color transparency for the data points when displaying original data in
   * boxplots
   * @default 0.8
   */
  boxplotDataPointTransparency?: number;
  /**
   * Function to calculate the boxplor hinges. See
   * https://chemicalstatistician.wordpress.com/2013/08/12/exploratory-data-analysis-the-5-number-summary-two-different-methods-in-r-2/
   * @default "summary"
   */
  boxplotHingeFunction?: "summary" | "fivenum" | (string & {});
  /**
   * Flag to show mean of data in boxplots
   * @default false
   */
  boxplotMean?: boolean;
  /**
   * Color for the border of the data mean in boxplots
   * @default "#fe6969"
   */
  boxplotMeanBorderColor?: string;
  /**
   * Color for the data mean in boxplots
   * @default "#fed385"
   */
  boxplotMeanColor?: string;
  /**
   * Color for the line of the median of data in boxplots
   * @default false
   */
  boxplotMedianColor?: string;
  /**
   * Width for the line of the median of data in boxplots
   * @default 2
   */
  boxplotMedianWidth?: number;
  /**
   * Flag to notch boxplots
   * @default false
   */
  boxplotNotched?: boolean;
  /**
   * Color for the data points in the boxplots
   * @default false
   */
  boxplotOriginalDataColor?: string;
  /**
   * Color for the border of outlier data points in boxplots
   * @default false
   */
  boxplotOutliersBorderColor?: string;
  /**
   * Color for the outlier data points in boxplots
   * @default false
   */
  boxplotOutliersColor?: string;
  /**
   * Ratio for the size of the outliers with respect to boxplot
   * @default 10
   */
  boxplotOutliersRatio?: number;
  /**
   * Shape for the outlier data points
   * @default "circle"
   */
  boxplotOutliersShape?: "circle" | "square" | "triangle" | "diamond" | "plus" | "minus" | "star" | "circleOpen" | "squareOpen" | "triangleOpen" | "diamondOpen" | (string & {});
  /**
   * Fraction to adjust color transparency for the boxplot id individual data points are shown
   * @default 0.4
   */
  boxplotTransparency?: number;
  /**
   * Boxplot type
   * @default "boxWhiskers"
   */
  boxplotType?: "boxWhiskers" | "range" | (string & {});
  /**
   * Flag to adjust the width of boxplots. Similar to R if true then the width is proportional
   * to the sqare root of the number of observations
   * @default false
   */
  boxplotVarWidth?: boolean;
  /**
   * Boxplot whiskers type
   * @default "double"
   */
  boxplotWhiskersType?: "single" | "double" | "none" | (string & {});
  /**
   * A number between 0.1 and 1 to adjust the width of the boxplot when violins are shown. It
   * does not affect anything unless violins are shown
   * @default 0.33
   */
  boxplotWidthRatioIfViolin?: number;
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
  broadcastGroup?: string;
  /**
   * Color for the Bubbles. Only applicable to the bubble subtype
   * @default "rgba(204,204,204,0.33)"
   */
  bubbleColor?: string;
  /**
   * Position for the labels in bubble circular plot
   * @default "auto"
   */
  bubbleLabel?: "first" | "last" | "all" | "auto" | "none" | (string & {});
  /**
   * Line type when label is away from the bubble
   * @default "arch"
   */
  bubbleLabelLineType?: "line" | "arch" | (string & {});
  /**
   * Position for the labels in bubble circular plot
   * @default "center"
   */
  bubbleLabelPosition?: "top" | "center" | "bottom" | (string & {});
  /**
   * Color for the Outline of bubbles. Only applicable to the bubble subtype
   * @default "rgb(0,0,0)"
   */
  bubbleOutlineColor?: string;
  /**
   * Style for the bullet. "progress" renders a thin rounded rail with a full-axis background
   * track, the sample name captioned above and the value at the rail end
   * @default "square"
   */
  bulletStyle?: "square" | "round" | "squareGradient" | "roundGradient" | "progress" | (string & {});
  /**
   * Width for the target line in bullet graphs when the bulletTargetLine is a line
   * @default 3
   */
  bulletTargetLineWidth?: number;
  /**
   * Shape for the target of the bullet
   * @default "line"
   */
  bulletTargetType?: "line" | "circle" | "openCircle" | "star" | "openStar" | (string & {});
  /**
   * Color for the Color of the target/reference marker in bullet and meter graphs
   * @default "rgb(0,0,0)"
   */
  bulletTargetVarColor?: string;
  /**
   * Variable name identifying the target/reference in bullet AND meter graphs. In a Meter it
   * draws a reference tick on the radial marks (gauge/speedometer/digital), summarized on the
   * same basis as the value
   * @default false
   */
  bulletTargetVarName?: string;
  /**
   * A number between 0.1 and 1 to adjust the width of the bullet target line
   * @default 0.7
   */
  bulletTargetWidthRatio?: number;
  /**
   * A number between 0.1 and 1 to adjust the width of the bullet
   * @default 0.5
   */
  bulletWidthRatio?: number;
  /**
   * Flag to cache image in meta data as Base64
   * @default false
   */
  cacheBase64?: boolean;
  /**
   * Flag to force or not to calculate the network layout
   * @default true
   */
  calculateLayout?: boolean;
  /**
   * Flag to calculate the network communities using the jLouvain algorithm. If this flag is
   * false the property community and communityColor for each node will need to be provided,
   * otherwise all nodes will belong to a single community
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
  calculatedFields?: unknown[];
  /**
   * Default type of cap for lines
   * @default "butt"
   */
  capType?: "butt" | "round" | "square" | (string & {});
  /**
   * Color the ribbon according to either the source or the target of the connection
   * @default "largest"
   */
  chordColor?: "source" | "target" | "largest" | "smallest" | (string & {});
  /**
   * Flag to show/hide the the scale in the chord graphs
   * @default true
   */
  chordScaleShow?: boolean;
  /**
   * Relative length in pixels of the chord thickness in the circular graphs. Only applicable
   * to the chord subtype
   * @default 28
   */
  chordThickness?: number;
  /**
   * Manhattan Chromosomes length is a sorted array by chromosome with the length in base pairs
   * for each chromosome. It is required when scatterType is manhattan
   * @default []
   */
  chromosomeLengths?: unknown[];
  /**
   * Color for the circular anchor
   * @default "#0ab0db"
   */
  circularAnchorColor?: string;
  /**
   * Length in pixels of the height of the circular anchor
   * @default 8
   */
  circularAnchorLength?: number;
  /**
   * Position to align the anchors2 in circular plot
   * @default "outside"
   */
  circularAnchors2Align?: "inside" | "outside" | (string & {});
  /**
   * Position to align the anchors in circular plot
   * @default "inside"
   */
  circularAnchorsAlign?: "inside" | "outside" | (string & {});
  /**
   * Number of degrees to extend the circular graph
   * @default 360
   */
  circularArc?: number;
  /**
   * Array containing the proportion of the radius for each arc sector in the circular plot. If
   * not specified then all radius will be the same. The plot will be scaled based of the
   * largest value in the array
   * @default []
   */
  circularArcSectorRadius?: unknown[];
  /**
   * Number of degrees to separate the arc sectors in the circular plots. The arc sectors can
   * be set with the segregateSampleBy property
   * @default 5
   */
  circularArcSectorSeparation?: number;
  /**
   * Proportion of the center of the circular graph to use as void; that is the fraction of the
   * radius in the middle of the graph
   * @default 0.3
   */
  circularCenterProportion?: number;
  /**
   * Array to store connections in circular graphs
   * @default []
   */
  circularConnections?: unknown[];
  /**
   * Percentage of transparency applied to the connections in the circular graphs
   * @default 0.5
   */
  circularConnectionsTransparency?: number;
  /**
   * Position to align the data in 2D radial graphs and ideograms
   * @default "distributed"
   */
  circularDataPosition?: "absolute" | "distributed" | (string & {});
  /**
   * Position to align the variable and sample names in circular plot
   * @default "outside"
   */
  circularLabelsAlign?: "inside" | "outside" | (string & {});
  /**
   * Factor to adjust the spacing between letters in the circular graphs. The greater the
   * number the closer the letters in the labels
   * @default 1
   */
  circularLetterSeparationFactor?: number;
  /**
   * Orientation to show the segregation levels
   * @default "circular"
   */
  circularOverlayLevelOrientation?: "perpendicular" | "circular" | (string & {});
  /**
   * Thickness in pixels of the circular overlay and ideogram
   * @default 14
   */
  circularOverlayThickness?: number;
  /**
   * Number of degrees to rotate the circular graph to adjust the starting point
   * @default 0
   */
  circularRotate?: number;
  /**
   * Orientation to show the sample names
   * @default "perpendicular"
   */
  circularSampleLabelOrientation?: "perpendicular" | "circular" | (string & {});
  /**
   * Position to align the percent and radial axes in circular plot
   * @default "inside"
   */
  circularScalesAlign?: "inside" | "outside" | (string & {});
  /**
   * Array containing the graph type for each track in the circular plot
   * @default []
   */
  circularTrackGraphType?: unknown[];
  /**
   * Array containing the proportion of the dimensions for each data track in the circular
   * plot. It must be a value between 0.1 and 1. If not specified then all track will be
   * weighted the same
   * @default []
   */
  circularTrackGraphWeight?: unknown[];
  /**
   * An array specifying the names of each track in the circular plot. It must match the length
   * of the *vars* array used for the data. Use an empty string to exclude a variable from the
   * plot
   * @default []
   */
  circularTrackName?: unknown[];
  /**
   * Array containing the order of the tracks. The array includes the levels of the factor
   * specified as either segregateSamplesBy when show the ideogram or segregateVariablesBy when
   * there is no ideogram. It may also include any of the following terms: dendrogram,
   * ideogram, labels, scale, percent and data. If there are sample overlays, the array may
   * also contain any of the factor names include in the this.data.x object. This array
   * supersede any other configurations for example for the sample overlays
   * @default ["percent","scale","dendrogram","ideogram","overlays","labels","anchors","data"]
   */
  circularTrackOrder?: unknown[];
  /**
   * Number of pixels to separate the tracks in the circular plots
   * @default 5
   */
  circularTrackSeparation?: number;
  /**
   * Property to set the subtype of circular graph. If set to sunburst or bubble then
   * smpOverlays can be used to build a hierarchy for the graph
   * @default "normal"
   */
  circularType?: "normal" | "radar" | "sunburst" | "chord" | "bubble" | (string & {});
  /**
   * A reference citation of the graph which is placed at the bottom right corner
   * @default false
   */
  citation?: string;
  /**
   * Alignment (or position) for the citations
   * @default "right"
   */
  citationAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the citations
   * @default "middle"
   */
  citationBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in citations
   * @default "rgb(0,0,0)"
   */
  citationColor?: string;
  /**
   * Font size for the text in citations. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * citationScaleFontFactor
   * @default 7
   */
  citationFontSize?: number;
  /**
   * Font style for the citations
   * @default ""
   */
  citationFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the citations
   * @default 5
   */
  citationMargin?: number;
  /**
   * Rotation in degrees for the citations
   * @default 0
   */
  citationRotate?: number;
  /**
   * Scaling factor used to increase or decrease the citations font size in the canvas
   * @default 1
   */
  citationScaleFontFactor?: number;
  /**
   * Axis to use when clustering data
   * @default "samples"
   */
  clusterAxis?: "samples" | "variables" | (string & {});
  /**
   * Distance metric to use when clustering data
   * @default "euclidianDistance"
   */
  clusteringDistance?: "euclidianDistance" | "manhattanDistance" | "maxDistance" | (string & {});
  /**
   * Output type for the JSON code
   * @default "params"
   */
  codeType?: "pretty" | "compact" | "tab" | "params" | (string & {});
  /**
   * Name of a variable annotation or a sample name or the string variable to color the
   * variables
   * @default false
   */
  colorBy?: string;
  /**
   * String that identify the object containing a two dimensional array with discrete values
   * used to color data points when drawing a multidimensional Heatmap. It must be located
   * within the data.y object (for example: data.y.data2)
   * @default false
   */
  colorByData?: string;
  /**
   * Name of the attribute to color the edges
   * @default false
   */
  colorEdgeBy?: string;
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
   * @default false
   */
  colorKey?: Record<string, unknown>;
  /**
   * Name of the variable annotation to color the labels in Scatter2D plots
   * @default false
   */
  colorLabelBy?: string;
  /**
   * Title for the color legend
   * @default false
   */
  colorLegendTitle?: string;
  /**
   * Name of the attribute to color the nodes
   * @default false
   */
  colorNodeBy?: string;
  /**
   * Color schemes can be user defined which will take the colors in the color property or one
   * provided in canvasXpress. The order of the colors will be used to sequentially select when
   * a different color is needed in a particular visualization
   * @default "User"
   */
  colorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | (string & {});
  /**
   * Name of metadata annotation to color the sample (row) dendrogram
   * @default false
   */
  colorSmpDendrogramBy?: string;
  /**
   * An array with valid color names to create a color brew for the default color indicators
   * @default ["#4575b4","#91bfdb","#e0f3f8","#ffffbf","#fee090","#fc8d59","#d73027"]
   */
  colorSpectrum?: unknown[];
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
  colorSpectrumBreaks?: unknown[];
  /**
   * Color spectrum by factor in heatmaps. The first key represents the name of the factor
   * within the x/z data object. The subsequent keys correspond to each level of that factor.
   * Finally, the next keys include show, order, spectrum, setMin, setMax, zero, and breaks,
   * each paired with their respective values
   * @default {}
   */
  colorSpectrumByFactor?: Record<string, unknown>;
  /**
   * Color spectrum by object in heatmaps. The first key represents the name of the data
   * object. The subsequent keys include show, order, spectrum, setMin, setMax, zero, and
   * breaks, each paired with their respective values
   * @default {}
   */
  colorSpectrumByObject?: Record<string, unknown>;
  /**
   * A value to be at the center of the color spectrum to produce symmetrical heatmaps
   * @default null
   */
  colorSpectrumZeroValue?: number;
  /**
   * Name of metadata annotation to color the variable (column) dendrogram
   * @default false
   */
  colorVarDendrogramBy?: string;
  /** Colors */
  colors?: unknown[];
  /**
   * Name of a variable annotation to color the confidence intervals
   * @default false
   */
  confidenceBy?: string;
  /**
   * Color for the confidence intervals
   * @default "rgb(50,50,50)"
   */
  confidenceIntervalColor?: string;
  /**
   * Type of coordination to color fit line, confidence intervals and data points. Full is the
   * same color for all elements. Line is the same color for confidence intervals and line fit
   * only
   * @default false
   */
  confidenceIntervalColorCoordinate?: string;
  /**
   * Maximum number of data values allowed for confidence intervals to display
   * @default 2000
   */
  confidenceIntervalsMax?: number;
  /**
   * Confidence level for regressions and ellipses
   * @default 0.95
   */
  confidenceLevel?: number;
  /**
   * Name of a variable annotation to connect the variables
   * @default false
   */
  connectBy?: string;
  /**
   * Color for the connectBy lines
   * @default "rgb(204,204,204)"
   */
  connectByColor?: string;
  /**
   * Flag to prevent coloring the lines by the connectBy annotation. Usefull when connectBy is
   * used along with colorBy to avoid confusion of colors
   * @default false
   */
  connectByNoColor?: boolean;
  /**
   * Flag to colour each connectBy line from the colours of its own endpoint data points (e.g.
   * a paired boxplot connector colored by an up/down aesthetic) instead of by the connectBy
   * annotation. Set by the ggplot geom_line-over-boxplot path so a saved chart reloads with
   * the same per-connector colours
   * @default false
   */
  connectByPointColor?: boolean;
  /**
   * Width for the line of the connectBy line
   * @default 2
   */
  connectByWidth?: number;
  /**
   * Object to assign custom colors to lines when samples are connected by a sample annotations
   * included in the data object. The key of the object is the name of an annotation in the
   * data.x object. A default connect will be assigned to a data point whose value was not
   * included the object
   * @default false
   */
  connectKey?: Record<string, unknown>;
  /**
   * URL for the Connectors service. Use your own http://localhost:8300/ or bult-in
   * https://www.canvasxpress.org/connectors/
   * @default "https://www.canvasxpress.org/connectors/"
   */
  connectorsServiceURL?: string;
  /**
   * Color for the Background color for the context menu
   * @default "#ffffff"
   */
  contextMenuBackgroundColor?: string;
  /**
   * Color for the Border color for the context menu
   * @default "#087ad1"
   */
  contextMenuBorderColor?: string;
  /**
   * Font size for the context menu
   * @default "13px"
   */
  contextMenuFontSize?: string;
  /**
   * Color for the Hover highlight color for the context menu
   * @default "rgba(124, 182, 226, 0.2)"
   */
  contextMenuHoverColor?: string;
  /**
   * Color for the Text color for the context menu
   * @default "#555b62"
   */
  contextMenuTextColor?: string;
  /**
   * Color for the the bands in contours
   * @default "#0ab0db"
   */
  contourBandsColor?: string;
  /**
   * Color scheme to use in contours
   * @default "Viridis"
   */
  contourColorScheme?: "AAAS" | "Accent" | "BMS" | "BMSBackground" | "BMSBlue" | "BMSBrown" | "BMSGreen" | "BMSPink" | "BMSPrimary" | "BMSSecondary" | "BMSTertiary" | "BMSTertiaryDark" | "BMSTertiaryLight" | "BMSWheat" | "Basic" | "Behance" | "BehancePair" | "BehanceQuartet" | "BehanceTrio" | "Black" | "BlackAndWhite" | "BlueGrey" | "BlueRedGrey" | "Blues" | "BluesDark" | "Bootstrap" | "BrBG" | "Brand" | "Brooklyn99Dark" | "Brooklyn99Regular" | "BuGn" | "BuPu" | "CanvasXpress" | "CanvasXpressOLD" | "CanvasXpressTraditional" | "Cividis" | "ColorBlind" | "ColorSpectrum" | "Colorful" | "ColorfulAlt" | "Complementary" | "Dark2" | "Default" | "Diverging" | "DivergingAlt" | "Economist" | "EconomistBG" | "Excel" | "Excel2" | "Excel3" | "Favorite" | "GGBlanket" | "GGPlot" | "GameOfThronesArryn" | "GameOfThronesGreyjoy" | "GameOfThronesLannister" | "GameOfThronesManderly" | "GameOfThronesMartell" | "GameOfThronesStannis" | "GameOfThronesStark" | "GameOfThronesTargaryen" | "GameOfThronesTully" | "GameOfThronesTyrell" | "GnBu" | "GravityFalls" | "Greens" | "Grey" | "GreyHC" | "Greys" | "Heat" | "Highcharts" | "Inferno" | "JCO" | "Jama" | "KimPossible" | "Lancet" | "LastAirBenderAir" | "LastAirBenderEarth" | "LastAirBenderFire" | "LastAirBenderWater" | "Light" | "Magma" | "Matlab" | "NEJM" | "NPG" | "OrRd" | "Oranges" | "PRGn" | "Paired" | "ParksAndRecreation" | "Parula" | "PaulTol" | "PiYG" | "Plasma" | "Prism" | "PrismPair" | "PrismTrio" | "PuBu" | "PuBuGn" | "PuOr" | "PuRd" | "Purples" | "Rainbow" | "RdBu" | "RdGy" | "RdPu" | "RdYlBu" | "RdYlGn" | "Reds" | "RickyAndMorty" | "Simpsons" | "Solarized" | "SolarizedBase" | "Spectral" | "SpongeBob" | "Stata" | "Stata2" | "Stata3" | "StataMono" | "Tableau" | "TableauBlueRed" | "TableauColorBlind" | "TableauCyclic" | "TableauGreenOrange" | "TableauGrey" | "TableauLight" | "TableauMedium" | "TableauPairSequential" | "TableauPurpleGrey" | "TableauTrafficLight" | "TableauTripleDiverging" | "Viridis" | "ViridisInv" | "WHO" | "WallStreetJournal" | "WallStreetJournal2" | "WallStreetJournal3" | "WallStreetJournalBlackGreen" | "WallStreetJournalDemRep" | "WallStreetJournalRedGreen" | "White" | "YlGn" | "YlGnBu" | "YlOrBr" | "YlOrRd" | (string & {});
  /**
   * Color for the data points in contours when the contour is filled
   * @default "rgb(0,0,0)"
   */
  contourDataPointsColor?: string;
  /**
   * Flag to color the contour plot
   * @default false
   */
  contourFilled?: boolean;
  /**
   * Transparency applied to the filled contours
   * @default 1
   */
  contourFilledTransparency?: number;
  /**
   * Numbe of contour levels. Overridden by contourLevelWidth
   * @default 10
   */
  contourLevelNumber?: number;
  /**
   * Width of contour levels
   * @default null
   */
  contourLevelWidth?: number;
  /**
   * Numeric vector to set the contour levels. It is automatically calculated if not defined
   * using the axisAlgorithm setting and the contourLevelNumber
   * @default []
   */
  contourLevels?: unknown[];
  /**
   * Contour density type
   * @default "density"
   */
  contourStat?: "density" | "ndensity" | "count" | (string & {});
  /**
   * Contour type
   * @default "normal"
   */
  contourType?: "normal" | "raster" | "point" | (string & {});
  /**
   * Flag to use same color in BarLine plots. If set to true the color of the bars and the
   * lines will be coordinated
   * @default false
   */
  coordinateLineColor?: boolean;
  /**
   * Flag to coordinate colors of the nodes with convex hull for the network communities
   * @default false
   */
  coordinateNetworkConvexHullCommunityColor?: boolean;
  /**
   * Flag to show a region above the correlation plot that anchror a sample/variable to a
   * position
   * @default false
   */
  correlationAnchorLegend?: boolean;
  /**
   * Length in pixels of the height of the correlation anchor legend
   * @default 40
   */
  correlationAnchorLegendAlignWidth?: number;
  /**
   * Axis used for the correlation
   * @default "samples"
   */
  correlationAxis?: "samples" | "variables" | (string & {});
  /**
   * Interval for the sample or variable labels in the correlation plot
   * @default 1
   */
  correlationLabelInterval?: number;
  /**
   * Shape to use in the correlation graphs
   * @default "diamond"
   */
  correlationType?: "diamond" | "circle" | (string & {});
  /**
   * Custom legends : Array of objects [{ size : [], shape : [], shapeColor : [], line : [],
   * lineColor : [], lineStart : [], lineEnd : [], text : [], x : number, y : number, title :
   * string }]
   * @default []
   */
  customLegend?: unknown[];
  /**
   * Color for the Background color for the data customizer
   * @default "#ffffff"
   */
  customizerBackgroundColor?: string;
  /**
   * Color for the Border color for the data customizer
   * @default "#087ad1"
   */
  customizerBorderColor?: string;
  /**
   * Color for the Background color for the close button in the data customizer
   * @default "#087ad1"
   */
  customizerCloseBackgroundColor?: string;
  /**
   * Color for the Text color for the close button in the data customizer
   * @default "#ffffff"
   */
  customizerCloseTextColor?: string;
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
  customizerFontSize?: string;
  /**
   * Flag to maximize the graph when the customizer is called
   * @default false
   */
  customizerGraphMaximize?: boolean;
  /**
   * Color for the Hover highlight color for the data customizer
   * @default "rgba(124, 182, 226, 0.2)"
   */
  customizerHoverColor?: string;
  /**
   * Size for the customizer. Requires re-opening of customizer
   * @default "medium"
   */
  customizerSize?: "xsmall" | "small" | "midsmall" | "medium" | "large" | (string & {});
  /**
   * Color for the Text color for the data customizer
   * @default "#555b62"
   */
  customizerTextColor?: string;
  /**
   * Size in pixels of the length of the dashes and the separation between the dashes in the
   * dashed lines
   * @default 8
   */
  dashLength?: number;
  /**
   * URL for the Dashboards service. Use your own http://localhost:8200/ or bult-in
   * https://www.canvasxpress.org/dashboards/
   * @default "https://www.canvasxpress.org/dashboards/"
   */
  dashboardsServiceURL?: string;
  /**
   * Color for the Background color for the data filter panel
   * @default "#ffffff"
   */
  dataFilterBackgroundColor?: string;
  /**
   * Color for the Border color for the data filter panel
   * @default "#087ad1"
   */
  dataFilterBorderColor?: string;
  /**
   * Font size for the data filter panel
   * @default "12px"
   */
  dataFilterFontSize?: string;
  /**
   * Color for the Hover highlight color for the data filter panel
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataFilterHoverColor?: string;
  /**
   * Maximum number of items in the data filter before it becomes a scroll box
   * @default 12
   */
  dataFilterMaxItems?: number;
  /**
   * Color for the Text color for the data filter panel
   * @default "#555b62"
   */
  dataFilterTextColor?: string;
  /**
   * Color for the Background color for the data filter toolbar
   * @default "#cccccc"
   */
  dataFilterToolbarBackgroundColor?: string;
  /**
   * Size in pixels for the data filters
   * @default 300
   */
  dataFilterWidth?: number;
  /**
   * Color for the border in data labels background
   * @default "rgb(0,0,0)"
   */
  dataLabelBackgroundBorderColor?: string;
  /**
   * Type of line for the border in data labels background
   * @default "solid"
   */
  dataLabelBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in data labels background
   * @default 0.5
   */
  dataLabelBackgroundBorderSize?: number;
  /**
   * Color for the data labels background
   * @default "rgb(255,255,255)"
   */
  dataLabelBackgroundColor?: string;
  /**
   * A declarative dplyr/tidyr data-grammar recipe applied over the tidy substrate BEFORE the
   * chart wrangle. An ordered array of ops: {op:"filter", col, cmp (one of
   * ==,!=,>,>=,<,<=,in), value}; {op:"mutate", col, fn} where fn is a transform name
   * (log2/log10/-log2/-log10/exp2/exp10/sqrt); {op:"arrange", by, desc}; {op:"select",
   * cols:[...]}. Applied left-to-right like the dplyr pipe; mutating the recipe changes the
   * rendered data (generative). Equivalent of dplyr filter/mutate/arrange/select.
   * @default []
   */
  dataPipeline?: unknown[];
  /**
   * Approximate pixel size for the data points in scatter plots, dotplots and boxplots. The
   * size will be adjusted according to the dimensions of the graph
   * @default 10
   */
  dataPointSize?: number;
  /**
   * Factor used to adjust the size of the dataPointSize
   * @default 1
   */
  dataPointSizeScaleFactor?: number;
  /**
   * Color for the the brand of the data table. Used wherever a non-neutral color is required.
   * Selections, focus outlines and checkboxes use the accent color by default
   * @default "rgb(8, 122, 209)"
   */
  dataTableAccentColor?: string;
  /**
   * Color for the border of the active data table cell
   * @default "rgb(124, 182, 226)"
   */
  dataTableActiveCellBorderColor?: string;
  /**
   * Flag to calculate the width of the columns based on the data
   * @default false
   */
  dataTableAutoColumnWidth?: boolean;
  /**
   * Color for the background of the data table banner
   * @default "rgb(255, 255, 255)"
   */
  dataTableBannerBackgroundColor?: string;
  /**
   * Color for the border of the data table banner
   * @default "rgb(215, 226, 230)"
   */
  dataTableBannerBorderColor?: string;
  /**
   * Image to brand the data table
   * @default false
   */
  dataTableBannerImage?: string;
  /**
   * Flag to show/hide the Flag to show the banner in the data table
   * @default true
   */
  dataTableBannerShow?: boolean;
  /**
   * Alignment (or position) for the data table banner
   * @default "center"
   */
  dataTableBannerTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table banner
   * @default "middle"
   */
  dataTableBannerTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table banner
   * @default "rgb(85, 91, 98)"
   */
  dataTableBannerTextColor?: string;
  /**
   * Font size for the text in data table banner. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableBannerTextScaleFontFactor
   * @default 13
   */
  dataTableBannerTextFontSize?: number;
  /**
   * Font style for the data table banner
   * @default ""
   */
  dataTableBannerTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table banner
   * @default 5
   */
  dataTableBannerTextMargin?: number;
  /**
   * Rotation in degrees for the data table banner
   * @default 0
   */
  dataTableBannerTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table banner font size in the canvas
   * @default 1
   */
  dataTableBannerTextScaleFontFactor?: number;
  /**
   * Color for the border of the data table
   * @default "rgb(8, 122, 209)"
   */
  dataTableBorderColor?: string;
  /**
   * Color for the background of the data table cells excluding headers
   * @default "rgb(255, 255, 255)"
   */
  dataTableCellBackgroundColor?: string;
  /**
   * Color for the border of the data table cells
   * @default "rgb(215, 226, 230)"
   */
  dataTableCellBorderColor?: string;
  /**
   * data table cell borders
   * @default "rows"
   */
  dataTableCellBorders?: "all" | "none" | "rows" | "cols" | (string & {});
  /**
   * Color for the background of the data table cells when hovering
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataTableCellHoverBackgroundColor?: string;
  /**
   * Alignment (or position) for the data table cells
   * @default "left"
   */
  dataTableCellTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table cells
   * @default "middle"
   */
  dataTableCellTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table cells
   * @default "rgb(85, 91, 98)"
   */
  dataTableCellTextColor?: string;
  /**
   * Font size for the text in data table cells. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the dataTableCellTextScaleFontFactor
   * @default 13
   */
  dataTableCellTextFontSize?: number;
  /**
   * Font style for the data table cells
   * @default ""
   */
  dataTableCellTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table cells
   * @default 5
   */
  dataTableCellTextMargin?: number;
  /**
   * Rotation in degrees for the data table cells
   * @default 0
   */
  dataTableCellTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table cells font size in the canvas
   * @default 1
   */
  dataTableCellTextScaleFontFactor?: number;
  /**
   * Alignment for the cols in the data table. Key is the sample name and the value is the
   * alignment
   * @default {}
   */
  dataTableColAlignment?: Record<string, unknown>;
  /**
   * Format for the cols in the data table. Key is the sample name and the value is the format
   * string using sprintf notation
   * @default {}
   */
  dataTableColFormat?: Record<string, unknown>;
  /**
   * Array to store the columns to hide in the data table
   * @default []
   */
  dataTableColHide?: unknown[];
  /**
   * Array to store the column sorting for the data table. It only applies to meta data and
   * exclude variables or samples. Those not included willl be placed last
   * @default []
   */
  dataTableColOrder?: unknown[];
  /**
   * Array to store the columns to pin in the data table. Pinned columns will always be visible
   * when scrolling horizontally
   * @default []
   */
  dataTableColPin?: unknown[];
  /**
   * Properties for the cols in the data table. Key is the sample name and the value is the
   * width in pixels
   * @default {}
   */
  dataTableColProperties?: Record<string, unknown>;
  /**
   * Number of pixels for the width of cells in the data table
   * @default 180
   */
  dataTableColWidth?: number;
  /**
   * Transparency for the background of the data table cells if colored
   * @default 0.5
   */
  dataTableColorTransparency?: number;
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
  dataTableHeaderBackgroundColor?: string;
  /**
   * HTML string to use as template for the data table header info
   * @default false
   */
  dataTableHeaderTemplate?: string;
  /**
   * Alignment (or position) for the data table headers
   * @default "left"
   */
  dataTableHeaderTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table headers
   * @default "middle"
   */
  dataTableHeaderTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table headers
   * @default "rgb(85, 91, 98)"
   */
  dataTableHeaderTextColor?: string;
  /**
   * Font size for the text in data table headers. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableHeaderTextScaleFontFactor
   * @default 13
   */
  dataTableHeaderTextFontSize?: number;
  /**
   * Font style for the data table headers
   * @default ""
   */
  dataTableHeaderTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table headers
   * @default 5
   */
  dataTableHeaderTextMargin?: number;
  /**
   * Rotation in degrees for the data table headers
   * @default 0
   */
  dataTableHeaderTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table headers font size in the canvas
   * @default 1
   */
  dataTableHeaderTextScaleFontFactor?: number;
  /**
   * Show nodes or edges on data table
   * @default "nodes"
   */
  dataTableNetwork?: "nodes" | "edges" | (string & {});
  /**
   * Color for the background of the odd data table cells excluding headers
   * @default "rgb(247, 248, 249)"
   */
  dataTableOddCellBackgroundColor?: string;
  /**
   * Flag to show/hide the Flag to show data after selecting data in the plot
   * @default false
   */
  dataTableOnSelectShow?: boolean;
  /**
   * Color for the background of the data table pagination bar
   * @default "rgb(255, 255, 255)"
   */
  dataTablePaginationBackgroundColor?: string;
  /**
   * Color for the border of the data table pagination bar
   * @default "rgb(215, 226, 230)"
   */
  dataTablePaginationBorderColor?: string;
  /**
   * Alignment (or position) for the data table pagination bar select
   * @default "center"
   */
  dataTablePaginationSelectTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table pagination bar select
   * @default "middle"
   */
  dataTablePaginationSelectTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table pagination bar select
   * @default "rgb(85, 91, 98)"
   */
  dataTablePaginationSelectTextColor?: string;
  /**
   * Font size for the text in data table pagination bar select. Be aware that auto scaling
   * font must be turned off for this property to take effect. A more convenient way to modify
   * the size is to use the dataTablePaginationSelectTextScaleFontFactor
   * @default 12
   */
  dataTablePaginationSelectTextFontSize?: number;
  /**
   * Font style for the data table pagination bar select
   * @default ""
   */
  dataTablePaginationSelectTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table pagination bar select
   * @default 5
   */
  dataTablePaginationSelectTextMargin?: number;
  /**
   * Rotation in degrees for the data table pagination bar select
   * @default 0
   */
  dataTablePaginationSelectTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table pagination bar select font size
   * in the canvas
   * @default 1
   */
  dataTablePaginationSelectTextScaleFontFactor?: number;
  /**
   * Flag to show/hide the Flag to show the pagination in the data table
   * @default false
   */
  dataTablePaginationShow?: boolean;
  /**
   * Number of rows or columns to show per page in the data table when pagination is on
   * @default 25
   */
  dataTablePaginationSize?: number;
  /**
   * Alignment (or position) for the data table pagination bar
   * @default "center"
   */
  dataTablePaginationTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table pagination bar
   * @default "middle"
   */
  dataTablePaginationTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table pagination bar
   * @default "rgb(85, 91, 98)"
   */
  dataTablePaginationTextColor?: string;
  /**
   * Font size for the text in data table pagination bar. Be aware that auto scaling font must
   * be turned off for this property to take effect. A more convenient way to modify the size
   * is to use the dataTablePaginationTextScaleFontFactor
   * @default 13
   */
  dataTablePaginationTextFontSize?: number;
  /**
   * Font style for the data table pagination bar
   * @default ""
   */
  dataTablePaginationTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table pagination bar
   * @default 5
   */
  dataTablePaginationTextMargin?: number;
  /**
   * Rotation in degrees for the data table pagination bar
   * @default 0
   */
  dataTablePaginationTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table pagination bar font size in the
   * canvas
   * @default 1
   */
  dataTablePaginationTextScaleFontFactor?: number;
  /**
   * Array of group IDs for rows to display in the data table when data is grouped
   * @default []
   */
  dataTableRowGroups?: unknown[];
  /**
   * Number of pixels for the height of cells in the data table
   * @default 32
   */
  dataTableRowHeight?: number;
  /**
   * Color for the background of the row of the data table cells when hovering
   * @default "rgba(124, 182, 226, 0.2)"
   */
  dataTableRowHoverBackgroundColor?: string;
  /**
   * Number of lines in cells in the data table
   * @default 1
   */
  dataTableRowLines?: number;
  /**
   * Flag to show/hide the Flag to show row numbers in the first column of data table
   * @default true
   */
  dataTableRowNumbersShow?: boolean;
  /**
   * Behavior for the scrollbars in the data table
   * @default "auto"
   */
  dataTableScrollDirection?: "auto" | "normal" | "inverted" | (string & {});
  /**
   * Color for the background of the data table status bar
   * @default "rgb(255, 255, 255)"
   */
  dataTableStatusBackgroundColor?: string;
  /**
   * Color for the border of the data table status bar
   * @default "rgb(215, 226, 230)"
   */
  dataTableStatusBorderColor?: string;
  /**
   * Flag to show/hide the Flag to show the status div in the data table
   * @default true
   */
  dataTableStatusShow?: boolean;
  /**
   * Alignment (or position) for the data table status bar
   * @default "center"
   */
  dataTableStatusTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data table status bar
   * @default "middle"
   */
  dataTableStatusTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data table status bar
   * @default "rgb(85, 91, 98)"
   */
  dataTableStatusTextColor?: string;
  /**
   * Font size for the text in data table status bar. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the dataTableStatusTextScaleFontFactor
   * @default 13
   */
  dataTableStatusTextFontSize?: number;
  /**
   * Font style for the data table status bar
   * @default ""
   */
  dataTableStatusTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data table status bar
   * @default 5
   */
  dataTableStatusTextMargin?: number;
  /**
   * Rotation in degrees for the data table status bar
   * @default 0
   */
  dataTableStatusTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data table status bar font size in the
   * canvas
   * @default 1
   */
  dataTableStatusTextScaleFontFactor?: number;
  /**
   * Transparency for the stripes in the data table using the base color for the UI widgets
   * @default 0.05
   */
  dataTableStripeTransparency?: number;
  /**
   * Flag to show the stripes in the data table rows
   * @default true
   */
  dataTableStriped?: boolean;
  /**
   * Default aggregation used for the data table summary row
   * @default "sum"
   */
  dataTableSummaryRowFunction?: "sum" | "mean" | "median" | "min" | "max" | "count" | (string & {});
  /**
   * Per-column aggregation overrides for the data table summary row. Key is the column name
   * and the value is one of sum, mean, median, min, max or count
   * @default {}
   */
  dataTableSummaryRowFunctions?: Record<string, unknown>;
  /**
   * Label placed in the first non-numeric column of the data table summary row
   * @default "Summary"
   */
  dataTableSummaryRowLabel?: string;
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
  dataTableToolbarBackgroundColor?: string;
  /**
   * Color for the border of the data table toolbar
   * @default "rgb(215, 226, 230)"
   */
  dataTableToolbarBorderColor?: string;
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
  dataTableZeroHeader?: string;
  /**
   * Alignment (or position) for the data labels
   * @default "center"
   */
  dataTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the data labels
   * @default "middle"
   */
  dataTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in data labels
   * @default false
   */
  dataTextColor?: string;
  /**
   * Font size for the text in data labels. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * dataTextScaleFontFactor
   * @default 10
   */
  dataTextFontSize?: number;
  /**
   * Font style for the data labels
   * @default ""
   */
  dataTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the data labels
   * @default 5
   */
  dataTextMargin?: number;
  /**
   * Rotation in degrees for the data labels
   * @default 0
   */
  dataTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the data labels font size in the canvas
   * @default 1
   */
  dataTextScaleFontFactor?: number;
  /**
   * Style for the UI
   * @default "modern"
   */
  dataUIStyle?: "cx" | "stripped" | "modern" | "old" | "bms" | "colorful" | "rdc" | "ngs360" | (string & {});
  /**
   * Frequency for the data values in line graphs
   * @default "ends"
   */
  dataValuesFrequency?: "all" | "first" | "last" | "ends" | (string & {});
  /**
   * Position for the data values in line graphs
   * @default "outside"
   */
  dataValuesPosition?: "inside" | "outside" | (string & {});
  /**
   * Color for the background of the data table
   * @default "rgb(255, 255, 255)"
   */
  datatableBackgroundColor?: string;
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
   * @default false
   */
  decorations?: Record<string, unknown> | unknown[];
  /**
   * Color for the border in decoration legends background
   * @default "rgb(204,204,204)"
   */
  decorationsBackgroundBorderColor?: string;
  /**
   * Type of line for the border in decoration legends background
   * @default "solid"
   */
  decorationsBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in decoration legends background
   * @default 0.5
   */
  decorationsBackgroundBorderSize?: number;
  /**
   * Color for the decoration legends background
   * @default "rgba(255,255,255,0)"
   */
  decorationsBackgroundColor?: string;
  /**
   * Flag to clip decorations to the x,y area of the plot.
   * @default true
   */
  decorationsClipped?: boolean;
  /**
   * Array of colors used for the decorations. Only applicable to Network graphs
   * @default []
   */
  decorationsColors?: unknown[];
  /**
   * Length in pixels of the height for the decorations. Only applicable to Network graphs.
   * @default 40
   */
  decorationsHeight?: number;
  /**
   * Flag to draw decorations after drawing the data. Not applicable to Network graphs
   * @default true
   */
  decorationsOnTop?: boolean;
  /**
   * Position for the the decorations
   * @default "bottom"
   */
  decorationsPosition?: "topRight" | "right" | "bottomRight" | "bottom" | "bottomLeft" | "left" | "topLeft" | "top" | (string & {});
  /**
   * Object to assign properties like color, position, etc. Only applicable to Network graphs
   * @default {}
   */
  decorationsProperties?: Record<string, unknown>;
  /**
   * Alignment (or position) for the decoration legends
   * @default "center"
   */
  decorationsTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the decoration legends
   * @default "middle"
   */
  decorationsTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in decoration legends
   * @default "rgb(0,0,0)"
   */
  decorationsTextColor?: string;
  /**
   * Font size for the text in decoration legends. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the decorationsTextScaleFontFactor
   * @default 10
   */
  decorationsTextFontSize?: number;
  /**
   * Font style for the decoration legends
   * @default ""
   */
  decorationsTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the decoration legends
   * @default 5
   */
  decorationsTextMargin?: number;
  /**
   * Rotation in degrees for the decoration legends
   * @default 0
   */
  decorationsTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the decoration legends font size in the canvas
   * @default 1
   */
  decorationsTextScaleFontFactor?: number;
  /**
   * Flag to transform the data in decorations produced in Cxplot. Not applicable to Network
   * graphs
   * @default true
   */
  decorationsTransform?: boolean;
  /**
   * Transparency for range decorations type only. Also, it is not applicable to Network graphs
   * @default 0.2
   */
  decorationsTransparency?: number;
  /**
   * Type for the decorations and only applicable to Network graphs. The types stacked and
   * stackedpercent must be two dimensional. Heatmap could be one or two dimensional
   * @default "bar"
   */
  decorationsType?: "pie" | "bar" | "heatmap" | "stacked" | "stackedpercent" | (string & {});
  /**
   * Length in pixels of the width for the decorations. Only applicable to Network graphs.
   * @default 20
   */
  decorationsWidth?: number;
  /**
   * Color for the dendrograms
   * @default "rgb(0,0,0)"
   */
  dendrogramColor?: string;
  /**
   * Size in pixels for the dendrogram
   * @default 80
   */
  dendrogramHeight?: number;
  /**
   * Histogram density kernels
   * @default "gaussian"
   */
  densityKernel?: "gaussian" | "rectangular" | "triangular" | "epanechnikov" | "quartic" | "biweight" | "cosine" | "optcosine" | (string & {});
  /**
   * Histogram density position
   * @default "normal"
   */
  densityPosition?: "normal" | "stacked" | "filled" | (string & {});
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
   * @default false
   */
  dodgeBy?: string;
  /**
   * Size in pixels of the length between dots in the doted lines
   * @default 1
   */
  dotLength?: number;
  /**
   * Maximum number of data points before skipping plotting their outline but only the fill
   * color
   * @default 5000
   */
  dotplotOutlineThreshold?: number;
  /**
   * Style for the dotplot. Transition plot are only applicable when data is grouped
   * @default "normal"
   */
  dotplotType?: "arrow" | "bullet" | "cleveland" | "connected" | "line" | "lineConnected" | "normal" | "stacked" | "transition" | (string & {});
  /**
   * Style for the dumbbell plot
   * @default "stacked"
   */
  dumbbellType?: "arrow" | "bullet" | "cleveland" | "connected" | "line" | "lineConnected" | "stacked" | (string & {});
  /**
   * Color for the edges
   * @default "rgb(0,0,0)"
   */
  edgeColor?: string;
  /**
   * Factor to adjust the separation between the edge and the node in the networks
   * @default 1
   */
  edgeSeparationFactor?: number;
  /**
   * Utility to create error ellipses in Scatter plots
   * @default false
   */
  ellipseBy?: string;
  /**
   * Color for the error bars in dotplots and barplots
   * @default "rgb(0,0,0)"
   */
  errorBarsColor?: string;
  /**
   * Thickness for the error bars in dotplots
   * @default 3
   */
  errorBarsThickness?: number;
  /**
   * Type of error bars
   * @default "confidenceInterval95"
   */
  errorBarsType?: "standardDeviation" | "standardErrorMean" | "confidenceInterval95" | (string & {});
  /**
   * Minimum size of the bar in pixels to determine to show or hide error bar ends in the
   * graphs when available
   * @default 2
   */
  errorBarsWidth?: number;
  /**
   * Color for the even numbers in samples when the property block contrast is set in one
   * dimensional plots or the color for odd number residues in translations in genome plots
   * @default "rgb(245,245,245)"
   */
  evenColor?: string;
  /**
   * Flag to extend DOE to include variables / samples
   * @default true
   */
  extendedDOE?: boolean;
  /**
   * Default size in pixels of the coordinates height
   * @default 14
   */
  featureCoordinateHeight?: number;
  /**
   * Flag to use to show coordinates
   * @default true
   */
  featureCoordinateShow?: boolean;
  /**
   * Color for the strand direction of the feature in the genome browser
   * @default "rgb(0,0,0)"
   */
  featureDirColor?: string;
  /**
   * Color for the fill of the feature in the genome browser
   * @default "rgb(255,255,255)"
   */
  featureFillColor?: string;
  /**
   * Default size in pixels of the feature height
   * @default 14
   */
  featureHeightDefault?: number;
  /**
   * Alignment (or position) for the feature name
   * @default "center"
   */
  featureNameAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the feature name
   * @default "middle"
   */
  featureNameBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in feature name
   * @default "rgb(0,0,0)"
   */
  featureNameColor?: string;
  /**
   * Font size for the text in feature name. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * featureNameScaleFontFactor
   * @default 10
   */
  featureNameFontSize?: number;
  /**
   * Font style for the feature name
   * @default ""
   */
  featureNameFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the feature name
   * @default 8
   */
  featureNameMargin?: number;
  /**
   * Rotation in degrees for the feature name
   * @default 0
   */
  featureNameRotate?: number;
  /**
   * Scaling factor used to increase or decrease the feature name font size in the canvas
   * @default 1
   */
  featureNameScaleFontFactor?: number;
  /**
   * Default size in pixels of the quality height
   * @default 14
   */
  featureQualityHeight?: number;
  /**
   * Flag to use to show quality
   * @default true
   */
  featureQualityShow?: boolean;
  /**
   * Flag to use to show values for the quality
   * @default false
   */
  featureQualityValues?: boolean;
  /**
   * Default size in pixels of the quality height
   * @default 14
   */
  featureSignalToNoiseHeight?: number;
  /**
   * Flag to use to show quality
   * @default true
   */
  featureSignalToNoiseShow?: boolean;
  /**
   * Flag to use to show values for the quality
   * @default false
   */
  featureSignalToNoiseValues?: boolean;
  /**
   * Default style for splicing in boxes
   * @default "rect"
   */
  featureSpliceStyle?: "rect" | "broken" | (string & {});
  /**
   * Flag to use to stagger the features in the genome panel
   * @default false
   */
  featureStaggered?: boolean;
  /**
   * Default size in pixels of the trace height
   * @default 40
   */
  featureTraceHeight?: number;
  /**
   * Default triming for nucleotide values in the traces (expressed in percent)
   * @default 1
   */
  featureTraceTrim?: number;
  /**
   * Flag to use to show traces
   * @default true
   */
  featureTracesShow?: boolean;
  /**
   * Default size in pixels of the translation height
   * @default 14
   */
  featureTranslateHeight?: number;
  /**
   * Flag to use to show tranlation
   * @default true
   */
  featureTranslateShow?: boolean;
  /**
   * Default type for the feature in the genome browser
   * @default "line"
   */
  featureTypeDefault?: "box" | "bar" | "heatmap" | "sequence" | "triangle" | "line" | (string & {});
  /**
   * Default size in pixels of the feature width
   * @default 3
   */
  featureWidthDefault?: number;
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
  filterData?: unknown[];
  /**
   * Filter data by their value in the data object used in oncoprints. Used in the CanvasXpress
   * UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterDataBy?: Record<string, unknown>;
  /**
   * Filter edges by their properties used in network graphs. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterEdgeBy?: Record<string, unknown>;
  /**
   * Filter features by their properties used in genome browser. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterFeatureBy?: Record<string, unknown>;
  /**
   * Mode for the legend filters. Can be set to hide the data using transparency or to color
   * the data points with the missingDataColor
   * @default "hide"
   */
  filterMode?: "hide" | "color" | (string & {});
  /**
   * Filter nodes by their properties used in network graphs. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterNodeBy?: Record<string, unknown>;
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
  filterSmpBy?: Record<string, unknown>;
  /**
   * Type for the filter. Can be and or or
   * @default "and"
   */
  filterType?: "and" | "or" | (string & {});
  /**
   * Filter variables by their annotation included in the data.z object used in one dimensional
   * plots. Used in the CanvasXpress UIs
   * @default {"cases":[],"comp":[],"op":[],"type":[],"value":[]}
   */
  filterVarBy?: Record<string, unknown>;
  /**
   * Fish Axis (array with lines across the X Axis)
   * @default []
   */
  fishAxis?: unknown[];
  /**
   * Fish Axis Labels (array with names for the lines across the X Axis). Must have the same
   * dimension as the fishAxis
   * @default []
   */
  fishAxisLabels?: unknown[];
  /**
   * Fish Clone Labels (array with names for the clones). Must have the same dimension as the
   * fishParents
   * @default []
   */
  fishCloneLabels?: unknown[];
  /**
   * Fish Parents
   * @default []
   */
  fishParents?: unknown[];
  /**
   * Flag to separate indepenent clones
   * @default false
   */
  fishSeparateIndependentClones?: boolean;
  /**
   * Fish Shape
   * @default "polygon"
   */
  fishShape?: "spline" | "polygon" | (string & {});
  /**
   * Fish Timepoints
   * @default []
   */
  fishTimepoints?: unknown[];
  /**
   * Color for the fit line
   * @default "#fed385"
   */
  fitLineColor?: string;
  /**
   * Transparency for the color of the fit line
   * @default 1
   */
  fitLineTransparency?: number;
  /**
   * Type of line for the fit line
   * @default "solid"
   */
  fitLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Width for the fit line
   * @default 2
   */
  fitLineWidth?: number;
  /**
   * Keep fixed aspect ratio expressed as y / x. A zero value is used to ignore otherwise the x
   * and y axes are set accordingly. This has a use only in visium plots
   * @default 0
   */
  fixedAspectRatio?: number;
  /**
   * Color for the font
   * @default "rgb(0,0,0)"
   */
  fontColor?: string;
  /**
   * Font name. Web-Safe HTML fonts
   * @default "Arial"
   */
  fontName?: "American Typewriter" | "Andale Mono" | "Arial" | "Baskerville" | "Bradley Hand" | "Brush Script MT" | "Comic Sans MS" | "Courier" | "Didot" | "Georgia" | "Gill Sans" | "Helvetica" | "Impact" | "Lucida Console" | "Luminari" | "Monaco" | "Optima" | "Palatino" | "Roboto" | "Tahoma" | "Times New Roman" | "Trebuchet MS" | "Verdana" | (string & {});
  /**
   * Scaling factor used to increase or decrease the font size in the canvas
   * @default 1
   */
  fontScaleFontFactor?: number;
  /**
   * Font size for text in complex plot only. See other categories to modify specific font
   * sizes
   * @default 10
   */
  fontSize?: number;
  /**
   * Font style
   * @default ""
   */
  fontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Goggle Fonts
   * @default []
   */
  fonts?: unknown[];
  /**
   * External Fonts
   * @default []
   */
  fontsExternal?: unknown[];
  /**
   * Color for the Specifies the default foreground color for text and lines not covered in a
   * more specific configuration property
   * @default "rgb(0,0,0)"
   */
  foreground?: string;
  /**
   * Array of element to exclude from full screen mode
   * @default [".navbar",".cx-example-tools"]
   */
  fullscreenExclude?: unknown[];
  /**
   * Color for the function plots
   * @default "rgb(0,0,0)"
   */
  functionColor?: string;
  /**
   * Variable annotation in the x object to use in Gantt plots as completion percentage. Must
   * be a value between 0 and 1
   * @default false
   */
  ganttCompletion?: string;
  /**
   * Fraction to adjust color transparency for completion
   * @default 0.5
   */
  ganttCompletionTransparency?: number;
  /**
   * Variable annotation in the x object to use in Gantt plots as dependency. Must be a valid
   * sample / group name
   * @default false
   */
  ganttDependency?: string;
  /**
   * Color for the variable metadata used for the dependency line. Defaults to rgb(0,0,0)
   * @default false
   */
  ganttDependencyColor?: string;
  /**
   * Variable annotation for the type of ending for the dependency line. Options are arrow,
   * square or round
   * @default false
   */
  ganttDependencyEnd?: string;
  /**
   * Variable annotation for the thickness of the dependency line. Defaults to 1
   * @default false
   */
  ganttDependencyThickness?: number;
  /**
   * Variable to use in Gantt plots as end date. Defaults to the second variable in the data
   * set
   * @default false
   */
  ganttEnd?: string;
  /**
   * Variable to use in Gantt plots as start date. Defaults to the first variable in the data
   * set
   * @default false
   */
  ganttStart?: string;
  /**
   * Number to adjust the splines curvature
   * @default "low"
   */
  genomeResolution?: "low" | "medium" | "high" | (string & {});
  /**
   * Number of ticks in the genome browser
   * @default 50
   */
  genomeTicks?: number;
  /**
   * Perimeter-axis role for a cell of a native multi-panel matrix (ggmatrix/patchwork):
   * {yAxis:Boolean, xAxis:Boolean} — set by CanvasXpress.matrixHost from the cell (row,col) so
   * resetGgmatrix keeps the y-axis on the left column and the x-axis on the bottom row
   * @default false
   */
  ggMatrixRole?: Record<string, unknown>;
  /**
   * Initial ggplot configuration passed to cxplot
   * @default {}
   */
  ggplot?: Record<string, unknown>;
  /**
   * Flag to apply a color gradient to all elements in the graphs
   * @default false
   */
  gradient?: boolean;
  /**
   * Specifies the orientation of the gradient when the gradient type is linear.
   * @default "vertical"
   */
  gradientOrientation?: "vertical" | "horizontal" | (string & {});
  /**
   * Specifies the type of gradient pattern
   * @default "radial"
   */
  gradientType?: "linear" | "radial" | (string & {});
  /**
   * Specifies the orientation of one-dimensional graphs
   * @default "horizontal"
   */
  graphOrientation?: "horizontal" | "vertical" | (string & {});
  /**
   * Specifies the type of graph to be rendered
   * @default "Bar"
   */
  graphType?: "Alluvial" | "Area" | "AreaLine" | "Bar" | "BarLine" | "Boxplot" | "Bin" | "Binplot" | "Bubble" | "Bullet" | "Bump" | "CDF" | "Chord" | "Circular" | "Cleveland" | "Contour" | "Correlation" | "Density" | "Distribution" | "Donut" | "DotLine" | "Dotplot" | "Dumbbell" | "Fish" | "Gantt" | "Genome" | "Heatmap" | "Hex" | "Hexplot" | "Histogram" | "KaplanMeier" | "Line" | "Lollipop" | "Map" | "Meter" | "Network" | "Oncoprint" | "OptionsWall" | "ParallelCoordinates" | "Pareto" | "Pie" | "QQ" | "Quantile" | "Radar" | "Ribbon" | "Ridgeline" | "Sankey" | "Scatter2D" | "Scatter3D" | "ScatterBubble2D" | "Spaghetti" | "SPLOM" | "Stacked" | "StackedLine" | "StackedPercent" | "StackedPercentLine" | "Streamgraph" | "Sunburst" | "TagCloud" | "TimeSeries" | "Tornado" | "Tree" | "TreeBracket" | "Treemap" | "Upset" | "Violin" | "Volcano" | "Venn" | "Waterfall" | "WordCloud" | (string & {});
  /**
   * Object to specify custom order for the levels in each grouping. The key of the object is
   * the name of a valid sample or variable annotation included in the data object. The value
   * for element is an array with the levels for the corresponding factor
   * @default false
   */
  groupingFactorLevelsOrder?: Record<string, unknown>;
  /**
   * The width for the data when grouping in Scatter2D plots. This is the analogous parameter
   * to cut_width in R. It defaults to a fifth of the data range. The scatterType must be
   * boxplot to take this parameter into effect
   * @default false
   */
  groupingFactorWindow?: number;
  /**
   * An array that holds the group names used for grouping the data. It must be a category in
   * the data.x object
   * @default []
   */
  groupingFactors?: unknown[];
  /**
   * An array that holds the group names used for grouping the data to hide the labels in the
   * graph. It must be a category in the data.x object
   * @default []
   */
  groupingFactorsLabelsHide?: unknown[];
  /**
   * Style for the guides
   * @default "line"
   */
  guideStyle?: "line" | "track" | (string & {});
  /**
   * Color for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @default "rgb(204,204,204)"
   */
  guidesColor?: string;
  /**
   * Length for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @default 5
   */
  guidesLength?: number;
  /**
   * Type of line for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @default "solid"
   */
  guidesLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @default false
   */
  guidesShow?: boolean;
  /**
   * Transparency for the color of the the variables and / or samples in one dimensional graphs
   * and multidimensional heatmaps just for aesthetics
   * @default 1
   */
  guidesTransparency?: number;
  /**
   * Width for the the variables and / or samples in one dimensional graphs and
   * multidimensional heatmaps just for aesthetics
   * @default 1
   */
  guidesWidth?: number;
  /**
   * Flag to adjust the color spectrum of the heatmaps when zooming in/out. The full spectrum
   * range will be utilized to cover the selcted cells in the heatmap if the flag is set to
   * true
   * @default false
   */
  heatmapAutoAdjust?: boolean;
  /**
   * Flag to print a box around the heatmap cells
   * @default true
   */
  heatmapCellBox?: boolean;
  /**
   * Color for the heatmap boxes around the cells
   * @default "rgb(102,102,102)"
   */
  heatmapCellBoxColor?: string;
  /**
   * Color for the highlighted heatmap cells
   * @default "#fed385"
   */
  heatmapCellBoxColorHighlight?: string;
  /**
   * Width for the highlighting heatmap boxes around the cells
   * @default 1
   */
  heatmapCellBoxHighlightWidth?: number;
  /**
   * Width for the heatmap boxes around the cells
   * @default 1
   */
  heatmapCellBoxWidth?: number;
  /**
   * Color for the default color for heatmap cell markers when an entry omits its own color
   * @default "rgb(0,0,0)"
   */
  heatmapCellMarkerColorColor?: string;
  /**
   * Default shape for heatmap cell markers when an entry in heatmapCellMarkers omits its own
   * shape
   * @default "pch4"
   */
  heatmapCellMarkerShape?: "pch4" | "pch3" | "pch1" | "pch0" | "pch5" | "pch2" | "pch16" | "pch15" | "pch17" | "pch18" | "circle" | "square" | "diamond" | "triangle" | (string & {});
  /**
   * Default size of heatmap cell markers as a fraction of the cell (0..1) when an entry omits
   * its own size. The X marker (pch4) spans the full cell corner-to-corner by default
   * (fraction 1) regardless of this value
   * @default 0.6
   */
  heatmapCellMarkerSize?: number;
  /**
   * Default line width for the X (pch4) heatmap cell marker when an entry omits its own width
   * @default 1
   */
  heatmapCellMarkerWidth?: number;
  /**
   * Array of per-cell shape overlays drawn on top of standard heatmap cells. Each entry is an
   * object with a *variable* and *sample* name identifying the cell, plus optional *shape*,
   * *color*, and *size* (fraction of the cell, 0..1). Example: [{variable: "V1", sample: "S3",
   * shape: "pch4"}] to cross out a cell with an X. Common shapes: pch4 (X), pch3 (plus), pch1
   * (open circle), pch0 (open square), pch5 (open diamond), pch16 (filled circle), circle,
   * square, diamond
   * @default []
   */
  heatmapCellMarkers?: unknown[];
  /**
   * Flag to collapse cells in heatmaps of type circle or hexagon. If true cells are ploted
   * without outline otherwise the outline is the foreground color
   * @default false
   */
  heatmapCollapse?: boolean;
  /**
   * Flag to highlight specific rows and columns in the heatmap cells when a variable or a
   * sample is selected
   * @default false
   */
  heatmapHighlightByRowCol?: boolean;
  /**
   * Color for the highlighted heatmap cells where rows and columns intersect
   * @default "#9b6f2b"
   */
  heatmapHighlightByRowColIntersectionColor?: string;
  /**
   * Width for the highlighting heatmap boxes around the cells where rows and columns intersect
   * @default 3
   */
  heatmapHighlightByRowColIntersectionWidth?: number;
  /**
   * Flag to place the heatmap indicator before the overlay legends
   * @default true
   */
  heatmapIndicatorBeforeOverlays?: boolean;
  /**
   * Length in pixels for the heatmap indicator
   * @default 40
   */
  heatmapIndicatorHeight?: number;
  /**
   * Flag to show histogram in the heatmap indicator
   * @default false
   */
  heatmapIndicatorHistogram?: boolean;
  /**
   * Color for the heatmap indicator histogram
   * @default "#0ab0db"
   */
  heatmapIndicatorHistogramColor?: string;
  /**
   * Position for the heatmap indicator
   * @default "right"
   */
  heatmapIndicatorPosition?: "topLeft" | "top" | "topRight" | "right" | (string & {});
  /**
   * Length in pixels for the heatmap indicator line width used for increase the size of the
   * indicator
   * @default 200
   */
  heatmapIndicatorWidth?: number;
  /**
   * Type of Heatmap used to overlay a layer on top of an image. Special for spatial
   * transcriptomics and UpSet plots
   * @default "normal"
   */
  heatmapType?: "normal" | "circle" | "hexagon" | "upset" | "correlation" | "split" | (string & {});
  /**
   * Hidden Map features
   * @default []
   */
  hiddenMapFeatures?: unknown[];
  /**
   * Hierarchy for trees and bubble graphs made up of sample annotations present the data x
   * object
   * @default []
   */
  hierarchy?: unknown[];
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
  highlightBy?: Record<string, unknown> | unknown[];
  /**
   * Color for the The single emphasis color for highlighted / selected marks. The per-axis
   * colors varHighlightColor / smpHighlightColor / nodeHighlightColor and the interactive
   * selectionColor all inherit this value unless individually overridden.
   * @default "#fe6969"
   */
  highlightColor?: string;
  /**
   * De-emphasis strength (0-1) for backgrounded marks. On mouseover it is the proportion of
   * the grey overlay applied to the whole graph (0 disables the hover overlay). In "focus"
   * mode (highlightMode / selectionMode) it sets how present the grey of the non-focused marks
   * is: near 0 (e.g. 0.01) gives a very light, barely-there grey, higher values a darker, more
   * visible grey; when left at 0 focus falls back to 0.15 so the effect is visible without
   * extra config.
   * @default 0
   */
  highlightGreyOut?: number;
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
  highlightMode?: "highlight" | "ghost" | "focus" | (string & {});
  /**
   * Name of nodes in the data.nodes object to highlight
   * @default []
   */
  highlightNode?: unknown[];
  /**
   * Name of samples to highlight
   * @default []
   */
  highlightSmp?: unknown[];
  /**
   * Name of variables to highlight
   * @default []
   */
  highlightVar?: unknown[];
  /**
   * Flag to use dots as histogram bars
   * @default false
   */
  histogramAsDotplot?: boolean;
  /**
   * Width in actual units for the histogram bin
   * @default false
   */
  histogramBinWidth?: number;
  /**
   * Approximate number of bins in a histogram. It may vary to the actual number used in the
   * histogram to ensure a pretty size for the intervals in the histogram. Default is the same
   * as in ggplot which is 30
   * @default 30
   */
  histogramBins?: number;
  /**
   * Numeric vector to set the histogram breaks. It is automatically calculated if not defined
   * using the axisAlgorithm setting and the histogramBins
   * @default []
   */
  histogramBreaks?: unknown[];
  /**
   * Transparency applied to the filled histogram density
   * @default 0.85
   */
  histogramDensityFillTransparency?: number;
  /**
   * Color for the border in data points in dotplot histograms
   * @default "rgb(0,0,0)"
   */
  histogramDotplotBorderColor?: string;
  /**
   * Type of line for the border in data points in dotplot histograms
   * @default "solid"
   */
  histogramDotplotBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in data points in dotplot histograms
   * @default 0.5
   */
  histogramDotplotBorderSize?: number;
  /**
   * Color for the data points in dotplot histograms
   * @default "#fe6969"
   */
  histogramDotplotColor?: string;
  /**
   * Flag to use histogram lowest binning. If true, an x[i] equal to the breaks value will be
   * included in the first (or last, for right = FALSE) bar
   * @default true
   */
  histogramLowest?: boolean;
  /**
   * Line type for the histogram median
   * @default "dashed"
   */
  histogramMedianLineType?: "solid" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Color for the histogram path. If not specified the it defaults to the color of the
   * histogram bars
   * @default false
   */
  histogramPathColor?: string;
  /**
   * Transparency applied to the filled histogram path
   * @default 0.85
   */
  histogramPathFillTransparency?: number;
  /**
   * Width for the line of the histogram path line
   * @default 2
   */
  histogramPathWidth?: number;
  /**
   * Flag to use histogram right binning. If true, the histogram cells are right-closed (left
   * open) intervals
   * @default true
   */
  histogramRight?: boolean;
  /**
   * Histogram size estimator
   * @default "sturges"
   */
  histogramSizeEstimator?: "sturges" | "freedmanDiaconis" | "scott" | (string & {});
  /**
   * Direction to stack the dots in dotplot histograms
   * @default "down"
   */
  histogramStackDir?: "down" | "center" | "centerwhole" | (string & {});
  /**
   * Stack ratio for dotplot histograms. I has to be a value between 0 and 1
   * @default 1
   */
  histogramStackRatio?: number;
  /**
   * Histogram density type
   * @default "count"
   */
  histogramStat?: "density" | "count" | (string & {});
  /**
   * Type of histogram when multiple series are present
   * @default "dodged"
   */
  histogramType?: "dodged" | "staggered" | "stacked" | (string & {});
  /**
   * HTML string to use as template for the hover info
   * @default false
   */
  hoverTemplate?: string;
  /**
   * HTML string to use as template for the second hover info
   * @default false
   */
  hoverTemplate2?: string;
  /**
   * Name of a variable / sample annotation to filter the data with an external HTML widget.
   * Changes are not reflected when the customizer is open
   * @default false
   */
  htmlWidget?: string;
  /**
   * Height in pixels for the HTML widget. Changes are not reflected when the customizer is
   * open
   * @default 120
   */
  htmlWidgetHeight?: number;
  /**
   * Type of HTML widget to use. Changes are not reflected when the customizer is open
   * @default "auto"
   */
  htmlWidgetType?: "auto" | "radio" | "dropdown" | "range" | (string & {});
  /**
   * Scaling factor for extension of the hulls in the network communities
   * @default 1.25
   */
  hullScale?: number;
  /**
   * Ideogram. Additional ideograms can be loaded by appending to the CanvasXpress.chromosomes
   * object. The format of the ideogram is based on the R data for USCS.hg19.chr
   * CanvasXpress.chromosomes = { &nbsp;&nbsp;hg19 : { &nbsp;&nbsp;&nbsp;&nbsp;order : [ 1, 2,
   * 3, 4, 5, 6, 7, 8, ...], &nbsp;&nbsp;&nbsp;&nbsp;data : {
   * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 : [ [ 0, 2300000, "p36.33", "gneg" ], ...],
   * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 : [ [ 0, 4300000, "p25.3", "gneg" ], ...],
   * &nbsp;&nbsp;&nbsp;&nbsp;} &nbsp;&nbsp;} }
   * @default "hg38"
   */
  ideogram?: "hg38" | (string & {});
  /**
   * Factor name included in the data.z object used to map to the chromosome number
   * @default "chr"
   */
  ideogramChromosome?: string;
  /**
   * Chromosome number
   * @default "1"
   */
  ideogramChromosomeNumber?: string;
  /**
   * Factor name included in the data.z object used to map to the chromosome position
   * @default "pos"
   */
  ideogramChromosomePosition?: string;
  /**
   * Default size in pixels of the ideogram height
   * @default 20
   */
  ideogramHeight?: number;
  /**
   * Alignment (or position) for the ideogram segment
   * @default "center"
   */
  ideogramSegmentAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the ideogram segment
   * @default "middle"
   */
  ideogramSegmentBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in ideogram segment
   * @default "rgb(0,0,0)"
   */
  ideogramSegmentColor?: string;
  /**
   * Font size for the text in ideogram segment. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the ideogramSegmentScaleFontFactor
   * @default 9
   */
  ideogramSegmentFontSize?: number;
  /**
   * Font style for the ideogram segment
   * @default ""
   */
  ideogramSegmentFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the ideogram segment
   * @default 8
   */
  ideogramSegmentMargin?: number;
  /**
   * Rotation in degrees for the ideogram segment
   * @default 0
   */
  ideogramSegmentRotate?: number;
  /**
   * Scaling factor used to increase or decrease the ideogram segment font size in the canvas
   * @default 1
   */
  ideogramSegmentScaleFontFactor?: number;
  /**
   * Flag to show the full chromosome
   * @default true
   */
  ideogramShowFullChromosome?: boolean;
  /**
   * Flag to render all nodes at one time rather that rendering first the eventless nodes and
   * then the non-eventless nodes
   * @default false
   */
  ignoreEventlessOrder?: boolean;
  /**
   * Maximum times to try to load images. Used to calculate the timeout which will be
   * imageTimeOut / imageTries which will be 100ms by default
   * @default 10
   */
  imageMaxTries?: number;
  /**
   * Time in milliseconds to wait to load images
   * @default 1000
   */
  imageTimeOut?: number;
  /**
   * Array of urls of images used in scatter plots. Additional shapes will be used if the array
   * does not contain as many images as needed
   * @default []
   */
  images?: unknown[];
  /**
   * Imputation method for missing data when clustering
   * @default "mean"
   */
  imputeMethod?: "mean" | "median" | (string & {});
  /**
   * Array containing the factors to include when exploring the DOE. If left empty all the
   * factors will be included
   * @default []
   */
  includeDOE?: unknown[];
  /**
   * Time in milliseconds to start showing info after a mouse over
   * @default 50
   */
  infoTimeIn?: number;
  /**
   * Time in milliseconds to wait between updates for the mouse over info to show up
   * @default 3000
   */
  infoTimeOut?: number;
  /**
   * Initial size in pixels for the objects in the visualizations
   * @default null
   */
  initialSize?: number;
  /**
   * Option to reverse one-dimensional horizontal graphs for plotting from right to left
   * @default false
   */
  invertGraph?: boolean;
  /**
   * Flag to create or not a 3D network
   * @default false
   */
  is3DNetwork?: boolean;
  /**
   * Flag to create or not a 3D plot
   * @default false
   */
  is3DPlot?: boolean;
  /**
   * Flag to create a Bump plot
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
   * @default false
   */
  isDataLabels?: boolean;
  /**
   * Flag to use the color in the colorDataLabels as a background in data labels
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
   * @default false
   */
  isGraphTime?: boolean;
  /**
   * Flag to calculate all network metrics: betweenness, closeness, eccentricity and degree
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
   * @default false
   */
  jitter?: boolean;
  /**
   * Factor for jittering. The larger the more jitter
   * @default 0.8
   */
  jitterFactor?: number;
  /**
   * Default type for joining lines
   * @default "mitter"
   */
  joinType?: "mitter" | "bevel" | "round" | (string & {});
  /**
   * Flag to indicate whether to show the censored data as a rug in Kaplan-Meier plots
   * @default false
   */
  kmCensoredRug?: boolean;
  /**
   * Array with colors for the Kaplan-Meier plots
   * @default []
   */
  kmColors?: unknown[];
  /**
   * Confidence intervals type for Kaplan Meier estimates
   * @default "log"
   */
  kmConfidenceIntervalType?: "ordinary" | "log" | "loglog" | (string & {});
  /**
   * Confidence level for Kaplan Meier plots
   * @default 0.95
   */
  kmConfidenceLevel?: number;
  /**
   * Flag to indicate Kaplan-Meier plot was generated through survminer
   * @default false
   */
  kmCxplot?: boolean;
  /**
   * Flag to indicate whether zero values are censored or not in Kaplan-Meier plots
   * @default false
   */
  kmInvertCensored?: boolean;
  /**
   * Flag to show the p-value in Kaplan-Meier plots
   * @default false
   */
  kmPvalue?: boolean;
  /**
   * Data to show the number of subjects at risk in Kaplan-Meier plots. It will be aligned to
   * the major ticks in the x Axis
   * @default false
   */
  kmRiskTable?: string;
  /**
   * Data to use as time2 in Kaplan-Meier plots. It must be a numeric factor as it will be used
   * to set the range for the events in the Kaplan-Meier plot
   * @default false
   */
  kmTime?: string;
  /**
   * Number of clusters when clustering sample data with kmeans
   * @default 3
   */
  kmeansSmpClusters?: number;
  /**
   * Number of clusters when clustering variable data with kmeans
   * @default 3
   */
  kmeansVarClusters?: number;
  /**
   * Name of the variable annotation to use labels in Scatter2D plots
   * @default false
   */
  labelBy?: string;
  /**
   * Default position for the node label
   * @default "auto"
   */
  labelNodePosition?: "auto" | "center" | "top" | "right" | "bottom" | "left" | (string & {});
  /**
   * User-defined selection rules to label 2D data points. Evaluates against data or annotation
   * properties. Supports flat rule arrays (combined via labelSelectLogic) or recursive nested
   * arrays for complex AND / OR logic. Example: [["x", ">", 5]] or ["AND", ["x", ">", 5],
   * ["y", "<", 0]]
   * @default []
   */
  labelSelect?: unknown[];
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
  layoutConfig?: unknown[];
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
  layoutSpacing?: number;
  /**
   * Topology of the canvas. Number of columns and rows separated by X. For example: 2X1, 1X3,
   * etc
   * @default false
   */
  layoutTopology?: string;
  /**
   * Type of layout to place the position for the labels in the trellis plot. Identify the axis
   * that will be used to place the first segregating factor. rows will use the first
   * segregating factor in the rows and the second in the columns. cols will use the first
   * segregating factor in the columns and the second in the rows. wrap will wrap the
   * segregating factors putting the sample factors in the columns
   * @default "wrap"
   */
  layoutType?: "wrap" | "rows" | "cols" | (string & {});
  /**
   * Flag to load canvas only if shown in viewport
   * @default false
   */
  lazyLoad?: boolean;
  /**
   * Transparency for leaflet layers
   * @default 0.7
   */
  leafletAlpha?: number;
  /**
   * Leaflet tile type
   * @default "street"
   */
  leafletTileType?: "street" | "terrain" | "labels" | "satellite" | (string & {});
  /**
   * Zoom level before turning transparent the leaflet layers
   * @default 6
   */
  leafletZoomAlphaColor?: number;
  /**
   * Text to include at the left of the graph in the left margin
   * @default false
   */
  leftMarginalText?: string;
  /**
   * Alignment (or position) for the left marginal text
   * @default "left"
   */
  leftMarginalTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the left marginal text
   * @default "center"
   */
  leftMarginalTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in left marginal text
   * @default "rgb(0,0,0)"
   */
  leftMarginalTextColor?: string;
  /**
   * Font size for the text in left marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the leftMarginalTextScaleFontFactor
   * @default 12
   */
  leftMarginalTextFontSize?: number;
  /**
   * Font style for the left marginal text
   * @default ""
   */
  leftMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the left marginal text
   * @default 5
   */
  leftMarginalTextMargin?: number;
  /**
   * Rotation in degrees for the left marginal text
   * @default 0
   */
  leftMarginalTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the left marginal text font size in the canvas
   * @default 1
   */
  leftMarginalTextScaleFontFactor?: number;
  /**
   * Color for the border in legend background
   * @default "rgba(255,255,255,0)"
   */
  legendBackgroundBorderColor?: string;
  /**
   * Type of line for the border in legend background
   * @default "solid"
   */
  legendBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in legend background
   * @default 0.5
   */
  legendBackgroundBorderSize?: number;
  /**
   * Color for the legend background
   * @default "rgba(255,255,255,0)"
   */
  legendBackgroundColor?: string;
  /**
   * Number of columns in legends
   * @default 1
   */
  legendColumns?: number;
  /**
   * Direction for legend
   * @default "vertical"
   */
  legendDirection?: "vertical" | "horizontal" | (string & {});
  /**
   * Horizontal justification for legends when legend are in top or bottom positions
   * @default 0.5
   */
  legendHorizontalJustification?: number;
  /**
   * Flag to position the legend inside the graphs
   * @default false
   */
  legendInside?: boolean;
  /**
   * Color for the border in legend key background
   * @default "rgba(255,255,255,0)"
   */
  legendKeyBackgroundBorderColor?: string;
  /**
   * Type of line for the border in legend key background
   * @default "solid"
   */
  legendKeyBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in legend key background
   * @default 1
   */
  legendKeyBackgroundBorderSize?: number;
  /**
   * Color for the legend key background
   * @default "rgba(255,255,255,0)"
   */
  legendKeyBackgroundColor?: string;
  /**
   * Width in pixels for the legend key margin
   * @default 5
   */
  legendKeyMargin?: number;
  /**
   * Width in pixels for the legend key
   * @default 15
   */
  legendKeySize?: number;
  /**
   * Maximum number of items in the variable legends. If there are more items the legend will
   * be hidden
   * @default 50
   */
  legendMax?: number;
  /**
   * Object to specify custom order for the levels in the legends. The key of the object is the
   * name of a valid sample or variable annotation included in the data object. The value for
   * element is an array with the levels for the corresponding factor
   * @default false
   */
  legendOrder?: Record<string, unknown>;
  /**
   * Flag to draw legends by columns in the graphs
   * @default true
   */
  legendOrderByCols?: boolean;
  /**
   * Position for the the legend
   * @default "right"
   */
  legendPosition?: "topRight" | "right" | "bottomRight" | "bottom" | "bottomLeft" | "left" | "topLeft" | "top" | (string & {});
  /**
   * Number of rows in legends
   * @default 1
   */
  legendRows?: number;
  /**
   * Flag to use ggplot style for the size legends
   * @default false
   */
  legendStyleGgplot?: boolean;
  /**
   * Alignment (or position) for the legends
   * @default "left"
   */
  legendTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the legends
   * @default "middle"
   */
  legendTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in legends
   * @default "rgb(0,0,0)"
   */
  legendTextColor?: string;
  /**
   * Font size for the text in legends. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * legendTextScaleFontFactor
   * @default 10
   */
  legendTextFontSize?: number;
  /**
   * Font style for the legends
   * @default ""
   */
  legendTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the legends
   * @default 8
   */
  legendTextMargin?: number;
  /**
   * Rotation in degrees for the legends
   * @default 0
   */
  legendTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the legends font size in the canvas
   * @default 1
   */
  legendTextScaleFontFactor?: number;
  /**
   * Alignment (or position) for the legends
   * @default "left"
   */
  legendTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the legends
   * @default "middle"
   */
  legendTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in legends
   * @default "rgb(0,0,0)"
   */
  legendTitleColor?: string;
  /**
   * Font size for the text in legends. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * legendTitleScaleFontFactor
   * @default 10
   */
  legendTitleFontSize?: number;
  /**
   * Font style for the legends
   * @default ""
   */
  legendTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the legends
   * @default 8
   */
  legendTitleMargin?: number;
  /**
   * Rotation in degrees for the legends
   * @default 0
   */
  legendTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the legends font size in the canvas
   * @default 1
   */
  legendTitleScaleFontFactor?: number;
  /**
   * Vertical justification for legends when legend are in left or right positions
   * @default 0.5
   */
  legendVerticalJustification?: number;
  /**
   * Name of a sample annotation to stack the samples of each variable in Line graphs
   * @default false
   */
  lineBy?: string;
  /**
   * Lines decorations in the line graphs
   * @default "symbol"
   */
  lineDecoration?: string;
  /**
   * Line error type in the line graphs. The line type must be spline for the area error type.
   * @default "bar"
   */
  lineErrorType?: "bar" | "area" | (string & {});
  /**
   * Line Patterns used in line visualizations
   * @default ["solid","dotted","dashed","dotdash","longdash","twodash"]
   */
  linePatterns?: unknown[];
  /**
   * Default thickness in pixels for the lines in line plots
   * @default 1
   */
  lineThickness?: number;
  /**
   * Type of line used to join the points in line graphs
   * @default "rect"
   */
  lineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to create lines on groups when multiple grouping factors are used
   * @default true
   */
  linesOnGroups?: boolean;
  /**
   * Linkage type to use when clustering data
   * @default "complete"
   */
  linkage?: "single" | "complete" | "average" | (string & {});
  /**
   * Behaviour for the LLM when retriving new visualization
   * @default "update"
   */
  llmBehaviour?: "append" | "update" | (string & {});
  /**
   * Number of example to generate
   * @default 4
   */
  llmCodeExamples?: number;
  /**
   * Flag to show/hide the Flag to show the LLM code examples
   * @default false
   */
  llmCodeExamplesShow?: boolean;
  /**
   * Maximum number of sentences to use in each example
   * @default 8
   */
  llmCodeMaxSentences?: number;
  /**
   * Header as array
   * @default []
   */
  llmHeader?: unknown[];
  /**
   * Factor used to multiply the minimum number of examples per graph
   * @default 12
   */
  llmMinCoverageFactor?: number;
  /**
   * Minumum number of times each parameter needs to be included for each graph
   * @default 8
   */
  llmMinParameterCoverage?: number;
  /**
   * Default value for the prompt
   * @default false
   */
  llmPrompt?: string;
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
  llmServiceURL?: string;
  /**
   * Array to cache LLM questions
   * @default []
   */
  llmStack?: unknown[];
  /**
   * The lower the temperature, the more deterministic the results in the sense that the
   * highest probable next token is always picked
   * @default 0
   */
  llmTemperature?: number;
  /**
   * Tool use to create or modify a CanvasXpress config
   * @default "generate"
   */
  llmTool?: "generate" | "modify" | (string & {});
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
   * @default 0.8
   */
  loessBandwidth?: number;
  /**
   * Loess cell. If interpolation is used this controls the accuracy of the approximation via
   * the maximum number of points in a cell in the kd tree. Cells with more than
   * floor(n*span*cell) points are subdivided
   * @default 0.2
   */
  loessCell?: number;
  /**
   * Loess degree. 0 : Constant, 1 : Linear, 2 : Quadratic
   * @default 2
   */
  loessDegree?: string;
  /**
   * Loess Family. Type of error distribution to be optimized in fitting. The default,
   * gaussian, is fitting with least squares. Fitting with Tukeys biweight M-Estimator is used
   * if family is symmetric
   * @default "gaussian"
   */
  loessFamily?: "gaussian" | "symmetric" | (string & {});
  /**
   * Flag to normalize loess fit in Scatter2D plots
   * @default true
   */
  loessNormalize?: boolean;
  /**
   * Loess span. Factor to adjust the gaussian shape of the loess curve. A vaulue between 0 and
   * 1
   * @default 0.75
   */
  loessSpan?: number;
  /**
   * LoessStatistics. The statistics to be computed exactly, approximately or not at all? Exact
   * computation can be very slow
   * @default "approximate"
   */
  loessStatistics?: "approximate" | "exact" | (string & {});
  /**
   * Loess steps. Number of steps to smooth the line
   * @default 30
   */
  loessSteps?: number;
  /**
   * Loess Surface. The fitted surface to be computed exactly (direct) or via interpolation
   * from a kd tree
   * @default "interpolate"
   */
  loessSurface?: "direct" | "interpolate" | (string & {});
  /**
   * Sample name included in the data.y.smps object used to map to the copy number value
   * @default false
   */
  manhattanCNV?: string;
  /**
   * Colors for the manhattan plots alternative chromosomes
   * @default ["rgb(128,128,128)","rgb(135,206,235)"]
   */
  manhattanColors?: unknown[];
  /**
   * Manhattan contrast color
   * @default "rgba(0,0,0,0.1)"
   */
  manhattanContrastColor?: unknown[];
  /**
   * Sample name included in the data.y.smps object used to map to the chromosome number
   * @default false
   */
  manhattanMarkerChromosomeNumber?: string;
  /**
   * Sample name included in the data.y.smps object used to map to the negative log 10 p value
   * @default false
   */
  manhattanMarkerLogPValue?: string;
  /**
   * Sample name included in the data.y.smps object used to map to the position in base pairs
   * @default false
   */
  manhattanMarkerPosition?: string;
  /**
   * Sample name included in the data.y.smps object used to map the end position
   * @default false
   */
  manhattanRangeEnd?: string;
  /**
   * Number of pixels for the line width in manhattan plots
   * @default 10
   */
  manhattanRangeLineWidth?: number;
  /**
   * Sample name included in the data.y.smps object used to map the start position
   * @default false
   */
  manhattanRangeStart?: string;
  /**
   * Map Latitude Of Origin in degrees. (Applicable to Albers projection only). Default adjusts
   * to USA maps
   * @default -96
   */
  mapCentralMeridian?: number;
  /**
   * Color for the maps
   * @default "#0ab0db"
   */
  mapColor?: string;
  /**
   * Map config
   * @default false
   */
  mapConfig?: Record<string, unknown>;
  /**
   * Map config for features use to translate and scale
   * @default false
   */
  mapConfigFeatures?: Record<string, unknown>;
  /**
   * Flag to show Map Graticule
   * @default false
   */
  mapGraticuleShow?: boolean;
  /**
   * Map Graticule type
   * @default "solid"
   */
  mapGraticuleType?: "dashed" | "solid" | (string & {});
  /**
   * Map Id for the map div in the DOM
   * @default false
   */
  mapId?: string;
  /**
   * Map Latitude Of Origin in degrees. (Applicable to Albers projection only). Default adjusts
   * to USA maps
   * @default 23
   */
  mapLatitudeOrigin?: number;
  /**
   * Default shape for the markers in map (if no shapeBy is specified
   * @default "drop"
   */
  mapMarkerShape?: "drop" | "sphere" | "square" | "triangle" | "star" | "rhombus" | "octagon" | "mdavid" | "pentagon" | "rectangle" | (string & {});
  /**
   * Scale factor for the marker shapes
   * @default 1
   */
  mapMarkerShapeScaleFactor?: number;
  /**
   * Color for the outline of the maps
   * @default "rgb(204,204,204)"
   */
  mapOutlineColor?: string;
  /**
   * Map projection
   * @default "mercator"
   */
  mapProjection?: "mercator" | "albers" | "orthographic" | (string & {});
  /**
   * Samples to use in maps
   * @default []
   */
  mapSmps?: unknown[];
  /**
   * Map Standard Parallel 1 in degrees. (Applicable to Albers projection only). Default
   * adjusts to USA maps
   * @default 29.5
   */
  mapStandardParallel1?: number;
  /**
   * Map Standard Parallel 2 in degrees. (Applicable to Albers projection only). Default
   * adjusts to USA maps
   * @default 45.5
   */
  mapStandardParallel2?: number;
  /**
   * Array of properties in the map topoJSON features to use as zip code ids
   * @default ["GEOID20"]
   */
  mapZipCodeIds?: unknown[];
  /**
   * Relative length in pixels for the distance between various objects in the graphs. This
   * value is adjusted acording to the graph dimensions
   * @default 8
   */
  margin?: number;
  /**
   * Specifies the length in pixels for the bottom margin in the canvas
   * @default 8
   */
  marginBottom?: number;
  /**
   * Specifies the length in pixels for the left margin in the canvas
   * @default 8
   */
  marginLeft?: number;
  /**
   * Specifies the length in pixels for the right margin in the canvas
   * @default 16
   */
  marginRight?: number;
  /**
   * Specifies the length in pixels for the top margin in the canvas
   * @default 8
   */
  marginTop?: number;
  /**
   * Utility to create dynamic markers in Map. It must have a latitude and longitude metadata
   * too
   * @default false
   */
  markerBy?: string;
  /**
   * Maximum number of graphs when creating a DOE
   * @default 8
   */
  maxDOENumber?: number;
  /**
   * Maximum number of samples or variables to display in the data customizer
   * @default 10000
   */
  maxDataCustomizerEntries?: number;
  /**
   * Thickness for the edges when the edges are sized by a property. Should be a value between
   * 10 and 20
   * @default 10
   */
  maxEdgeSize?: number;
  /**
   * Maximum length in characters a feature label can have so anything above is truncated
   * @default 30
   */
  maxFeatureStringLen?: number;
  /**
   * Number of maximum iterations when clustering data with kmeans for one dimensional graphs
   * or maximum number of iterations when calculating force direct layout networks
   * @default 500
   */
  maxIterations?: number;
  /**
   * Maximum length in characters for the sample or variable metadata when included as an
   * overlay. Anything above is truncated
   * @default 30
   */
  maxOverlayStringLen?: number;
  /**
   * Max pie sectors. After that number the sectors will be put in a sector named other
   * @default 20
   */
  maxPieSectors?: number;
  /**
   * Maximum length in characters a sample label or description can have so anything above is
   * truncated
   * @default 25
   */
  maxSmpStringLen?: number;
  /**
   * Maximum number of submenus in the context menus
   * @default 25
   */
  maxSubMenus?: number;
  /**
   * Maximum size for any text in the canvas
   * @default 40
   */
  maxTextSize?: number;
  /**
   * Maximum length in characters a variable label or description can have so anything above is
   * truncated
   * @default 25
   */
  maxVarStringLen?: number;
  /**
   * Metadata for the columns of files retrieved from a URL
   * @default {}
   */
  metaData?: Record<string, unknown>;
  /**
   * Horizontal alignment of the title, value and subtitle text in a card meter.
   * @default "left"
   */
  meterAlign?: "left" | "center" | (string & {});
  /**
   * Color for the Meter Background Color
   * @default "rgb(229,229,229)"
   */
  meterBackgroundColor?: string;
  /**
   * Frame each meter tile in a dashboard-style card (a rounded rectangle with a subtle border)
   * and shrink the dial to fit the title and value text inside it.
   * @default false
   */
  meterCard?: boolean;
  /**
   * Color for the Fill color of the dashboard card frame drawn behind each meter tile when
   * meterCard is on (and of the card meterType). When false the frame uses meterBackground
   * (default). Themeable: cxdark and cxblue override it with their own panel background so the
   * card blends into a dark page.
   * @default false
   */
  meterCardBackgroundColor?: string;
  /**
   * Color for the Border color of the dashboard card frame drawn behind each meter tile when
   * meterCard is on (and of the card meterType). When false the frame uses xAxisGridMajorColor
   * (default). Themeable: cxdark and cxblue set it to their own panel background so the border
   * blends into a dark page.
   * @default false
   */
  meterCardBorderColor?: string;
  /**
   * Gap in pixels between the dashboard meter cards and around them, kept uniform for single
   * meters and grids of meters
   * @default 10
   */
  meterMargin?: number;
  /**
   * Color for the Meter Needle Color
   * @default "rgb(0,0,0)"
   */
  meterNeedleColor?: string;
  /**
   * For a ring meter: render a selection-aware progress ring - a greyish full-circle track
   * with a solid accent arc sized to the fraction of records currently selected (via
   * broadcast), and the selected count centered. When no selection is active the ring reads
   * full.
   * @default false
   */
  meterProgress?: boolean;
  /**
   * Position of the title for a ring meter: top (centered above the circle) or topLeft (in the
   * top-left corner of the card).
   * @default "top"
   */
  meterRingTitlePosition?: "top" | "topLeft" | (string & {});
  /**
   * For a ring meter: the centered value font is sized to fit this many digits, so rings of
   * the same tile size show the same font regardless of each value's length (a longer value
   * still shrinks to fit). Set to 0 to size each ring to its own value instead.
   * @default 6
   */
  meterRingValueDigits?: number;
  /**
   * A number between 0.1 and 1 to adjust the thickness of the vertical, horizontal and state
   * meters as a fraction of the available space, so the meter always stays inside the canvas
   * @default 1
   */
  meterThickness?: number;
  /**
   * Alignment of the title along the axis for the horizontal and vertical meters (start =
   * left/bottom, end = right/top).
   * @default "center"
   */
  meterTitleAlign?: "start" | "center" | "end" | (string & {});
  /**
   * Topology set up for the meters
   * @default "auto"
   */
  meterTopology?: "auto" | "grid" | "horizontal" | "vertical" | (string & {});
  /**
   * Type of meter.
   * @default "gauge"
   */
  meterType?: "gauge" | "speedometer" | "vertical" | "horizontal" | "state" | "digital" | "number" | "card" | "ring" | (string & {});
  /**
   * Number of pixels to add to the minimum thickness for the edges when the edges are sized by
   * a property. Should be a value between 0 and 1.5
   * @default 0
   */
  minEdgeSize?: number;
  /**
   * Minimum size for any text in the canvas
   * @default 4
   */
  minTextSize?: number;
  /**
   * Color for the missing data
   * @default "rgb(245,245,245)"
   */
  missingDataColor?: string;
  /**
   * String value use to specify missing data
   * @default "NA"
   */
  missingDataValue?: string;
  /**
   * Flag to make parents move when a child is moved
   * @default false
   */
  moveParentsWithChildren?: boolean;
  /**
   * Number of sets to draw
   * @default 5
   */
  nUpSets?: number;
  /**
   * Flag to omit NaN values in log transformation
   * @default false
   */
  nanOmit?: boolean;
  /**
   * Number of iterations to run all constraints
   * @default 0
   */
  networkColaAllConstraintsIterations?: number;
  /**
   * Flag to avoid overlaps of nodes in the cola network
   * @default true
   */
  networkColaAvoidOverlaps?: boolean;
  /**
   * Flag to center the cola network
   * @default true
   */
  networkColaCenterGraph?: boolean;
  /**
   * Threshold for the convergence of the cola network
   * @default 0.01
   */
  networkColaConvergenceThreshold?: number;
  /**
   * Causes constraints to be generated such that directed graphs are laid out either from
   * left-to-right or top-to-bottom. A separation constraint is generated in the selected axis
   * for each edge that is not involved in a cycle
   * @default false
   */
  networkColaFlowLayoutAxis?: string;
  /**
   * Causes constraints to be generated such that directed graphs are laid out either from
   * left-to-right or top-to-bottom. A separation constraint is generated in the selected axis
   * for each edge that is not involved in a cycle
   * @default 10
   */
  networkColaFlowLayoutSeparation?: number;
  /**
   * Number of iterations to run grid snap
   * @default 0
   */
  networkColaGridSnapIterations?: number;
  /**
   * Compactness for the groups in the cola network
   * @default 0.000001
   */
  networkColaGroupCompactness?: number;
  /**
   * Flag to handle disconnected nodes in the cola network
   * @default true
   */
  networkColaHandleDisconnected?: boolean;
  /**
   * Ideal length foreach link based on the graph structure around that link. You can use this
   * to create extra space around hub-nodes in dense graphs
   * @default false
   */
  networkColaJaccardLinkLength?: number;
  /**
   * Default length foreach link based on the graph structure around that link. You can use
   * this to create extra space around hub-nodes in dense graphs
   * @default 1
   */
  networkColaJaccardLinkLengthDefault?: number;
  /**
   * Flag to keep running the cola network
   * @default true
   */
  networkColaKeepRunning?: boolean;
  /**
   * Ideal length for links
   * @default 20
   */
  networkColaLinkDistance?: number;
  /**
   * Number of iterations to run unconstrained
   * @default 0
   */
  networkColaStartUnconstrainedIterations?: number;
  /**
   * Symmetric difference for the link lengths in the cola network
   * @default 5
   */
  networkColaSymmetricDiffLinkLengths?: number;
  /**
   * Number of user iterations to run unconstrained
   * @default 0
   */
  networkColaUserConstraintIterations?: number;
  /**
   * Threshold for the convergence of the network
   * @default 0.05
   */
  networkConvergenceThreshold?: number;
  /**
   * Flag to use positioning forces rather than centering forces. Applicable only to force
   * directed layouts that contain multiple subnetworks
   * @default true
   */
  networkDisjoint?: boolean;
  /**
   * Drag force coefficient. Used to slow down system, thus should be less than 1. The closer
   * it is to 0 the less tight system will be
   * @default 0.09
   */
  networkDragCoeff?: number;
  /**
   * Flag to prevent autoscaling for the network layout. Useful when images are part of the
   * network
   * @default false
   */
  networkFreeze?: boolean;
  /**
   * Flag to prevent autoscaling for the network layout after loading. Useful when images are
   * part of the network
   * @default false
   */
  networkFreezeOnLoad?: boolean;
  /**
   * Network Gravity
   * @default 0.75
   */
  networkGravity?: number;
  /**
   * Type of network layout
   * @default "forceDirected"
   */
  networkLayoutType?: "forceDirected" | "circular" | "radial" | "cola" | (string & {});
  /**
   * Number of iterations to separate subnetworks
   * @default 15
   */
  networkMaxIterations?: number;
  /**
   * Flag to draw the nodes on top of edges in the networks. Useful for very populated netwrok
   * graphs. When is set to true all the edges will be in the background
   * @default true
   */
  networkNodesOnTop?: boolean;
  /**
   * Position for the progress bar
   * @default "bottom"
   */
  networkProgressBarPosition?: "none" | "bottom" | "center" | "top" | (string & {});
  /**
   * Coulombs law coefficient. Its used to repel nodes thus should be negative if you make it
   * positive nodes start attract each other
   * @default -1
   */
  networkRepulsion?: number;
  /**
   * Node Id of the network root
   * @default false
   */
  networkRoot?: string;
  /**
   * Network Speed
   * @default 0.1
   */
  networkSpeed?: number;
  /**
   * Hooks law coefficient. 1 - solid spring
   * @default 0.0008
   */
  networkSpringCoeff?: number;
  /**
   * Ideal length for links (springs in physical model)
   * @default 35
   */
  networkSpringLength?: number;
  /**
   * Theta coefficient from Barnes Hut simulation. Ranged between (0, 1). The closer its to 1
   * the more nodes algorithm will have to go through. Setting it to one makes Barnes Hut
   * simulation no different from brute-force forces calculation (each node is considered)
   * @default 0.8
   */
  networkTheta?: number;
  /**
   * Default time step (dt) for forces integration
   * @default 20
   */
  networkTimeStep?: number;
  /**
   * Network vendor
   * @default false
   */
  networkVendor?: string;
  /**
   * Alignment (or position) for the node
   * @default "center"
   */
  nodeAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the node
   * @default "middle"
   */
  nodeBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the nodes
   * @default "rgb(245,245,245)"
   */
  nodeColor?: string;
  /**
   * Font size for the text in node. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * nodeScaleFontFactor
   * @default 10
   */
  nodeFontSize?: number;
  /**
   * Font style for the node
   * @default ""
   */
  nodeFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted nodes; inherits
   * highlightColor when not set
   * @default false
   */
  nodeHighlightColor?: string;
  /**
   * Margin to pad or separate the characters in the node
   * @default 8
   */
  nodeMargin?: number;
  /**
   * Rotation in degrees for the node
   * @default 0
   */
  nodeRotate?: number;
  /**
   * Scaling factor used to increase or decrease the node font size in the canvas
   * @default 1
   */
  nodeScaleFontFactor?: number;
  /**
   * Scaling factor for increasing size of all nodes in the network
   * @default 1
   */
  nodeSizeScaleFactor?: number;
  /**
   * Sort group keys numerically (type-aware: plain integers, range labels, composite keys)
   * instead of lexicographically
   * @default false
   */
  numericGroupSort?: boolean;
  /**
   * Color for the border of all objects in one dimensional graphs. It turns into the
   * non-transparent fill color if set to false
   * @default "rgba(0,0,0,0)"
   */
  objectBorderColor?: string;
  /**
   * The transparency for the color fill of all objects in one dimensional graphs. A value
   * between 0 and 1
   * @default 1
   */
  objectColorTransparency?: number;
  /**
   * Color for the odd numbers in samples when the property block contrast is set in one
   * dimensional plots or the color for odd number residues in translations in genome plots
   * @default "rgb(255,255,255)"
   */
  oddColor?: string;
  /**
   * Flag to work offline
   * @default false
   */
  offline?: boolean;
  /**
   * Flag to show the alteration frequency as text (e.g. 83%) to the right of each row in the
   * oncoprint
   * @default true
   */
  oncoprintAlteredText?: boolean;
  /**
   * String to identify the data object to use to draw the copy number alterations; that is the
   * amplifications (which will be colored red) and deletions (which will be colored blue). It
   * MUST be a file with only two categorical levels
   * @default false
   */
  oncoprintCNA?: string;
  /**
   * Flag to show column summary in oncoprints
   * @default false
   */
  oncoprintColSummary?: boolean;
  /**
   * String to identify the data object to use to draw the mRNA expression call as a cell
   * border (e.g. mRNA high, mRNA low). Drawn as a border so it does not compete with the
   * copy-number background or mutation bar
   * @default false
   */
  oncoprintEXP?: string;
  /**
   * Position for the heatmap in the oncoprint
   * @default "bottom"
   */
  oncoprintHeatmapPosition?: "right" | "bottom" | "left" | "top" | (string & {});
  /**
   * String to identify the data object to use to draw the mutations. For example missense,
   * non-synonymous, truncating, etc. Each level will be colored in a shade of green
   * @default false
   */
  oncoprintMUT?: string;
  /**
   * Flag to switch to show variables and samples without any alterations
   * @default true
   */
  oncoprintNoAlterations?: boolean;
  /**
   * Flag marking the oncoprint data as already ordered (e.g. cBioPortal gene-frequency and
   * sample-cascade order); the default oncoprint sort is skipped so that order is kept
   * @default false
   */
  oncoprintPresorted?: boolean;
  /**
   * Flag to show row summary in oncoprints
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
  optimizeTextPositionCooling?: number;
  /**
   * Flag to enforce bounds when optimizing position for text in many plots
   * @default true
   */
  optimizeTextPositionEnforceBounds?: boolean;
  /**
   * Startegy to optimize placement of text
   * @default "greedy"
   */
  optimizeTextPositionStrategy?: "annealing" | "greedy" | "boundingBox" | (string & {});
  /**
   * Temperature parameter when optimizing position for text in many plots
   * @default 1000
   */
  optimizeTextPositionTemperature?: number;
  /**
   * Cadence word for the price-panel title (e.g. daily/weekly/monthly); auto-inferred from the
   * date spacing when unset
   * @default false
   */
  optionsWallCadence?: string;
  /**
   * Fixed maximum for the calls flank value axis (metric). Unset = auto-scale to the expiry
   * @default false
   */
  optionsWallCallMax?: number;
  /**
   * Fixed minimum for the calls flank value axis (metric). Unset = auto (0)
   * @default false
   */
  optionsWallCallMin?: number;
  /**
   * Center the value axis on the spot price so roughly the same number of strikes fall above
   * and below it (keeps all candles visible)
   * @default false
   */
  optionsWallCenterSpot?: boolean;
  /**
   * Option chain object for one expiry: {strikes, expiry, call:{premium,iv,volume},
   * put:{premium,iv,volume}}
   * @default false
   */
  optionsWallChain?: string;
  /**
   * Expiry label shown in the flank panel titles (e.g. "2026-10-17")
   * @default false
   */
  optionsWallExpiry?: string;
  /**
   * What the flank area curves plot against strike: implied volatility (the smile) or premium
   * @default "iv"
   */
  optionsWallFlankMetric?: "iv" | "premium" | (string & {});
  /**
   * Shade the in-the-money region of each flank (above spot for puts, below for calls)
   * @default true
   */
  optionsWallMoneynessShading?: boolean;
  /**
   * Relative widths of the [puts, price, calls] panels
   * @default [1,2,1]
   */
  optionsWallPanelRatio?: unknown[];
  /**
   * Fixed maximum for the puts flank value axis (metric). Unset = auto-scale to the expiry
   * @default false
   */
  optionsWallPutMax?: number;
  /**
   * Fixed minimum for the puts flank value axis (metric). Unset = auto (0)
   * @default false
   */
  optionsWallPutMin?: number;
  /**
   * Which side the puts panel is drawn on; calls take the opposite side
   * @default "left"
   */
  optionsWallPutsSide?: "left" | "right" | (string & {});
  /**
   * Spot price for the dashed spot ruler. Defaults to the last Close in the price series
   * @default false
   */
  optionsWallSpot?: number;
  /**
   * Color for the outline of the 3D Scatters
   * @default "rgb(0,0,0)"
   */
  outline3DColor?: string;
  /**
   * Name of the annotation for the outline when drawing a multidimensional Heatmap
   * @default false
   */
  outlineBy?: string;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * color the outline data points when drawing a multidimensional Heatmap. It must be located
   * within the data.y object (for example: data.y.data4)
   * @default false
   */
  outlineByData?: string;
  /**
   * Default width in pixels for lines in networks and other line elements in all
   * visualizations except for the lines in the line plots
   * @default 1
   */
  outlineWidth?: number;
  /**
   * Alignment (or position) for the overlays
   * @default "center"
   */
  overlayTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the overlays
   * @default "middle"
   */
  overlayTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in overlays
   * @default "rgb(0,0,0)"
   */
  overlayTextColor?: string;
  /**
   * Font size for the text in overlays. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * overlayTextScaleFontFactor
   * @default 10
   */
  overlayTextFontSize?: number;
  /**
   * Font style for the overlays
   * @default ""
   */
  overlayTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the overlays
   * @default 5
   */
  overlayTextMargin?: number;
  /**
   * Rotation in degrees for the overlays
   * @default 0
   */
  overlayTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the overlays font size in the canvas
   * @default 1
   */
  overlayTextScaleFontFactor?: number;
  /**
   * Position for the the variable and sample overlays legend
   * @default "topRight"
   */
  overlaysLegendPosition?: "topRight" | "right" | "bottomLeft" | "bottom" | (string & {});
  /**
   * Relative length in pixels for the thickness of the colored boxes to classify samples and
   * or variables in one dimensional plots. This value is adjusted acording to the graph
   * dimensions
   * @default 28
   */
  overlaysThickness?: number;
  /**
   * Specify the pixel count for stacking to address overplotting. Increased values result in
   * reduced overplotting, particularly advantageous for datasets with numerous variables
   * @default 500000
   */
  overplotPixels?: number;
  /**
   * Color for the border in panel background. This includes only the area where the data is
   * plotted
   * @default "rgba(204,204,204,0)"
   */
  panelBackgroundBorderColor?: string;
  /**
   * Type of line for the border in panel background. This includes only the area where the
   * data is plotted
   * @default "solid"
   */
  panelBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in panel background. This includes only the area where the data
   * is plotted
   * @default 1
   */
  panelBackgroundBorderSize?: number;
  /**
   * Color for the panel background. This includes only the area where the data is plotted
   * @default "rgb(255,255,255)"
   */
  panelBackgroundColor?: string;
  /**
   * Color for the border in panel background
   * @default "rgba(204,204,204,1)"
   */
  panelOverlayBackgroundBorderColor?: string;
  /**
   * Type of line for the border in panel background
   * @default "solid"
   */
  panelOverlayBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in panel background
   * @default 1
   */
  panelOverlayBackgroundBorderSize?: number;
  /**
   * Color for the panel background
   * @default "rgb(255,255,255)"
   */
  panelOverlayBackgroundColor?: string;
  /**
   * Percentage step for panning networks
   * @default 0.2
   */
  panningStep?: number;
  /**
   * Number of unit to pan the network in the X dimension
   * @default 0
   */
  panningX?: number;
  /**
   * Number of unit to pan the network in the Y dimension
   * @default 0
   */
  panningY?: number;
  /**
   * Password to protect exploring data
   * @default false
   */
  password?: string;
  /**
   * Name of a variable annotation or a sample name or the string variable to pattern the
   * variables. When patternByData is specified patternBy is used for the title in the legend
   * @default false
   */
  patternBy?: string;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * pattern the data points when drawing a multidimensional Heatmap. It must be located within
   * the data.y object (for example: data.y.data4)
   * @default false
   */
  patternByData?: string;
  /**
   * Color for the Color for the fill of the patterns used in visualizations
   * @default "rgba(0,0,0,0)"
   */
  patternFillColor?: string;
  /**
   * Object to assign custom patterns to sample annotations and variable annotations included
   * in the data object. The key of the object is the name of an annotation in the data.x
   * object or the name of an annotation in the data.z object. A default pattern will be
   * assigned to a data point whose value was not included the object
   * @default false
   */
  patternKey?: Record<string, unknown>;
  /**
   * Name of the attribute to pattern the nodes
   * @default false
   */
  patternNodeBy?: string;
  /**
   * Color for the Color for the stroke of the patterns used in visualizations
   * @default "rgb(0,0,0)"
   */
  patternStrokeColor?: string;
  /**
   * Width in pixels for the stroke of the patterns used in visualizations
   * @default 1
   */
  patternStrokeWidth?: number;
  /**
   * Patterns used in visualizations to fill objects. This array must contain one or more
   * pattern names and in concert with the color array can be used to specify the pattern
   * colors for all filled objects in the visualizations.. The order will dictate the
   * utilization in the visualization
   */
  patterns?: unknown[];
  /**
   * Specifies the minimum unit interval or fraction for the plotting area
   * @default 0.35
   */
  percentAspectRatioPlotArea?: number;
  /**
   * Factor to use to make the 3D perspective. The higher the number the more perspective.
   * Perspective of zero is no perspective at all
   * @default 2.2
   */
  perspectiveFactor?: number;
  /**
   * Utility to create pie with a sample annotation
   * @default false
   */
  pieBy?: string;
  /**
   * Pie Colors. Defaults to the parameter colors
   * @default []
   */
  pieColors?: unknown[];
  /**
   * Percentage of the radius in the pies to remove to make a donut. It must be a number
   * between 0 to 1
   * @default 0
   */
  pieInnerRadius?: number;
  /**
   * Pie label type to show the percentage of the slice or the actual number
   * @default "percentage"
   */
  pieLabelType?: "percentage" | "value" | (string & {});
  /**
   * Location for the values in the pie charts
   * @default "inside"
   */
  pieSegmentLabels?: "inside" | "outside" | (string & {});
  /**
   * Number of decimals for values in the Pie charts
   * @default 0
   */
  pieSegmentPrecision?: number;
  /**
   * Length in pixels for the separation of the pieces of the pie charts
   * @default 1
   */
  pieSegmentSeparation?: number;
  /**
   * Position for the pices of the pie
   * @default "separated"
   */
  pieType?: "separated" | "solid" | (string & {});
  /**
   * Utility to pivot data with a sample annotation
   * @default false
   */
  pivotBy?: string;
  /**
   * Flag to make the plot playable if there are after rendering functions
   * @default false
   */
  playable?: boolean;
  /**
   * Color for the border in plot background. This includes the entire graph area
   * @default "rgba(204,204,204,0)"
   */
  plotBackgroundBorderColor?: string;
  /**
   * Type of line for the border in plot background. This includes the entire graph area
   * @default "solid"
   */
  plotBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in plot background. This includes the entire graph area
   * @default 1
   */
  plotBackgroundBorderSize?: number;
  /**
   * Color for the plot background. This includes the entire graph area
   * @default "rgb(255,255,255)"
   */
  plotBackgroundColor?: string;
  /**
   * Flag to indicate whether to group the data variable rather than by sample
   * @default false
   */
  plotByVariable?: boolean;
  /**
   * Style for some shapes used mainly in boxplot, violin and density plots
   * @default "default"
   */
  plotStyle?: "default" | "ggplot" | "ggplotSwitched" | "open" | "border" | (string & {});
  /**
   * Flag to prescale or not the network. This is an aesthetic parameter to make the graph look
   * nicer... Sometimes..
   * @default false
   */
  preScaleNetwork?: boolean;
  /**
   * Print Magnification to produce High Definition images
   * @default 1
   */
  printMagnification?: number;
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
  printType?: "download" | "window" | (string & {});
  /**
   * Color for the the background track (rail) drawn behind the fill when bulletStyle is
   * "progress"; when false a muted tint of the foreground is used
   * @default false
   */
  progressTrackColor?: string;
  /**
   * A number between 0.1 and 1 to adjust the thickness of the rail when bulletStyle is
   * "progress"
   * @default 0.35
   */
  progressWidthRatio?: number;
  /**
   * String use to call the LLM from initialization
   * @default false
   */
  prompt?: string;
  /**
   * Flag to indicate to use pseudo random rather than random
   * @default true
   */
  pseudoRandom?: boolean;
  /**
   * Array with quantiles to use in quantile regression plots
   * @default ["0.25","0.5","0.75"]
   */
  quantiles?: unknown[];
  /**
   * Name of the samples, groups or variables to be displayed in the R axis
   * @default []
   */
  rAxis?: unknown[];
  /**
   * Value to ceil the data in the R axis
   * @default null
   */
  rAxisCeilValue?: number;
  /**
   * Flag to force exact values in R axis
   * @default false
   */
  rAxisExact?: boolean;
  /**
   * Value to factor the data in the R axis
   * @default null
   */
  rAxisFactorValue?: number;
  /**
   * Value to floor the data in the R axis
   * @default null
   */
  rAxisFloorValue?: number;
  /**
   * Color for the major grid lines in the R axis
   * @default "rgb(204, 204, 204)"
   */
  rAxisGridMajorColor?: string;
  /**
   * Type of line for the major grid lines in the R axis
   * @default "solid"
   */
  rAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the major grid lines in the R axis
   * @default true
   */
  rAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the R axis
   * @default 1
   */
  rAxisGridMajorTransparency?: number;
  /**
   * Width for the major grid lines in the R axis
   * @default 1
   */
  rAxisGridMajorWidth?: number;
  /**
   * Color for the minor grid lines in the R axis
   * @default "rgb(204, 204, 204)"
   */
  rAxisGridMinorColor?: string;
  /**
   * Type of line for the minor grid lines in the R axis
   * @default "solid"
   */
  rAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the R axis
   * @default true
   */
  rAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the R axis
   * @default 1
   */
  rAxisGridMinorTransparency?: number;
  /**
   * Width for the minor grid lines in the R axis
   * @default 0.5
   */
  rAxisGridMinorWidth?: number;
  /**
   * Orientation to show the ticks values in circular plots
   * @default "perpendicular"
   */
  rAxisLabelOrientation?: "perpendicular" | "circular" | (string & {});
  /**
   * Color for the log tick lines in the R axis
   * @default "rgb(0,0,0)"
   */
  rAxisLogTicksColor?: string;
  /**
   * Length for the log tick lines in the R axis
   * @default 8
   */
  rAxisLogTicksLength?: number;
  /**
   * Type of line for the log tick lines in the R axis
   * @default "solid"
   */
  rAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the log tick lines in the R axis
   * @default false
   */
  rAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the R axis
   * @default 1
   */
  rAxisLogTicksTransparency?: number;
  /**
   * Width for the log tick lines in the R axis
   * @default 1
   */
  rAxisLogTicksWidth?: number;
  /**
   * Flag to show on not the percent in each segment in the R axis
   * @default false
   */
  rAxisPercentShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with rAxisSetValues in the R axis
   * @default []
   */
  rAxisSetLabels?: unknown[];
  /**
   * Set the minor values for the axis in the R axis
   * @default []
   */
  rAxisSetMinorValues?: unknown[];
  /**
   * Set the values for the axis in the R axis
   * @default []
   */
  rAxisSetValues?: unknown[];
  /**
   * Flag to show/hide the R axis
   * @default true
   */
  rAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @default "center"
   */
  rAxisTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @default "middle"
   */
  rAxisTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis text
   * @default "rgb(0,0,0)"
   */
  rAxisTextColor?: string;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * rAxisTextScaleFontFactor
   * @default 8
   */
  rAxisTextFontSize?: number;
  /**
   * Font style for the axis text
   * @default ""
   */
  rAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @default 5
   */
  rAxisTextMargin?: number;
  /**
   * Rotation in degrees for the axis text
   * @default 0
   */
  rAxisTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @default 1
   */
  rAxisTextScaleFontFactor?: number;
  /**
   * R axis format for the tick values in the R axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @default false
   */
  rAxisTickFormat?: string;
  /**
   * Approx number of tick lines in the R axis
   * @default 5
   */
  rAxisTicks?: number;
  /**
   * Color for the marker lines across the R axis
   * @default "rgb(204, 204, 204)"
   */
  rAxisTicksColor?: string;
  /**
   * Length for the marker lines across the R axis
   * @default null
   */
  rAxisTicksLength?: number;
  /**
   * Type of line for the marker lines across the R axis
   * @default "solid"
   */
  rAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the marker lines across the R axis
   * @default true
   */
  rAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the R axis
   * @default 1
   */
  rAxisTicksTransparency?: number;
  /**
   * Width for the marker lines across the R axis
   * @default 1
   */
  rAxisTicksWidth?: number;
  /**
   * Flag to force date format in R axis
   * @default false
   */
  rAxisTime?: boolean;
  /**
   * R axis title
   * @default false
   */
  rAxisTitle?: string;
  /**
   * Alignment (or position) for the axis title
   * @default "center"
   */
  rAxisTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @default "middle"
   */
  rAxisTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis title
   * @default "rgb(0,0,0)"
   */
  rAxisTitleColor?: string;
  /**
   * Set the title for the R axis dynamically as it changes when configured by the user
   * @default false
   */
  rAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * rAxisTitleScaleFontFactor
   * @default 8
   */
  rAxisTitleFontSize?: number;
  /**
   * Font style for the axis title
   * @default ""
   */
  rAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @default 5
   */
  rAxisTitleMargin?: number;
  /**
   * Rotation in degrees for the axis title
   * @default 0
   */
  rAxisTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @default 1
   */
  rAxisTitleScaleFontFactor?: number;
  /**
   * Type of transformation for values in R axis
   * @default false
   */
  rAxisTransform?: string;
  /**
   * Flag to transform the values of the ticks back to linear scale in the R axis
   * @default false
   */
  rAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the R axis
   * @default false
   */
  rAxisTransformTicks?: boolean;
  /**
   * Random method
   * @default "numericalRecipes"
   */
  randomMethod?: "jenkins" | "numericalRecipes" | (string & {});
  /**
   * Specifies the random seed number to create pseudo random numbers
   * @default 8
   */
  randomSeed?: number;
  /**
   * Transparency to apply to the range colors in bullet graphs
   * @default 0.6
   */
  rangeColorTransparency?: number;
  /**
   * Colors for the background ranges in bullet and meter graphs
   * @default []
   */
  rangeColors?: unknown[];
  /**
   * Numeric top values for the qualitative range segments of an indicator (meter scale tops).
   * Companion to rangeStack (variable-driven bands, used by bullets) in the shared indicator
   * range model
   * @default []
   */
  rangeSegments?: unknown[];
  /**
   * Variable names defining the qualitative background ranges (bullet indicators, data-driven
   * bands). If left empty, the entire graph area is used. Companion to rangeSegments (numeric
   * scale tops, used by meters) in the shared indicator range model
   * @default []
   */
  rangeStack?: unknown[];
  /**
   * Flag to show/hide the labels for the background ranges in bullet graphs
   * @default false
   */
  rangeStackShow?: boolean;
  /**
   * Name of the group used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @default false
   */
  ratioGroupReference?: string;
  /**
   * Name of the level used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @default false
   */
  ratioLevelReference?: string;
  /**
   * Default index of sample used in ratio transformation. Almost private parameters used
   * within the different CanvasXpress UIs
   * @default 0
   */
  ratioReference?: number;
  /**
   * Name of the sample used in ratio transformation. Almost private parameters used within the
   * different CanvasXpress UIs
   * @default false
   */
  ratioSampleReference?: string;
  /**
   * Position for the regression fit equation
   * @default "top"
   */
  regressionFitEquationPosition?: "top" | "bottom" | (string & {});
  /**
   * Specifies the number of degrees to solve for in polynomial regressions
   * @default 2
   */
  regressionOrder?: number;
  /**
   * Type of linear least-squares fitting methods for simple data analysis
   * @default "linear"
   */
  regressionType?: "linear" | "exponential" | "logarithmic" | "power" | "polynomial" | (string & {});
  /**
   * Duration in milliseconds to wait for replicating user modifications via the UI
   * @default 750
   */
  reproduceTime?: number;
  /**
   * Flag to indicate reproduction will be used to create a video
   * @default false
   */
  reproduceVideoMode?: boolean;
  /**
   * Type of function to apply when calculating repulsive force in forceDirected network
   * layouts. Fruchterman-Reingold uses square while Eades uses log
   * @default "square"
   */
  repulsiveForceFunction?: "square" | "cubic" | "log" | "pow" | "sqrt" | (string & {});
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
   * @default false
   */
  ribbonBy?: string;
  /**
   * Type of ribbon to create
   * @default "line"
   */
  ribbonByType?: "line" | "area" | (string & {});
  /**
   * Utility to create ridgelines in Scatter2D plots
   * @default false
   */
  ridgeBy?: string;
  /**
   * Scale for ridgeline
   * @default 1.5
   */
  ridgelineScale?: number;
  /**
   * Flag to use a violin to calculate the ridgeline plot
   * @default false
   */
  ridgelineViolin?: boolean;
  /**
   * Text to include at the right of the graph in the right margin
   * @default false
   */
  rightMarginalText?: string;
  /**
   * Alignment (or position) for the right marginal text
   * @default "left"
   */
  rightMarginalTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the right marginal text
   * @default "center"
   */
  rightMarginalTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in right marginal text
   * @default "rgb(0,0,0)"
   */
  rightMarginalTextColor?: string;
  /**
   * Font size for the text in right marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the rightMarginalTextScaleFontFactor
   * @default 12
   */
  rightMarginalTextFontSize?: number;
  /**
   * Font style for the right marginal text
   * @default ""
   */
  rightMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the right marginal text
   * @default 5
   */
  rightMarginalTextMargin?: number;
  /**
   * Rotation in degrees for the right marginal text
   * @default 0
   */
  rightMarginalTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the right marginal text font size in the
   * canvas
   * @default 1
   */
  rightMarginalTextScaleFontFactor?: number;
  /**
   * Factor to adjust the sensitivity of the mouse when rotating the graph
   * @default 450
   */
  rotationSensitivity?: number;
  /**
   * Radius for rounded polygons
   * @default 5
   */
  roundedPolygonRadius?: number;
  /**
   * Flag to cluster samples
   * @default false
   */
  samplesClustered?: boolean;
  /**
   * Flag to k-mean samples
   * @default false
   */
  samplesKmeaned?: boolean;
  /**
   * Axes to include in the alluvial plots. It must sample annotations of the string type in
   * the x object
   * @default []
   */
  sankeyAxes?: unknown[];
  /**
   * Object giving an explicit top-to-bottom order for the strata of a Sankey/alluvial column,
   * for this graph only (independent of legendOrder). The key is a sankeyAxes annotation (or
   * the sankeySource/sankeyTarget annotation) and the value is an array of its stratum levels
   * in the desired order; any level not listed is placed last, alphabetically. Setting this
   * implies sankeyNodeSort "factor"
   * @default false
   */
  sankeyAxesOrder?: Record<string, unknown>;
  /**
   * Flag to colour each Sankey node by its own value (level) rather than by a single colorBy
   * annotation, and to paint every flow ribbon in its source node's colour. Set on the
   * ggsankey (davidsjoberg/ggsankey) path, where fill = factor(node) colours the whole diagram
   * per node
   * @default false
   */
  sankeyColorNodesByValue?: boolean;
  /**
   * Outline width (px) for the Sankey/alluvial flow ribbons. Left null the ribbons use the
   * default outlineWidth, which inflates a thin (low-value) flow into a solid ~1px line in its
   * fill colour; a small value (e.g. 0.25) lets thin flows render at their true width so many
   * overlapping ribbons no longer read as a dense line-mesh
   * @default null
   */
  sankeyLinkLineWidth?: number;
  /**
   * Paint order of the Sankey/alluvial flow ribbons (which overlays which). <i>data</i>
   * (default) keeps the input/build order; <i>color</i> paints them grouped by the colorBy
   * annotation level order and then by alluvium id, so same-coloured ribbons draw together and
   * later ones overlay (ggalluvial z_order_aes parity). Only affects colour-by diagrams
   * @default "data"
   */
  sankeyLinkOrder?: "data" | "color" | (string & {});
  /**
   * Color for the sankey lines (links)
   * @default "rgba(204,204,204,0.66)"
   */
  sankeyLinksColor?: string;
  /**
   * Opacity (0-1) of the Sankey/alluvial link (flow) fills when they are coloured by an
   * annotation (colorBy). The ggplot/alluvial path sets this from the geom_alluvium alpha
   * aesthetic
   * @default 0.75
   */
  sankeyLinksOpacity?: number;
  /**
   * Vertical order of the flow ribbons WITHIN each stratum of a Sankey/alluvial (which lode
   * sits above which). <i>none</i> (default) stacks by the neighbouring node position
   * (native). The others port ggalluvial's lode.guidance: within a stratum, alluvia are
   * ordered by the strata they pass through in the OTHER axes, visited in a set priority.
   * <i>zigzag</i> (ggalluvial default) weights the nearest axes first, alternating outward;
   * <i>forward</i>/<i>backward</i> weight earlier/later axes;
   * <i>frontback</i>/<i>backfront</i> sweep to one end then the other. Requires an explicit
   * sankeyNodeSort (e.g. "factor")
   * @default "none"
   */
  sankeyLodeGuidance?: "none" | "zigzag" | "forward" | "backward" | "frontback" | "backfront" | (string & {});
  /**
   * Object mapping a Sankey node value (level) to its fill colour, used when
   * sankeyColorNodesByValue is set. The ggsankey path fills this from the emitted factor(node)
   * hue palette so each node and its outgoing ribbons match ggsankey exactly
   * @default false
   */
  sankeyNodeColorMap?: Record<string, unknown>;
  /**
   * Title of the Sankey node-value legend drawn when sankeyColorNodesByValue and
   * sankeyNodeColorMap are set. The ggsankey path sets it to the fill aesthetic label (e.g.
   * "factor(node)"). Set false to draw the legend with no title
   * @default false
   */
  sankeyNodeLegendTitle?: string;
  /**
   * Padding between the Sankey nodes
   * @default 8
   */
  sankeyNodePadding?: number;
  /**
   * Order of the strata within each Sankey/alluvial column. <i>auto</i>: flow-based order that
   * minimizes ribbon crossings (default). <i>input</i>: data order, no reordering.
   * <i>ascending</i>/<i>descending</i>: by the stratum flow value. <i>alphabetical</i>: by the
   * stratum name. <i>factor</i>: by each axis variable factor levels (ggalluvial parity);
   * strata whose value has no defined level sort last, alphabetically
   * @default "auto"
   */
  sankeyNodeSort?: "auto" | "input" | "ascending" | "descending" | "alphabetical" | "factor" | (string & {});
  /**
   * Width for the Sankey nodes
   * @default 30
   */
  sankeyNodeWidth?: number;
  /**
   * Color for the sankey nodes
   * @default false
   */
  sankeyNodesColor?: string;
  /**
   * Color for the sankey outline
   * @default "rgba(0,0,0,0)"
   */
  sankeyOutlineColor?: string;
  /**
   * Name of a sample annotation to use as source in the sankey diagrams
   * @default false
   */
  sankeySource?: string;
  /**
   * Name of a sample annotation to use as target in the sankey diagrams
   * @default false
   */
  sankeyTarget?: string;
  /**
   * Alignment (or position) for the sankey diagram labels
   * @default "center"
   */
  sankeyTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Flag to adjust the text orientation and the visibility for the labels in the Sankey
   * diagrams
   * @default true
   */
  sankeyTextAuto?: boolean;
  /**
   * Baseline (or reference line) for the sankey diagram labels
   * @default "middle"
   */
  sankeyTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in sankey diagram labels
   * @default "rgb(0,0,0)"
   */
  sankeyTextColor?: string;
  /**
   * Font size for the text in sankey diagram labels. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the sankeyTextScaleFontFactor
   * @default 10
   */
  sankeyTextFontSize?: number;
  /**
   * Font style for the sankey diagram labels
   * @default ""
   */
  sankeyTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Flag to draw the text of the sankey labels inside the plot. It is only applicable when
   * sankeyTextAuto is false
   * @default true
   */
  sankeyTextInside?: boolean;
  /**
   * Margin to pad or separate the characters in the sankey diagram labels
   * @default 0
   */
  sankeyTextMargin?: number;
  /**
   * Rotation in degrees for the sankey diagram labels
   * @default 90
   */
  sankeyTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the sankey diagram labels font size in the
   * canvas
   * @default 1
   */
  sankeyTextScaleFontFactor?: number;
  /**
   * Flag to show/hide the labels in the Sankey diagrams
   * @default true
   */
  sankeyTextShow?: boolean;
  /**
   * Alignment (or position) for the sankey diagram titles
   * @default "center"
   */
  sankeyTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the sankey diagram titles
   * @default "middle"
   */
  sankeyTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in sankey diagram titles
   * @default "rgb(0,0,0)"
   */
  sankeyTitleColor?: string;
  /**
   * Font size for the text in sankey diagram titles. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the sankeyTitleScaleFontFactor
   * @default 10
   */
  sankeyTitleFontSize?: number;
  /**
   * Font style for the sankey diagram titles
   * @default ""
   */
  sankeyTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the sankey diagram titles
   * @default 0
   */
  sankeyTitleMargin?: number;
  /**
   * Position of the Sankey/alluvial axis (column) titles relative to the plot. <i>bottom</i>
   * (default) draws them under the columns; <i>top</i> draws them above (ggplot scale_x
   * position "top" parity)
   * @default "bottom"
   */
  sankeyTitlePosition?: "bottom" | "top" | (string & {});
  /**
   * Rotation in degrees for the sankey diagram titles
   * @default 0
   */
  sankeyTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the sankey diagram titles font size in the
   * canvas
   * @default 1
   */
  sankeyTitleScaleFontFactor?: number;
  /**
   * Flag to show/hide the titles in the Sankey diagrams
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
   * @default "normal"
   */
  sankeyType?: "normal" | "proportional" | "equal" | "aligned" | (string & {});
  /**
   * Filename to use when downloading the canvas as an image or as json. If not specified. the
   * filename will be based on the target id of the canvas. cX- + canvas.targetId + extension
   * @default false
   */
  saveFilename?: string;
  /**
   * Flag to keep same range in both axes
   * @default false
   */
  scatterAxesEqual?: boolean;
  /**
   * Color for the data points in scatter plots
   * @default "rgb(0,0,0)"
   */
  scatterDataPointsColor?: string;
  /**
   * Transparency applied to lines in scatter plots
   * @default 1
   */
  scatterLineAlpha?: number;
  /**
   * Maximum number of data points before skipping plotting their outline but only the fill
   * color
   * @default 50000
   */
  scatterOutlineThreshold?: number;
  /**
   * Could be a boolean to plot a matrix of 2D scatterplots or a sample annotation to color and
   * segregate the plots
   * @default false
   */
  scatterPlotMatrix?: string;
  /**
   * Type for the matrix of 2D scatterplots. Draw either in both panels, upper only or lower
   * only. Show any combination of correlation, histogram, density and variability (boxplots).
   * Also specify whether to use all versus all or only the first data set
   * @default "both"
   */
  scatterPlotMatrixType?: "both" | "upper" | "lower" | "correlation" | "correlationHistogram" | "correlationDensity" | "all" | "first" | (string & {});
  /**
   * Thickness applied to data points in scatter plots
   * @default 1
   */
  scatterPointAlpha?: number;
  /**
   * Scatter stream bandwidth. Tensor for the wiggles of the stream wiggles. A vaulue between 0
   * and 1
   * @default 0.75
   */
  scatterStreamBandwidth?: number;
  /**
   * Scatter stream extra extension for the wiggles. A vaulue between 0 and 1 as in percent
   * @default 0.01
   */
  scatterStreamExtraSpan?: number;
  /**
   * Number of values for the wiggles
   * @default 1000
   */
  scatterStreamNumber?: number;
  /**
   * Expand the X axis
   * @default "both"
   */
  scatterStreamTrueRange?: "both" | "min_x" | "max_x" | "none" | (string & {});
  /**
   * Type of stream scatter plot
   * @default "mirror"
   */
  scatterStreamType?: "mirror" | "ridge" | "proportional" | (string & {});
  /**
   * Order for the streamgraph wiggles
   * @default []
   */
  scatterStreamWiggles?: unknown[];
  /**
   * Type of scatter plot
   * @default false
   */
  scatterType?: string;
  /**
   * Color for the Alternate background color for custom scrollbar tracks
   * @default "rgb(245, 245, 245)"
   */
  scrollbarAltBackgroundColor?: string;
  /**
   * Color for the Background color for custom scrollbars
   * @default "rgb(255, 255, 255)"
   */
  scrollbarBackgroundColor?: string;
  /**
   * Color for the Thumb color for custom scrollbars
   * @default "#cccccc"
   */
  scrollbarThumbColor?: string;
  /**
   * Color for the Thumb hover color for custom scrollbars
   * @default "#aaaaaa"
   */
  scrollbarThumbHoverColor?: string;
  /**
   * An array that holds the annotation(s) used to segregate the samples ala Facet way in R. It
   * must be categories in the data.x object
   * @default []
   */
  segregateSamplesBy?: unknown[];
  /**
   * An array that holds the annotation(s) used to segregate the variables ala Facet way in R.
   * It must be categories in the data.z object
   * @default []
   */
  segregateVariablesBy?: unknown[];
  /**
   * Variable / Sample names of data points (in the data object) to initially select
   * @default []
   */
  selectedDataPoints?: unknown[];
  /**
   * Color for the DEPRECATED (use highlightColor): color for selected data points when
   * selectionMode is "highlight"; inherits highlightColor when not set
   * @default false
   */
  selectionColor?: string;
  /**
   * Metadata (or factor) to use to display selected data points instead of the variable name.
   * This metadata has to be in the data.z object. This property is only valid when the
   * selectionMode is name and the visualization is a Scatter plot
   * @default false
   */
  selectionMetadata?: string;
  /**
   * Mode used to render selected data points. Shares highlight / ghost / focus with
   * highlightMode and adds two selection-only modes. "highlight" recolors the selection;
   * "ghost" fades the non-selected marks; "focus" recolors the non-selected marks to grey and
   * keeps the selection in color (the storytelling focus technique, identical to highlightMode
   * "focus"); "name" labels the selection; "filter" keeps only the selection
   * @default "highlight"
   */
  selectionMode?: "highlight" | "ghost" | "focus" | "name" | "filter" | (string & {});
  /**
   * Color for the adenines and alanines in the genome browser
   * @default "rgb(0,103,0)"
   */
  sequenceAColor?: string;
  /**
   * Alignment (or position) for the sequence
   * @default "center"
   */
  sequenceAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Color for the degenerate C/G/T and asparagines in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceBColor?: string;
  /**
   * Baseline (or reference line) for the sequence
   * @default "middle"
   */
  sequenceBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the cytosines and cysteins in the genome browser
   * @default "rgb(0,0,255)"
   */
  sequenceCColor?: string;
  /**
   * Color for the text in sequence
   * @default "rgb(0,0,0)"
   */
  sequenceColor?: string;
  /**
   * Color for the degenerate A/G/T and aspartic acids in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceDColor?: string;
  /**
   * Color for the glutamic acids in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceEColor?: string;
  /**
   * Color for the end codon in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceEndColor?: string;
  /**
   * Color for the phenylalanines in the genome browser
   * @default "rgb(0,0,255)"
   */
  sequenceFColor?: string;
  /**
   * Color for the background when showing sequnces in the box or sequence object in the
   * Genome. The default is to use the background of the object. If specied a valid color then
   * all the background of sequences will be uniform
   * @default false
   */
  sequenceFillColor?: string;
  /**
   * Font size for the text in sequence. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * sequenceScaleFontFactor
   * @default 10
   */
  sequenceFontSize?: number;
  /**
   * Font style for the sequence
   * @default ""
   */
  sequenceFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Color for the deletions, insertions and gaps in the genome browser
   * @default "rgb(255,0,255)"
   */
  sequenceGAPColor?: string;
  /**
   * Color for the guanines and glycines in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceGColor?: string;
  /**
   * Color for the degenerate A/C/T and histidines in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceHColor?: string;
  /**
   * Color for the isoleucines in the genome browser
   * @default "rgb(0,103,0)"
   */
  sequenceIColor?: string;
  /**
   * Color for the degenerate G/T and lysines in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceKColor?: string;
  /**
   * Color for the leucines in the genome browser
   * @default "rgb(0,103,0)"
   */
  sequenceLColor?: string;
  /**
   * Color for the degenerate A/G and methionines in the genome browser
   * @default "rgb(0,103,0)"
   */
  sequenceMColor?: string;
  /**
   * Margin to pad or separate the characters in the sequence
   * @default 8
   */
  sequenceMargin?: number;
  /**
   * Color for the degenerate A/C/G/T and asparagines in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceNColor?: string;
  /**
   * Color for the prolines in the genome browser
   * @default "rgb(255,165,0)"
   */
  sequencePColor?: string;
  /**
   * Color for the glutamines in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceQColor?: string;
  /**
   * Color for the degenerate A/G and arginines in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceRColor?: string;
  /**
   * Rotation in degrees for the sequence
   * @default 0
   */
  sequenceRotate?: number;
  /**
   * Color for the degenerate G/C and serines in the genome browser
   * @default "rgb(255,165,0)"
   */
  sequenceSColor?: string;
  /**
   * Scaling factor used to increase or decrease the sequence font size in the canvas
   * @default 1
   */
  sequenceScaleFontFactor?: number;
  /**
   * Color for the start codon in the genome browser
   * @default "rgb(0,204,0)"
   */
  sequenceStartColor?: string;
  /**
   * Color for the thymidines and threonines in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceTColor?: string;
  /**
   * Color for the uracils in the genome browser
   * @default "rgb(255,0,0)"
   */
  sequenceUColor?: string;
  /**
   * Color for the degenerate A/C/G and valines in the genome browser
   * @default "rgb(0,103,0)"
   */
  sequenceVColor?: string;
  /**
   * Color for the degenerate A/T and tryptophans in the genome browser
   * @default "rgb(0,0,255)"
   */
  sequenceWColor?: string;
  /**
   * Color for the any aminoacid code in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceXColor?: string;
  /**
   * Color for the degenerate C/T and tyrosines in the genome browser
   * @default "rgb(0,0,255)"
   */
  sequenceYColor?: string;
  /**
   * Color for the glutamines in the genome browser
   * @default "rgb(0,0,0)"
   */
  sequenceZColor?: string;
  /**
   * Set the maximum value for data in the R axis
   * @default null
   */
  setMaxR?: number;
  /**
   * Set the maximum value for data in the X axis
   * @default null
   */
  setMaxX?: number;
  /**
   * Set the maximum value for data in the second X axis
   * @default null
   */
  setMaxX2?: number;
  /**
   * Set the maximum value for data in the Y axis
   * @default null
   */
  setMaxY?: number;
  /**
   * Set the maximum value for data in the Z axis
   * @default null
   */
  setMaxZ?: number;
  /**
   * Set the minimum value for data in the R axis
   * @default null
   */
  setMinR?: number;
  /**
   * Set the minimum value for data in the X axis
   * @default null
   */
  setMinX?: number;
  /**
   * Set the minimum value for data in the second X axis
   * @default null
   */
  setMinX2?: number;
  /**
   * Set the minimum value for data in the Y axis
   * @default null
   */
  setMinY?: number;
  /**
   * Set the minimum value for data in the Z axis
   * @default null
   */
  setMinZ?: number;
  /**
   * Set the maximum value allowed to pann the data in the X axis
   * @default null
   */
  setPanningMaxX?: number;
  /**
   * Set the maximum value allowed to pann the data in the Y axis
   * @default null
   */
  setPanningMaxY?: number;
  /**
   * Set the minimum value allowed to pann the data in the X axis
   * @default null
   */
  setPanningMinX?: number;
  /**
   * Set the minimum value allowed to pann the data in the Y axis
   * @default null
   */
  setPanningMinY?: number;
  /**
   * Set the left dimension of the plotting area to the specified number of pixels, provided
   * the value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotLeft?: number;
  /**
   * Set the top dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotTop?: number;
  /**
   * Set the x dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotX?: number;
  /**
   * Set the y dimension of the plotting area to the specified number of pixels, provided the
   * value is greater than zero. This is used to align multiple graphs in a web page
   * @default 0
   */
  setPlotY?: number;
  /**
   * Amount in blur for the shadow
   * @default 2
   */
  shadowBlur?: number;
  /**
   * Color for the shadow
   * @default "rgba(0,0,0,0.5)"
   */
  shadowColor?: string;
  /**
   * Length in pixels for the shadow offset in the X axis
   * @default 1
   */
  shadowOffsetX?: number;
  /**
   * Length in pixels for the shadow offset in the Y axis
   * @default 1
   */
  shadowOffsetY?: number;
  /**
   * Name of a variable annotation or a sample name or the string variable to shape the
   * variables. When shapeByData is specified shapeBy is used for the title in the legend
   * @default false
   */
  shapeBy?: string;
  /**
   * Flag to use pie shapes with continuous data as opposed to by binning the data and show
   * regular shapes
   * @default false
   */
  shapeByContinuous?: boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * shape data points when drawing a multidimensional Heatmap. It must be located within the
   * data.y object (for example: data.y.data2)
   * @default false
   */
  shapeByData?: string;
  /**
   * String that identify the shape to use in regular and multidimensional heatmaps.
   * shapeByData will take precedence over this property
   * @default false
   */
  shapeByShape?: string;
  /**
   * Object to assign custom shapes to sample annotations and variable annotations included in
   * the data object. The key of the object is the name of an annotation in the data.x object
   * or the name of an annotation in the data.z object. A default shape will be assigned to a
   * data point whose value was not included the object
   * @default false
   */
  shapeKey?: Record<string, unknown>;
  /**
   * Title for the shape legend
   * @default false
   */
  shapeLegendTitle?: string;
  /**
   * Name of the attribute to shape the nods
   * @default false
   */
  shapeNodeBy?: string;
  /**
   * Array with shapes used in visualizations. The order will dictate the utilization in the
   * visualization
   */
  shapes?: unknown[];
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
  shelfStates?: unknown[];
  /**
   * Flag to show/hide the X,Y,Z grid in 3D plots
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
   * @default false
   */
  showBoxplotIfViolin?: boolean;
  /**
   * Flag to show/hide the observed data point in boxplots. (Should be called
   * showBoxplotDataPoints)
   * @default false
   */
  showBoxplotOriginalData?: boolean;
  /**
   * Flag to show/hide the connections in circular graphs
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
   * @default true
   */
  showColorEdgeLegend?: boolean;
  /**
   * Flag to show/hide the legend label color
   * @default true
   */
  showColorLabelLegend?: boolean;
  /**
   * Flag to show/hide the legend color
   * @default true
   */
  showColorLegend?: boolean;
  /**
   * Flag to show/hide the legend node color
   * @default true
   */
  showColorNodeLegend?: boolean;
  /**
   * Flag to show/hide the confidence intervals in the regression plots
   * @default true
   */
  showConfidenceIntervals?: boolean;
  /**
   * Flag to show/hide the legend connect
   * @default true
   */
  showConnectLegend?: boolean;
  /**
   * Flag to show/hide the contour bands
   * @default true
   */
  showContourBands?: boolean;
  /**
   * Flag to show/hide the data points in contours
   * @default false
   */
  showContourDataPoints?: boolean;
  /**
   * Flag to show/hide the levels in contours
   * @default false
   */
  showContourLevel?: boolean;
  /**
   * Flag to show/hide the data labels in scatter plots
   * @default false
   */
  showDataLabels?: boolean;
  /**
   * Flag to show/hide the data values in the bar graphs, stacked graphs, dotplots and line
   * graphs
   * @default false
   */
  showDataValues?: boolean;
  /**
   * Flag to show/hide the decorations
   * @default true
   */
  showDecorations?: boolean;
  /**
   * Flag to show/hide the the decoration legends border
   * @default false
   */
  showDecorationsBorder?: boolean;
  /**
   * Flag to show/hide the decoration legends
   * @default true
   */
  showDecorationsLegend?: boolean;
  /**
   * Flag to show/hide the error bars in graphs
   * @default true
   */
  showErrorBars?: boolean;
  /**
   * Threshehold used to set te limit when there are too many features in the genome browser
   * @default 20
   */
  showFeatureNameThereshold?: number;
  /**
   * Flag to show/hide the filled histogram density
   * @default false
   */
  showFilledHistogramDensity?: boolean;
  /**
   * Flag to show/hide the filled histogram path
   * @default false
   */
  showFilledHistogramPath?: boolean;
  /**
   * Flag to show/hide the heatmap color indicator
   * @default true
   */
  showHeatmapIndicator?: boolean;
  /**
   * Flag to show/hide the heatmap along with the oncoprint
   * @default false
   */
  showHeatmapOncoprint?: boolean;
  /**
   * Flag or sample annotation to create histogram. If true is specified then the histogram
   * will be done with all data
   * @default false
   */
  showHistogram?: string;
  /**
   * Flag to hide the histogram bars
   * @default false
   */
  showHistogramBars?: boolean;
  /**
   * Flag to show/hide the original data point in histograms
   * @default false
   */
  showHistogramDataPoints?: boolean;
  /**
   * Flag to show/hide the density kernel in histograms
   * @default false
   */
  showHistogramDensity?: boolean;
  /**
   * Flag to show/hide the histogram median
   * @default false
   */
  showHistogramMedian?: boolean;
  /**
   * Flag to show/hide the histograms path
   * @default false
   */
  showHistogramPath?: boolean;
  /**
   * Flag to show/hide the quantile 0.25 and 0.75 in density plots
   * @default false
   */
  showHistogramQuantiles?: boolean;
  /**
   * Flag to show/hide the Human Chromosome Ideogram. Force circular plots to be two
   * dimensional
   * @default false
   */
  showIdeogram?: boolean;
  /**
   * Flag to show/hide the confidence intervals in Kaplan-Meier plots
   * @default true
   */
  showKMConfidenceIntervals?: boolean;
  /**
   * Flag to show/hide the median survival time in Kaplan-Meier plots
   * @default false
   */
  showKMMedianSurvivalTime?: boolean;
  /**
   * Flag to show/hide the legend
   * @default true
   */
  showLegend?: boolean;
  /**
   * Flag to show/hide the the legend border
   * @default true
   */
  showLegendBorder?: boolean;
  /**
   * Flag to show/hide the the legend title
   * @default true
   */
  showLegendTitle?: boolean;
  /**
   * Flag to show/hide the legend line
   * @default true
   */
  showLineLegend?: boolean;
  /**
   * Name of a variable annotation, or set to true, to display a loess smoothing curve in
   * Scatter plots
   * @default false
   */
  showLoessFit?: string;
  /**
   * Flag to show/hide the the overlays name
   * @default true
   */
  showNameOverlays?: boolean;
  /**
   * Flag to show/hide the network communities
   * @default false
   */
  showNetworkCommunities?: boolean;
  /**
   * Flag to show/hide the radial layout wire
   * @default false
   */
  showNetworkRadialLayout?: boolean;
  /**
   * Thereshold used to set the limit to hide or display the name of nodes in a network based
   * on the size of the node. If the number of node size exceed this thereshold then the name
   * will be shown
   * @default 20
   */
  showNodeNameSizeThreshold?: number;
  /**
   * Thereshold used to set the limit to hide or display the name of nodes in a network. If the
   * number of nodes exceed this thereshold then the name will not be shown
   * @default 50
   */
  showNodeNameThreshold?: number;
  /**
   * Flag to draw the rotate/resize handle boxes around a selected network node. When false
   * (default) a selected node only shows the highlight outline, matching selection in other
   * graphs
   * @default false
   */
  showNodeResizeHandles?: boolean;
  /**
   * Flag to show/hide the legend outline
   * @default true
   */
  showOutlineLegend?: boolean;
  /**
   * Flag to show/hide the overlays in one dimensional plots
   * @default true
   */
  showOverlays?: boolean;
  /**
   * Flag to show/hide the legend pattern
   * @default true
   */
  showPatternLegend?: boolean;
  /**
   * Flag to show/hide the legend node pattern
   * @default true
   */
  showPatternNodeLegend?: boolean;
  /**
   * Flag to show/hide the sample label when plotting multiple pies
   * @default true
   */
  showPieSampleLabel?: boolean;
  /**
   * Flag to show/hide the values for the pie
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
   * @default false
   */
  showQuantileRegressionFit?: boolean;
  /**
   * Name of a variable annotation, or set to true, to display a regression fit in Scatter
   * plots
   * @default false
   */
  showRegressionFit?: string;
  /**
   * Flag to show/hide the Flag to show the regression fit equation
   * @default true
   */
  showRegressionFitEquation?: boolean;
  /**
   * Flag to show/hide the full range in regression plots
   * @default false
   */
  showRegressionFullRange?: boolean;
  /**
   * Flag to show/hide the legend sample. Not implemented!!!!!
   * @default true
   */
  showSampleLegend?: boolean;
  /**
   * Flag to show/hide the sample names
   * @default true
   */
  showSampleNames?: boolean;
  /**
   * Flag to show/hide the density kernel in histograms
   * @default false
   */
  showScatterDensity?: boolean;
  /**
   * Flag to show/hide the observed data points in scatter plots with scatter type line
   * @default false
   */
  showScatterLineOriginalData?: boolean;
  /**
   * Flag to show/hide the labels in the scatter plot matrix
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
   * @default true
   */
  showShapeLegend?: boolean;
  /**
   * Flag to show/hide the legend node shape
   * @default true
   */
  showShapeNodeLegend?: boolean;
  /**
   * Flag to show/hide the legend edge size
   * @default true
   */
  showSizeEdgeLegend?: boolean;
  /**
   * Flag to show/hide the legend label size
   * @default true
   */
  showSizeLabelLegend?: boolean;
  /**
   * Flag to show/hide the legend size
   * @default true
   */
  showSizeLegend?: boolean;
  /**
   * Flag to show/hide the legend node size
   * @default true
   */
  showSizeNodeLegend?: boolean;
  /**
   * Flag to show/hide the sample (row) dendrogram
   * @default true
   */
  showSmpDendrogram?: boolean;
  /**
   * Flag to show/hide the sample overlay legends
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
   * @default true
   */
  showValueOverlays?: boolean;
  /**
   * Flag to show/hide the variable (column) dendrogram
   * @default true
   */
  showVarDendrogram?: boolean;
  /**
   * Flag to show/hide the sample overlay legends
   * @default false
   */
  showVarOverlaysLegend?: boolean;
  /**
   * Flag to show/hide the legend variable
   * @default true
   */
  showVariableLegend?: boolean;
  /**
   * Flag to show/hide the variable names
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
   * @default false
   */
  showViolinBoxplot?: boolean;
  /**
   * Flag to show/hide the quantile 0.25 and 0.75 in violin plots
   * @default false
   */
  showViolinQuantiles?: boolean;
  /**
   * Flag to show/hide the show dot in the middle of the range in manhattan plots
   * @default false
   */
  showmanhattanRangeMiddle?: boolean;
  /**
   * Flag to jitter the data points in dotplots, boxplots and scatter2D plots with sina style
   * @default false
   */
  sina?: boolean;
  /**
   * Name of a variable annotation or a sample name or the string variable to size the
   * variables. When sizeByData is specified sizeBy is used for the title in the legend
   * @default false
   */
  sizeBy?: string;
  /**
   * Flag to show the size data continuously as opposed to by binning the sizes
   * @default false
   */
  sizeByContinuous?: boolean;
  /**
   * String that identify the object containing a two dimensional array with values used to
   * size data points when drawing a multidimensional Heatmap. It must be located within the
   * data.y object (for example: data.y.data3)
   * @default false
   */
  sizeByData?: string;
  /**
   * Name of the attribute to size the edges
   * @default false
   */
  sizeEdgeBy?: string;
  /**
   * Object to assign custom sizes to sample annotations and variable annotations included in
   * the data object. The key of the object is the name of an annotation in the data.x object
   * or the name of an annotation in the data.z object. A default size will be assigned to a
   * data point whose value was not included the object
   * @default false
   */
  sizeKey?: Record<string, unknown>;
  /**
   * Name of the variable annotation to size the labels in Scatter2D plots
   * @default false
   */
  sizeLabelBy?: string;
  /**
   * Title for the size legend
   * @default false
   */
  sizeLegendTitle?: string;
  /**
   * Name of the attribute to size the nodes
   * @default false
   */
  sizeNodeBy?: string;
  /**
   * Size step in pixels for the objects in the visualizations
   * @default 4
   */
  sizeStep?: number;
  /**
   * Array with sizes used invisualizations. The order will dictate the utilization in the
   * visualization
   * @default [8,12,16,20,24,28,32,36,40,44,48]
   */
  sizes?: unknown[];
  /**
   * Flag to use extend the lines to the end of the terminal nodes when the newick is provided
   * for the sample (row) dendrogram
   * @default true
   */
  smpDendrogramHang?: boolean;
  /**
   * Custom dendrogram in Newick format created outside CanvasXpress to define and specify the
   * hierarchy for the sample (row) dendrogram.
   * @default false
   */
  smpDendrogramNewick?: string;
  /**
   * Position for the sample (row) dendrogram in the plot. It could be top, bottom, right or
   * left depending on the orientation of the graph
   * @default "left"
   */
  smpDendrogramPosition?: "left" | "right" | (string & {});
  /**
   * Boolean flag to allow the use of height in the provided Newick string for branch
   * representation in the sample (row) dendrogram
   * @default false
   */
  smpDendrogramUseHeight?: boolean;
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted samples; inherits
   * highlightColor when not set
   * @default false
   */
  smpHighlightColor?: string;
  /**
   * Flag to use best position for sample labels depending on the location of them. It will
   * align them right when placed in the left of the graphs and viceversa
   * @default true
   */
  smpLabelAutoAlignPosition?: boolean;
  /**
   * Flag to use images as sample labels when possible
   * @default false
   */
  smpLabelImage?: boolean;
  /**
   * Flag to use round images as sample labels
   * @default false
   */
  smpLabelImageRound?: boolean;
  /**
   * Interval for the sample labels in one dimensional and circular plots
   * @default 1
   */
  smpLabelInterval?: number;
  /**
   * Object to assign properties of the sample overlays. The key should be a valid sample
   * annotation (metadata) and the value and object with properties like: type, color,
   * spectrum, scheme, showLegend, showName, showBox, rotate, position, thicknes
   * @default {}
   */
  smpOverlayProperties?: Record<string, unknown>;
  /**
   * Sample metadata to overlay in one dimensional plots
   * @default []
   */
  smpOverlays?: unknown[];
  /**
   * Number of columns for the sample overlay legends
   * @default 1
   */
  smpOverlaysLegendColumns?: number;
  /**
   * Alignment (or position) for the sample labels
   * @default "right"
   */
  smpTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the sample labels
   * @default "middle"
   */
  smpTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in sample labels
   * @default "rgb(77,77,77)"
   */
  smpTextColor?: string;
  /**
   * Font size for the text in sample labels. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the smpTextScaleFontFactor
   * @default 10
   */
  smpTextFontSize?: number;
  /**
   * Font style for the sample labels
   * @default ""
   */
  smpTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the sample labels
   * @default 5
   */
  smpTextMargin?: number;
  /**
   * Rotation in degrees for the sample labels
   * @default 0
   */
  smpTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the sample labels font size in the canvas
   * @default 1
   */
  smpTextScaleFontFactor?: number;
  /**
   * Title for the sample axis in one dimensional plots
   * @default false
   */
  smpTitle?: string;
  /**
   * Alignment (or position) for the sample title
   * @default "center"
   */
  smpTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the sample title
   * @default "middle"
   */
  smpTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in sample title
   * @default "rgb(0,0,0)"
   */
  smpTitleColor?: string;
  /**
   * Font size for the text in sample title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * smpTitleScaleFontFactor
   * @default 10
   */
  smpTitleFontSize?: number;
  /**
   * Font style for the sample title
   * @default ""
   */
  smpTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Position for sample labels
   * @default "left"
   */
  smpTitleLabelPosition?: "left" | "right" | (string & {});
  /**
   * Margin to pad or separate the characters in the sample title
   * @default 5
   */
  smpTitleMargin?: number;
  /**
   * Rotation in degrees for the sample title
   * @default 0
   */
  smpTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the sample title font size in the canvas
   * @default 1
   */
  smpTitleScaleFontFactor?: number;
  /**
   * Flag to use case sensitive in ascii sorting. Almost private parameters used within the
   * different CanvasXpress UIs
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
   * @default []
   */
  sortData?: unknown[];
  /**
   * Default direction for data sorting. Almost private parameters used within the different
   * CanvasXpress UIs
   * @default "ascending"
   */
  sortDir?: "ascending" | "descending" | (string & {});
  /**
   * Flag to include empty groups when sorting
   * @default true
   */
  sortIncludeEmpty?: boolean;
  /**
   * Sort the name of the groups after sample grouping.
   * @default false
   */
  sortOnGrouping?: string;
  /**
   * Factor (in the x data object) used to split the samples ala split in a complex heatmap.
   * Unlike segregateSamplesBy, the split keeps a single full-width plot and only inserts a
   * thin gap (splitSeparation) at each group boundary
   * @default false
   */
  splitSamplesBy?: string;
  /**
   * Size in pixels of the gap inserted at each split boundary when splitSamplesBy or
   * splitVariablesBy is used
   * @default 5
   */
  splitSeparation?: number;
  /**
   * Factor (in the z data object) used to split the variables ala split in a complex heatmap.
   * Unlike segregateVariablesBy, the split keeps a single full-width plot and only inserts a
   * thin gap (splitSeparation) at each group boundary
   * @default false
   */
  splitVariablesBy?: string;
  /**
   * Name of a sample annotation to stack the samples of each variable in Bar graphs
   * @default false
   */
  stackBy?: string;
  /**
   * Type of Standard Deviation. biased uses n as denominator and unbiased uses (n - 1) as
   * denominator where n is the number of values
   * @default "unbiased"
   */
  standardDeviationType?: "biased" | "unbiased" | (string & {});
  /**
   * Starting degrees for pie sectors. 0 is equivalent to 3:00 oclock
   * @default 270
   */
  startPieSectors?: number;
  /**
   * Array containing edge attributes. The numeric edge attributes will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for edges at
   * load time
   * @default []
   */
  stringEdgeAttributes?: unknown[];
  /**
   * Array containing node attributes. The numeric node attributes will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for nodes at
   * load time
   * @default []
   */
  stringNodeAttributes?: unknown[];
  /**
   * Array containing sample factors. The numeric sample factors will be treated as strings.
   * This parameter accomplishes the same as the function switchNumericToString for samples at
   * load time. It can be used in conjunction with the parameter asSampleFactors. TO DO: write
   * example
   * @default []
   */
  stringSampleFactors?: unknown[];
  /**
   * Array containing variable factors. The numeric variable factors will be treated as
   * strings. This parameter accomplishes the same as the function switchNumericToString for
   * variables at load time. It can be used in conjunction with the parameter
   * asVariableFactors. TO DO: write example
   * @default []
   */
  stringVariableFactors?: unknown[];
  /**
   * Color for the border in layout label strip background
   * @default "rgba(0,0,0,0)"
   */
  stripBackgroundBorderColor?: string;
  /**
   * Type of line for the border in layout label strip background
   * @default "solid"
   */
  stripBackgroundBorderLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Size for the border line in layout label strip background
   * @default 1
   */
  stripBackgroundBorderSize?: number;
  /**
   * Color for the layout label strip background
   * @default "rgba(255,255,255,0)"
   */
  stripBackgroundColor?: string;
  /**
   * Flag to show/hide the the layout label strip
   * @default true
   */
  stripShow?: boolean;
  /**
   * Alignment (or position) for the label strip text in layout graphs
   * @default "center"
   */
  stripTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the label strip text in layout graphs
   * @default "middle"
   */
  stripTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in label strip text in layout graphs
   * @default "rgb(0,0,0)"
   */
  stripTextColor?: string;
  /**
   * Font size for the text in label strip text in layout graphs. Be aware that auto scaling
   * font must be turned off for this property to take effect. A more convenient way to modify
   * the size is to use the stripTextScaleFontFactor
   * @default 10
   */
  stripTextFontSize?: number;
  /**
   * Font style for the label strip text in layout graphs
   * @default ""
   */
  stripTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Lines for the layout label strip
   * @default 1
   */
  stripTextLines?: number;
  /**
   * Margin to pad or separate the characters in the label strip text in layout graphs
   * @default 5
   */
  stripTextMargin?: number;
  /**
   * Maximum length for the layout label strip. If longer, text will be ellipsed
   * @default 100
   */
  stripTextMaxLength?: number;
  /**
   * Rotation in degrees for the label strip text in layout graphs
   * @default 0
   */
  stripTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the label strip text in layout graphs font
   * size in the canvas
   * @default 1
   */
  stripTextScaleFontFactor?: number;
  /**
   * Thickness of the layout label strip
   * @default 30
   */
  stripThickness?: number;
  /**
   * Subtitle of the graph
   * @default false
   */
  subtitle?: string;
  /**
   * Alignment (or position) for the subtitle
   * @default "center"
   */
  subtitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the subtitle
   * @default "middle"
   */
  subtitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in subtitle
   * @default "rgb(0,0,0)"
   */
  subtitleColor?: string;
  /**
   * Font size for the text in subtitle. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * subtitleScaleFontFactor
   * @default 11
   */
  subtitleFontSize?: number;
  /**
   * Font style for the subtitle
   * @default ""
   */
  subtitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the subtitle
   * @default 5
   */
  subtitleMargin?: number;
  /**
   * Rotation in degrees for the subtitle
   * @default 0
   */
  subtitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the subtitle font size in the canvas
   * @default 1
   */
  subtitleScaleFontFactor?: number;
  /**
   * Maximum number of subtracks to show in a track
   * @default 8
   */
  subtracksMaxDefault?: number;
  /**
   * Summary type for the data when grouping
   * @default false
   */
  summaryType?: string;
  /**
   * Variable to use in Swimmer Plot. Defaults to the third variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @default false
   */
  swimEnd?: string;
  /**
   * Variable to use in Swimmer plot. Defaults to the first variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @default false
   */
  swimHigh?: string;
  /**
   * Name of sample annotation to use in Swimmer Plot. Defaults to High Cap. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @default false
   */
  swimHighCap?: string;
  /**
   * Variable to use in Swimmer Plot. Defaults to the second variable in the data set. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @default false
   */
  swimStart?: string;
  /**
   * Name of sample annotation to use in Swimmer Plot. Defaults to Status. See
   * https://blogs.sas.com/content/graphicallyspeaking/2014/06/22/swimmer-plot/
   * @default false
   */
  swimStatus?: string;
  /**
   * Shape for the tag cloud
   * @default false
   */
  tagCloudShape?: string;
  /**
   * Ellipticity for the for text in tag cloud visualizations
   * @default 0.65
   */
  tagCloudTextEllipticity?: number;
  /**
   * Size for the grid in text tag cloud visualizations
   * @default 8
   */
  tagCloudTextGridSize?: number;
  /**
   * Ratio for rotation of text in cloud visualizations
   * @default 0.1
   */
  tagCloudTextRotateRatio?: number;
  /**
   * Factor weight for text in tag cloud visualizations
   * @default 1
   */
  tagCloudTextWeightFactor?: number;
  /**
   * Tags
   * @default []
   */
  tags?: unknown[];
  /**
   * Curvature for the splines and hulls
   * @default 0.3
   */
  tension?: number;
  /**
   * Number of segments to smooth a quadratic curve
   * @default 16
   */
  tensionSegments?: number;
  /**
   * The style for the plot or theme will control all the non-data elements of the plot
   * including titles, legends, axes, panel and plot background colors and other stylistic
   * elements
   * @default "none"
   */
  theme?: "auto" | "bw" | "classic" | "cx" | "cxdark" | "cxblue" | "dark" | "economist" | "excel" | "ggblanket" | "ggplot" | "gray" | "grey" | "highcharts" | "highcontrast" | "igray" | "light" | "linedraw" | "minimal" | "none" | "ptol" | "solarized" | "stata" | "tableau" | "void0" | "wsj" | "cx2" | (string & {});
  /**
   * Time Format according to date.format.js Steven Levithan <stevenlevithan.com>
   * @default "isoDate"
   */
  timeFormat?: "default" | "shortDate" | "mediumDate" | "longDate" | "fullDate" | "shortTime" | "mediumTime" | "longTime" | "isoDate" | "isoTime" | "isoDateTime" | "isoUtcDateTime" | "year" | "month" | "day" | "hour" | "minute" | "second" | (string & {});
  /**
   * Title of the graph
   * @default false
   */
  title?: string;
  /**
   * Alignment (or position) for the title
   * @default "center"
   */
  titleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the title
   * @default "middle"
   */
  titleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in title
   * @default "rgb(0,0,0)"
   */
  titleColor?: string;
  /**
   * Font size for the text in title. Be aware that auto scaling font must be turned off for
   * this property to take effect. A more convenient way to modify the size is to use the
   * titleScaleFontFactor
   * @default 12
   */
  titleFontSize?: number;
  /**
   * Font style for the title
   * @default "bold"
   */
  titleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the title
   * @default 5
   */
  titleMargin?: number;
  /**
   * Rotation in degrees for the title
   * @default 0
   */
  titleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the title font size in the canvas
   * @default 1
   */
  titleScaleFontFactor?: number;
  /**
   * Color for the toggle switch in the data filters
   * @default "rgb(8, 122, 209)"
   */
  toggleSwitchBackgroundColor?: string;
  /**
   * Array containing the items in the left toolbar for language code. Options are: JSON, R,
   * Python, Jupyter, Streamlit, Shiny, JSFiddle, CodePen. Leave empty to disable
   * @default []
   */
  toolbarCodes?: unknown[];
  /**
   * Array containing the items in the right toolbar for font families. Some examples are:
   * American Typewriter, Andale Mono, Arial, Bradley Hand, Comic Sans MS, Courier, Monaco,
   * Optima, Times New Roman, Trebuchet MS. Leave empty to disable
   * @default []
   */
  toolbarFonts?: unknown[];
  /**
   * Array containing the items in the top toolbar. All items included by default
   * @default ["Save","Chat","History","Table","Tabs","Explore","Lasso","Customize","Password","Maximize"]
   */
  toolbarItems?: unknown[];
  /**
   * Array containing the items in the bottom toolbar for color schemes. Some examples are:
   * Economist, GGPlot, Excel, PaulTol, BlackAndWhite, Solarized, Stata, Tableau, GGBlanket,
   * CanvasXpress. Leave empty to disable
   * @default []
   */
  toolbarSchemes?: unknown[];
  /**
   * Height for the toolbar in graphs
   * @default 36
   */
  toolbarSize?: number;
  /**
   * Toolbar type
   * @default "under"
   */
  toolbarType?: "over" | "under" | "fixed" | (string & {});
  /**
   * Color for the Background color for the tooltip if specified
   * @default false
   */
  tooltipBackgroundColor?: string;
  /**
   * Color for the Border color for the tooltip if specifies
   * @default false
   */
  tooltipBorderColor?: string;
  /**
   * Color for the Color for the tooltip text if specified
   * @default false
   */
  tooltipFontColor?: string;
  /**
   * Transparency for the tooltip
   * @default null
   */
  tooltipTransparency?: number;
  /**
   * Text to include at the top of the graph in the top margin
   * @default false
   */
  topMarginalText?: string;
  /**
   * Alignment (or position) for the top marginal text
   * @default "left"
   */
  topMarginalTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the top marginal text
   * @default "top"
   */
  topMarginalTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in top marginal text
   * @default "rgb(0,0,0)"
   */
  topMarginalTextColor?: string;
  /**
   * Font size for the text in top marginal text. Be aware that auto scaling font must be
   * turned off for this property to take effect. A more convenient way to modify the size is
   * to use the topMarginalTextScaleFontFactor
   * @default 12
   */
  topMarginalTextFontSize?: number;
  /**
   * Font style for the top marginal text
   * @default ""
   */
  topMarginalTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the top marginal text
   * @default 5
   */
  topMarginalTextMargin?: number;
  /**
   * Rotation in degrees for the top marginal text
   * @default 0
   */
  topMarginalTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the top marginal text font size in the canvas
   * @default 1
   */
  topMarginalTextScaleFontFactor?: number;
  /**
   * TopoJSON map string
   * @default false
   */
  topoJSON?: string;
  /**
   * Color for the strand direction of the tracks in the genome browser
   * @default "rgb(0,0,0)"
   */
  trackDirColor?: string;
  /**
   * Color for the fill of the tracks in the genome browser
   * @default "rgb(255,255,255)"
   */
  trackFillColor?: string;
  /**
   * Alignment (or position) for the track name
   * @default "center"
   */
  trackNameAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the track name
   * @default "middle"
   */
  trackNameBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in track name
   * @default "rgb(0,0,0)"
   */
  trackNameColor?: string;
  /**
   * Font size for the text in track name. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * trackNameScaleFontFactor
   * @default 10
   */
  trackNameFontSize?: number;
  /**
   * Font style for the track name
   * @default ""
   */
  trackNameFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the track name
   * @default 8
   */
  trackNameMargin?: number;
  /**
   * Rotation in degrees for the track name
   * @default 0
   */
  trackNameRotate?: number;
  /**
   * Scaling factor used to increase or decrease the track name font size in the canvas
   * @default 1
   */
  trackNameScaleFontFactor?: number;
  /**
   * Default axis to use to transform the data when either z-score or ratio transformation is
   * used
   * @default "samples"
   */
  transformAxis?: "samples" | "variables" | (string & {});
  /**
   * Default transformation type for ALL the data. Data can also be transformed by axis (x,y,z)
   * to give more flexibility. false, save, reset and undo are NOT real transformations. They
   * are only used in the canvasXpress UIs to save the transformed data
   * @default false
   */
  transformData?: string;
  /**
   * Easing function for the transition
   * @default "easeInOutQuad"
   */
  transitionFunction?: "linear" | "easeInQuad" | "easeOutQuad" | "easeInOutQuad" | "easeInCubic" | "easeOutCubic" | "easeInOutCubic" | "easeInQuart" | "easeOutQuart" | "easeInOutQuart" | "easeInQuint" | "easeOutQuint" | "easeInOutQuint" | (string & {});
  /**
   * String to be interpreted in the CSS transitions
   * @default "0.3s"
   */
  transitionSpeed?: string;
  /**
   * Steps for transitionioning data objects
   * @default 10
   */
  transitionStaggering?: number;
  /**
   * Steps for transition
   * @default 30
   */
  transitionStep?: number;
  /**
   * How showTransition animates a re-render: "morph" (default) interpolates each mark from its
   * old to its new position; "crossfade" dissolves the whole previous frame into the new one
   * (a raster blend) — smoother for composite graphs whose marks change shape/count between
   * renders
   * @default "morph"
   */
  transitionType?: "morph" | "crossfade" | (string & {});
  /**
   * Unit interval or fraction of transparency applied to all elements in the visualizations
   * @default null
   */
  transparency?: number;
  /**
   * Unit interval or fraction of transparency applied to elements that are hidden
   * @default 0.1
   */
  transparencyHidden?: number;
  /**
   * Flag to transpose data as a parameter. This parameter accomplishes the same as the
   * function transpose at load time
   * @default false
   */
  transposeData?: boolean;
  /**
   * Proportion of the tree bracket to use
   * @default 0.5
   */
  treeBracketFactor?: number;
  /**
   * Factor to extend the length of the tree node
   * @default 4
   */
  treeBracketLengthFactor?: number;
  /**
   * Flag to disable clicking in tree plots
   * @default false
   */
  treeClickDisable?: boolean;
  /**
   * Flag to plot the tree inverted
   * @default false
   */
  treeInverted?: boolean;
  /**
   * Alignment for labels the tree diagrams
   * @default "center"
   */
  treeLabelAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Color for the tree lines (links)
   * @default "rgba(204,204,204,0.66)"
   */
  treeLinkColor?: string;
  /**
   * Width for the Tree lines
   * @default 1
   */
  treeLinkWidth?: number;
  /**
   * Color for the tree node outline
   * @default "#0ab0db"
   */
  treeNodeOutlineColor?: string;
  /**
   * Scale factor to adjust the size of tree nodes
   * @default 1
   */
  treeNodeSizeScaleFactor?: number;
  /**
   * Type of tree layout
   * @default "normal"
   */
  treeType?: "bracket" | "circular" | "normal" | (string & {});
  /**
   * Color for the treemap header and border
   * @default "rgba(204,204,204,0.33)"
   */
  treemapBorderColor?: string;
  /**
   * Width for the treemap border
   * @default 3
   */
  treemapBorderWidth?: number;
  /**
   * Array of sample annotations to treemap the variables. The array may also include sample to
   * use as last level
   * @default []
   */
  treemapBy?: unknown[];
  /**
   * Array containing the names of the sets to include
   * @default []
   */
  upSetSets?: unknown[];
  /**
   * Adjust width of lines in matrix plot
   * @default 1
   */
  upsetLineSizeFactor?: number;
  /**
   * Color for the the main bar plot
   * @default "rgb(59,59,59)"
   */
  upsetMainBarColor?: string;
  /**
   * Color for the the intersection points
   * @default "rgb(59,59,59)"
   */
  upsetMatrixColor?: string;
  /**
   * Transparency of the empty intersections points in the matrix
   * @default 0.2
   */
  upsetMatrixDotAlpha?: number;
  /**
   * Ratio between matrix plot and main bar plot
   * @default 0.7
   */
  upsetMatrixPlotBarRatio?: number;
  /**
   * Adjust the size of points in matrix plot
   * @default 1
   */
  upsetPointSizeFactor?: number;
  /**
   * Color for the set bar plot
   * @default "rgb(59,59,59)"
   */
  upsetSetsBarColor?: string;
  /**
   * Transparency of shading in matrix
   * @default 0.1
   */
  upsetShadeAlpha?: number;
  /**
   * Color for the row shading in matrix
   * @default "rgb(159,159,159)"
   */
  upsetShadeColor?: string;
  /**
   * Flag to use Barnes-Hut simulation
   * @default false
   */
  useBarnesHutSimulation?: boolean;
  /**
   * Flag to use leaflet
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
   * @default true
   */
  varDendrogramHang?: boolean;
  /**
   * Custom dendrogram in Newick format created outside CanvasXpress to define and specify the
   * hierarchy for the variable (column) dendrogram.
   * @default false
   */
  varDendrogramNewick?: string;
  /**
   * Position for the variable (column) dendrogram in the plot. It could be top, bottom, right
   * or left depending on the orientation of the graph
   * @default "top"
   */
  varDendrogramPosition?: "top" | "bottom" | (string & {});
  /**
   * Boolean flag to allow the use of height in the provided Newick string for branch
   * representation in the variable (column) dendrogram
   * @default false
   */
  varDendrogramUseHeight?: boolean;
  /**
   * Color for the DEPRECATED (use highlightColor): color for highlighted variables; inherits
   * highlightColor when not set
   * @default false
   */
  varHighlightColor?: string;
  /**
   * Interval for the variable labels in heatmaps
   * @default 1
   */
  varLabelInterval?: number;
  /**
   * Object to assign properties of the variable overlays. The key should be a valid variable
   * annotation (metadata) and the value and object with properties like: type, color,
   * spectrum, scheme, showLegend, showName, showBox, rotate, position, thicknes
   * @default {}
   */
  varOverlayProperties?: Record<string, unknown>;
  /**
   * Variable metadata to overlay in heatmap plots
   * @default []
   */
  varOverlays?: unknown[];
  /**
   * Number of columns for the variable overlay legends
   * @default 1
   */
  varOverlaysLegendColumns?: number;
  /**
   * Alignment (or position) for the variable text
   * @default "center"
   */
  varTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the variable text
   * @default "middle"
   */
  varTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in variable text
   * @default "rgb(77,77,77)"
   */
  varTextColor?: string;
  /**
   * Font size for the text in variable text. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the varTextScaleFontFactor
   * @default 10
   */
  varTextFontSize?: number;
  /**
   * Font style for the variable text
   * @default ""
   */
  varTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the variable text
   * @default 5
   */
  varTextMargin?: number;
  /**
   * Rotation in degrees for the variable text
   * @default 0
   */
  varTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the variable text font size in the canvas
   * @default 1
   */
  varTextScaleFontFactor?: number;
  /**
   * Title for the variables in hetamap plots
   * @default false
   */
  varTitle?: string;
  /**
   * Alignment (or position) for the variable title
   * @default "center"
   */
  varTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the variable title
   * @default "middle"
   */
  varTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in variable title
   * @default "rgb(0,0,0)"
   */
  varTitleColor?: string;
  /**
   * Font size for the text in variable title. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the varTitleScaleFontFactor
   * @default 10
   */
  varTitleFontSize?: number;
  /**
   * Font style for the variable title
   * @default ""
   */
  varTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Position for variable labels
   * @default "bottom"
   */
  varTitleLabelPosition?: "bottom" | "top" | (string & {});
  /**
   * Margin to pad or separate the characters in the variable title
   * @default 5
   */
  varTitleMargin?: number;
  /**
   * Rotation in degrees for the variable title
   * @default 0
   */
  varTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the variable title font size in the canvas
   * @default 1
   */
  varTitleScaleFontFactor?: number;
  /**
   * Pixels between the data series in one-dimensional plots
   * @default 2
   */
  variableSpace?: number;
  /**
   * Flag to cluster variables
   * @default false
   */
  variablesClustered?: boolean;
  /**
   * Flag to k-mean variables
   * @default false
   */
  variablesKmeaned?: boolean;
  /**
   * Colors for the Venn bubles. If not specified the colors will be chosen from the colors
   * array. Colors in this array need to be at least the same number of groups in the Venn
   * diagram
   * @default []
   */
  vennColors?: unknown[];
  /**
   * Number of groups in the Venn diagram
   * @default 4
   */
  vennGroups?: number;
  /**
   * Flag to use the venn colors to use for the legends instead of the letters
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
  view?: "canvas" | "table" | "layout" | "explore" | (string & {});
  /**
   * Color for the violin borders
   * @default "rgb(0,0,0)"
   */
  violinBorderColor?: string;
  /**
   * Color for the violins. If specified all the violins will have the assigned color;
   * otherwise it will be automatically assigned
   * @default false
   */
  violinColor?: string;
  /**
   * Order of the shown elements (violin, boxplot, points) across the band when a half violin
   * is drawn. An array is a global order of the shown elements (e.g.
   * ["violin","boxplot","points"]); an object keyed by variable name or sample-group name
   * gives per-variable / per-sample orders. Empty means natural order
   * @default false
   */
  violinPartitionOrder?: Record<string, unknown> | unknown[];
  /**
   * Side the original data points (showBoxplotOriginalData) sit on for half violins. false
   * (default) places them on the opposite half from the violin; lt/rb pin them to an end;
   * center draws them on the centre line (the shared split line for split violins, pooling
   * both levels into one central cloud). May be given as a single value or as an object keyed
   * by variable name or sample-group name for per-variable / per-sample control
   * @default false
   */
  violinPointsSide?: "lt" | "rb" | "center" | (string & {});
  /**
   * Type for scaling violin plots
   * @default "width"
   */
  violinScale?: "area" | "count" | "width" | (string & {});
  /**
   * Which half of the band a violin occupies: both (full symmetric violin, default), lt (left
   * when vertical / top when horizontal), rb (right / bottom), or split (auto-assign the two
   * halves from a 2-level color/segregate group, seaborn split=True). May be given as a single
   * value (applies to all groups) or as an object keyed by variable name or sample-group name
   * for per-variable / per-sample sides, e.g. {"Before":"lt","After":"rb"}
   * @default "both"
   */
  violinSide?: "both" | "lt" | "rb" | "split" | (string & {});
  /**
   * Fraction to adjust color transparency for the violins
   * @default 0.4
   */
  violinTransparency?: number;
  /**
   * Flag to trim violin plots
   * @default true
   */
  violinTrim?: boolean;
  /**
   * Visible Map features. It Overrides the hidden features
   * @default []
   */
  visibleMapFeatures?: unknown[];
  /**
   * Flag to fix aspect ratio for visium plots
   * @default true
   */
  visiumFixedAspectRatio?: boolean;
  /**
   * Flag to invert the data in visium plots.
   * @default false
   */
  visiumFlip?: boolean;
  /**
   * Flag to disallow panning in visium plots. Dragging will always zoom
   * @default false
   */
  visiumPanning?: boolean;
  /**
   * Color for the bars decreasing in the waterfall plot
   * @default "rgb(254, 105, 105)"
   */
  waterfallDecreaseColor?: string;
  /**
   * Color for the bars increasing in the waterfall plot
   * @default "rgb(10,176,219)"
   */
  waterfallIncreaseColor?: string;
  /**
   * Color for the bars in end of the waterfall plot
   * @default "rgb(153,153,153)"
   */
  waterfallNetColor?: string;
  /**
   * Color for the accent elements in all the UI widgets. It only applied if the dataUIStyle is
   * set to false
   * @default "rgba(83, 105, 255, 0.1)"
   */
  widgetsAccentColor?: string;
  /**
   * Color for the background all the UI widgets. It only applied if the dataUIStyle is set to
   * false
   * @default "rgba(255, 255, 255, 0.95)"
   */
  widgetsBackgroundColor?: string;
  /**
   * Color for the elements in all the UI widgets. It only applied if the dataUIStyle is set to
   * false
   * @default "rgb(83, 105, 255)"
   */
  widgetsBaseColor?: string;
  /**
   * Color for the border of all elements in all the UI widgets. It only applied if the
   * dataUIStyle is set to false
   * @default "rgb(83, 105, 255)"
   */
  widgetsBorderColor?: string;
  /**
   * Border radius applied to all UI widget elements
   * @default "5px"
   */
  widgetsBorderRadius?: string;
  /**
   * Color for the contrast elements in all the UI widgets. It only applied if the dataUIStyle
   * is set to false
   * @default "rgb(83, 105, 255)"
   */
  widgetsContrastColor?: string;
  /**
   * Color for the the elements in all the UI widgets. It only applied if the dataUIStyle is
   * set to false
   * @default "rgb(34, 34, 34)"
   */
  widgetsFontColor?: string;
  /**
   * Base font size for all UI widgets
   * @default "15px"
   */
  widgetsFontSize?: string;
  /**
   * Transparency for the elements in all the UI widgets when mouse overs. It only applied if
   * the dataUIStyle is set to false
   * @default 0.2
   */
  widgetsHoverTransparency?: number;
  /**
   * Color for the class-a widget icons
   * @default "#5369ff"
   */
  widgetsIconClsAColor?: string;
  /**
   * Color for the class-b widget icons
   * @default "#292929"
   */
  widgetsIconClsBColor?: string;
  /**
   * Color for the class-c widget icons
   * @default "#999999"
   */
  widgetsIconClsCColor?: string;
  /**
   * Color for the class-x widget icons
   * @default "#ffffff"
   */
  widgetsIconClsXColor?: string;
  /**
   * Color for the stripe elements in the data table
   * @default "rgba(83, 105, 255, 0.05)"
   */
  widgetsStripedColor?: string;
  /**
   * Factor to adjust the width of the graph elements in one-dimensional and three-dimensional
   * plots. The greater the number, the wider the elements
   * @default 1
   */
  widthFactor?: number;
  /**
   * Color for the ticks in the genome browser
   * @default "rgba(204,204,204,0.1)"
   */
  wireColor?: string;
  /**
   * Color for the Active element color for the workflow widget
   * @default "rgba(124, 182, 226, 0.2)"
   */
  workflowActiveColor?: string;
  /**
   * Color for the Background color for the workflow widget
   * @default "#ffffff"
   */
  workflowBackgroundColor?: string;
  /**
   * Color for the Border color for the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowBorderColor?: string;
  /**
   * Color for the Background color for buttons in the workflow widget
   * @default "#ffffff"
   */
  workflowButtonBackgroundColor?: string;
  /**
   * Color for the Border color for buttons in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowButtonBorderColor?: string;
  /**
   * Name of a variable annotation whose levels become the keyframes of an animation played
   * through a timeline widget (play/stop and a draggable scrubber). Each level filters the
   * data to that frame and the graph tweens between frames via showTransition. Supported in
   * Scatter, Bar, Map, Fish and line-based graphs
   * @default false
   */
  workflowBy?: string;
  /**
   * Alignment (or position) for the workflow charts
   * @default "center"
   */
  workflowCurrentAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the workflow charts
   * @default "middle"
   */
  workflowCurrentBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in workflow charts
   * @default "rgb(0,0,0,0.3)"
   */
  workflowCurrentColor?: string;
  /**
   * Font size for the text in workflow charts. Be aware that auto scaling font must be turned
   * off for this property to take effect. A more convenient way to modify the size is to use
   * the workflowCurrentScaleFontFactor
   * @default 60
   */
  workflowCurrentFontSize?: number;
  /**
   * Font style for the workflow charts
   * @default ""
   */
  workflowCurrentFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the workflow charts
   * @default 5
   */
  workflowCurrentMargin?: number;
  /**
   * Rotation in degrees for the workflow charts
   * @default 0
   */
  workflowCurrentRotate?: number;
  /**
   * Scaling factor used to increase or decrease the workflow charts font size in the canvas
   * @default 1
   */
  workflowCurrentScaleFontFactor?: number;
  /**
   * Duration in milliseconds each frame of a workflowBy animation is held before advancing to
   * the next frame. A value of 0 inherits the reproduceTime duration
   * @default 0
   */
  workflowFrameDuration?: number;
  /**
   * Color for the Hover highlight color for the workflow widget
   * @default "rgba(124, 182, 226, 0.2)"
   */
  workflowHoverColor?: string;
  /**
   * Font size for list labels in the workflow widget
   * @default "10px"
   */
  workflowListLabelFontSize?: string;
  /**
   * Color for the Text color for lists in the workflow widget
   * @default "#555b62"
   */
  workflowListTextColor?: string;
  /**
   * Color for the Tick color for lists in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowListTickColor?: string;
  /**
   * Font size for list tick marks in the workflow widget
   * @default "6px"
   */
  workflowListTickFontSize?: string;
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
  workflowSliderFillColor?: string;
  /**
   * Color for the Border color for slider thumbs in the workflow widget
   * @default "#ffffff"
   */
  workflowSliderThumbBorderColor?: string;
  /**
   * Color for the Thumb color for sliders in the workflow widget
   * @default "rgb(8, 122, 209)"
   */
  workflowSliderThumbColor?: string;
  /**
   * Color for the Track color for sliders in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowSliderTrackColor?: string;
  /**
   * Color for the Text color for the workflow widget
   * @default "#555b62"
   */
  workflowTextColor?: string;
  /**
   * Color for the Border color for the timeline in the workflow widget
   * @default "rgb(215, 226, 230)"
   */
  workflowTimelineBorderColor?: string;
  /**
   * Size in pixels for the workflow widget when used to reproduce user customizations
   * @default 300
   */
  workflowWidth?: number;
  /**
   * Value between 0 - 1 for adjusting the 3D of the X Axis
   * @default 1
   */
  x3DRatio?: number;
  /**
   * Name of the samples, groups or variables to be displayed in the X axis
   * @default []
   */
  xAxis?: unknown[];
  /**
   * Name of the samples, groups or variables to be displayed in the second X axis
   * @default []
   */
  xAxis2?: unknown[];
  /**
   * Flag to rotate 180 degrees the direction of the X axis on the top
   * @default false
   */
  xAxis2Rotate?: boolean;
  /**
   * Flag to show/hide the X axis on the top
   * @default false
   */
  xAxis2Show?: boolean;
  /**
   * X axis format for the tick values in the second X axis. It could be a string with the
   * sprintf format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @default false
   */
  xAxis2TickFormat?: string;
  /**
   * Approx number of tick lines in the second X axis
   * @default 5
   */
  xAxis2Ticks?: number;
  /**
   * X axis2 title on the top
   * @default false
   */
  xAxis2Title?: string;
  /**
   * Value to ceil the data in the X axis
   * @default null
   */
  xAxisCeilValue?: number;
  /**
   * Sample id that is currently displayed in the X axis. Important when there are more that
   * one series displayed in the graph
   * @default 0
   */
  xAxisCurrent?: number;
  /**
   * Flag to force exact values in X axis
   * @default false
   */
  xAxisExact?: boolean;
  /**
   * Value to factor the data in the X axis
   * @default null
   */
  xAxisFactorValue?: number;
  /**
   * Value to floor the data in the X axis
   * @default null
   */
  xAxisFloorValue?: number;
  /**
   * Color for the major grid lines in the X axis on the bottom
   * @default "rgb(204, 204, 204)"
   */
  xAxisGridMajorColor?: string;
  /**
   * Type of line for the major grid lines in the X axis on the bottom
   * @default "solid"
   */
  xAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the major grid lines in the X axis
   * @default true
   */
  xAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the X axis on the bottom
   * @default 1
   */
  xAxisGridMajorTransparency?: number;
  /**
   * Width for the major grid lines in the X axis on the bottom
   * @default 1
   */
  xAxisGridMajorWidth?: number;
  /**
   * Color for the minor grid lines in the X axis
   * @default "rgb(204, 204, 204)"
   */
  xAxisGridMinorColor?: string;
  /**
   * Type of line for the minor grid lines in the X axis
   * @default "solid"
   */
  xAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the X axis
   * @default true
   */
  xAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the X axis
   * @default 1
   */
  xAxisGridMinorTransparency?: number;
  /**
   * Width for the minor grid lines in the X axis
   * @default 0.5
   */
  xAxisGridMinorWidth?: number;
  /**
   * Size in pixels for the histogram in the X axis
   * @default 80
   */
  xAxisHistogramHeight?: number;
  /**
   * Flag to show/hide the histogram in the X axis
   * @default false
   */
  xAxisHistogramShow?: boolean;
  /**
   * Color for the bottom line across the X axis
   * @default "rgb(204, 204, 204)"
   */
  xAxisLineBottomColor?: string;
  /**
   * Type of line for the bottom line across the X axis
   * @default "solid"
   */
  xAxisLineBottomLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the line in the X axis
   * @default false
   */
  xAxisLineBottomShow?: boolean;
  /**
   * Transparency for the color of the bottom line across the X axis
   * @default 1
   */
  xAxisLineBottomTransparency?: number;
  /**
   * Width for the bottom line across the X axis
   * @default 1
   */
  xAxisLineBottomWidth?: number;
  /**
   * Color for the top line across the X axis
   * @default "rgb(204, 204, 204)"
   */
  xAxisLineTopColor?: string;
  /**
   * Type of line for the top line across the X axis
   * @default "solid"
   */
  xAxisLineTopLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the line in the X axis
   * @default false
   */
  xAxisLineTopShow?: boolean;
  /**
   * Transparency for the color of the top line across the X axis
   * @default 1
   */
  xAxisLineTopTransparency?: number;
  /**
   * Width for the top line across the X axis
   * @default 1
   */
  xAxisLineTopWidth?: number;
  /**
   * Color for the log tick lines in the X axis on the bottom
   * @default "rgb(0,0,0)"
   */
  xAxisLogTicksColor?: string;
  /**
   * Length for the log tick lines in the X axis on the bottom
   * @default 8
   */
  xAxisLogTicksLength?: number;
  /**
   * Type of line for the log tick lines in the X axis on the bottom
   * @default "solid"
   */
  xAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the log tick lines in the X axis on the bottom
   * @default false
   */
  xAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the X axis on the bottom
   * @default 1
   */
  xAxisLogTicksTransparency?: number;
  /**
   * Width for the log tick lines in the X axis on the bottom
   * @default 1
   */
  xAxisLogTicksWidth?: number;
  /**
   * Number of minor ticks between major ticks in the X axis
   * @default 2
   */
  xAxisMinorTicks?: number;
  /**
   * Size in pixels for the data rug in the X axis
   * @default 15
   */
  xAxisRugHeight?: number;
  /**
   * Position for the data rug in theX axis
   * @default "bottom"
   */
  xAxisRugPosition?: "bottom" | "top" | "both" | (string & {});
  /**
   * Flag to show/hide a data rug in the X axis
   * @default false
   */
  xAxisRugShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with xAxisSetValues in the X axis
   * @default []
   */
  xAxisSetLabels?: unknown[];
  /**
   * Set the minor values for the axis in the X axis
   * @default []
   */
  xAxisSetMinorValues?: unknown[];
  /**
   * Set the values for the axis in the X axis
   * @default []
   */
  xAxisSetValues?: unknown[];
  /**
   * Flag to show/hide the X axis on the bottom
   * @default true
   */
  xAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @default "center"
   */
  xAxisTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @default "middle"
   */
  xAxisTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis text
   * @default "rgb(0,0,0)"
   */
  xAxisTextColor?: string;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * xAxisTextScaleFontFactor
   * @default 8
   */
  xAxisTextFontSize?: number;
  /**
   * Font style for the axis text
   * @default ""
   */
  xAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @default 5
   */
  xAxisTextMargin?: number;
  /**
   * Rotation in degrees for the axis text
   * @default 0
   */
  xAxisTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @default 1
   */
  xAxisTextScaleFontFactor?: number;
  /**
   * X axis format for the tick values in the X axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @default false
   */
  xAxisTickFormat?: string;
  /**
   * Approx number of tick lines in the X axis
   * @default 5
   */
  xAxisTicks?: number;
  /**
   * Color for the marker lines across the X axis
   * @default "rgb(204, 204, 204)"
   */
  xAxisTicksColor?: string;
  /**
   * Length for the marker lines across the X axis
   * @default null
   */
  xAxisTicksLength?: number;
  /**
   * Type of line for the marker lines across the X axis
   * @default "solid"
   */
  xAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the marker lines across the X axis
   * @default true
   */
  xAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the X axis
   * @default 1
   */
  xAxisTicksTransparency?: number;
  /**
   * Width for the marker lines across the X axis
   * @default 1
   */
  xAxisTicksWidth?: number;
  /**
   * Flag to force date format in X axis
   * @default false
   */
  xAxisTime?: boolean;
  /**
   * X axis title on the bottom
   * @default false
   */
  xAxisTitle?: string;
  /**
   * Alignment (or position) for the axis title
   * @default "center"
   */
  xAxisTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @default "middle"
   */
  xAxisTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis title
   * @default "rgb(0,0,0)"
   */
  xAxisTitleColor?: string;
  /**
   * Set the title for the X axis dynamically as it changes when configured by the user
   * @default false
   */
  xAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * xAxisTitleScaleFontFactor
   * @default 8
   */
  xAxisTitleFontSize?: number;
  /**
   * Font style for the axis title
   * @default ""
   */
  xAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @default 5
   */
  xAxisTitleMargin?: number;
  /**
   * Rotation in degrees for the axis title
   * @default 0
   */
  xAxisTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @default 1
   */
  xAxisTitleScaleFontFactor?: number;
  /**
   * Type of transformation for values in X axis
   * @default false
   */
  xAxisTransform?: string;
  /**
   * Flag to transform the values of the ticks back to linear scale in the X axis
   * @default false
   */
  xAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the X axis
   * @default false
   */
  xAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the X axis
   * @default 45
   */
  xRotate?: number;
  /**
   * Value between 0 - 1 for adjusting the 3D of the Y Axis
   * @default 1
   */
  y3DRatio?: number;
  /**
   * Name of the samples, groups or variables to be displayed in the Y axis
   * @default []
   */
  yAxis?: unknown[];
  /**
   * Flag to rotate 180 degrees the direction of the Y axis on the right
   * @default false
   */
  yAxis2Rotate?: boolean;
  /**
   * Flag to show/hide the Y axis on the right
   * @default false
   */
  yAxis2Show?: boolean;
  /**
   * Y axis2 title on the right
   * @default false
   */
  yAxis2Title?: string;
  /**
   * Value to ceil the data in the Y axis
   * @default null
   */
  yAxisCeilValue?: number;
  /**
   * Sample id that is currently displayed in the Y axis. Important when there are more that
   * one series displayed in the graph
   * @default 0
   */
  yAxisCurrent?: number;
  /**
   * Flag to force exact values in Y axis
   * @default false
   */
  yAxisExact?: boolean;
  /**
   * Value to factor the data in the Y axis
   * @default null
   */
  yAxisFactorValue?: number;
  /**
   * Value to floor the data in the Y axis
   * @default null
   */
  yAxisFloorValue?: number;
  /**
   * Color for the major grid lines in the Y axis on the left
   * @default "rgb(204, 204, 204)"
   */
  yAxisGridMajorColor?: string;
  /**
   * Type of line for the major grid lines in the Y axis on the left
   * @default "solid"
   */
  yAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the major grid lines in the Y axis
   * @default true
   */
  yAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the Y axis on the left
   * @default 1
   */
  yAxisGridMajorTransparency?: number;
  /**
   * Width for the major grid lines in the Y axis on the left
   * @default 1
   */
  yAxisGridMajorWidth?: number;
  /**
   * Color for the minor grid lines in the Y axis
   * @default "rgb(204, 204, 204)"
   */
  yAxisGridMinorColor?: string;
  /**
   * Type of line for the minor grid lines in the Y axis
   * @default "solid"
   */
  yAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the Y axis
   * @default true
   */
  yAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the Y axis
   * @default 1
   */
  yAxisGridMinorTransparency?: number;
  /**
   * Width for the minor grid lines in the Y axis
   * @default 0.5
   */
  yAxisGridMinorWidth?: number;
  /**
   * Size in pixels for the histogram in the Y axis
   * @default 80
   */
  yAxisHistogramHeight?: number;
  /**
   * Flag to show/hide the histogram in the Y axis
   * @default false
   */
  yAxisHistogramShow?: boolean;
  /**
   * Color for the left line across the Y axis
   * @default "rgb(204, 204, 204)"
   */
  yAxisLineLeftColor?: string;
  /**
   * Type of line for the left line across the Y axis
   * @default "solid"
   */
  yAxisLineLeftLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the line in the Y axis
   * @default false
   */
  yAxisLineLeftShow?: boolean;
  /**
   * Transparency for the color of the left line across the Y axis
   * @default 1
   */
  yAxisLineLeftTransparency?: number;
  /**
   * Width for the left line across the Y axis
   * @default 1
   */
  yAxisLineLeftWidth?: number;
  /**
   * Color for the right line across the Y axis
   * @default "rgb(204, 204, 204)"
   */
  yAxisLineRightColor?: string;
  /**
   * Type of line for the right line across the Y axis
   * @default "solid"
   */
  yAxisLineRightLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the line in the Y axis
   * @default false
   */
  yAxisLineRightShow?: boolean;
  /**
   * Transparency for the color of the right line across the Y axis
   * @default 1
   */
  yAxisLineRightTransparency?: number;
  /**
   * Width for the right line across the Y axis
   * @default 1
   */
  yAxisLineRightWidth?: number;
  /**
   * Color for the log tick lines in the Y axis on the left
   * @default "rgb(0,0,0)"
   */
  yAxisLogTicksColor?: string;
  /**
   * Length for the log tick lines in the Y axis on the left
   * @default 8
   */
  yAxisLogTicksLength?: number;
  /**
   * Type of line for the log tick lines in the Y axis on the left
   * @default "solid"
   */
  yAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the log tick lines in the Y axis on the left
   * @default false
   */
  yAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the Y axis on the left
   * @default 1
   */
  yAxisLogTicksTransparency?: number;
  /**
   * Width for the log tick lines in the Y axis on the left
   * @default 1
   */
  yAxisLogTicksWidth?: number;
  /**
   * Number of minor ticks between major ticks in the Y axis
   * @default 2
   */
  yAxisMinorTicks?: number;
  /**
   * Size in pixels for the data rug in the Y axis
   * @default 15
   */
  yAxisRugHeight?: number;
  /**
   * Position for the data rug in theY axis
   * @default "left"
   */
  yAxisRugPosition?: "left" | "rigth" | "both" | (string & {});
  /**
   * Flag to show/hide a data rug in the Y axis
   * @default false
   */
  yAxisRugShow?: boolean;
  /**
   * Set the tick labels paired one-to-one with yAxisSetValues in the Y axis
   * @default []
   */
  yAxisSetLabels?: unknown[];
  /**
   * Set the minor values for the axis in the Y axis
   * @default []
   */
  yAxisSetMinorValues?: unknown[];
  /**
   * Set the values for the axis in the Y axis
   * @default []
   */
  yAxisSetValues?: unknown[];
  /**
   * Flag to show/hide the Y axis on the left
   * @default true
   */
  yAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @default "center"
   */
  yAxisTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @default "middle"
   */
  yAxisTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis text
   * @default "rgb(0,0,0)"
   */
  yAxisTextColor?: string;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * yAxisTextScaleFontFactor
   * @default 8
   */
  yAxisTextFontSize?: number;
  /**
   * Font style for the axis text
   * @default ""
   */
  yAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @default 5
   */
  yAxisTextMargin?: number;
  /**
   * Rotation in degrees for the axis text
   * @default 0
   */
  yAxisTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @default 1
   */
  yAxisTextScaleFontFactor?: number;
  /**
   * Y axis format for the tick values in the Y axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @default false
   */
  yAxisTickFormat?: string;
  /**
   * Approx number of tick lines in the Y axis
   * @default 5
   */
  yAxisTicks?: number;
  /**
   * Color for the marker lines across the Y axis
   * @default "rgb(204, 204, 204)"
   */
  yAxisTicksColor?: string;
  /**
   * Length for the marker lines across the Y axis
   * @default null
   */
  yAxisTicksLength?: number;
  /**
   * Type of line for the marker lines across the Y axis
   * @default "solid"
   */
  yAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the marker lines across the Y axis
   * @default true
   */
  yAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the Y axis
   * @default 1
   */
  yAxisTicksTransparency?: number;
  /**
   * Width for the marker lines across the Y axis
   * @default 1
   */
  yAxisTicksWidth?: number;
  /**
   * Flag to force date format in Y axis
   * @default false
   */
  yAxisTime?: boolean;
  /**
   * Y axis title on the left
   * @default false
   */
  yAxisTitle?: string;
  /**
   * Alignment (or position) for the axis title
   * @default "center"
   */
  yAxisTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @default "middle"
   */
  yAxisTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis title
   * @default "rgb(0,0,0)"
   */
  yAxisTitleColor?: string;
  /**
   * Set the title for the Y axis dynamically as it changes when configured by the user
   * @default false
   */
  yAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * yAxisTitleScaleFontFactor
   * @default 8
   */
  yAxisTitleFontSize?: number;
  /**
   * Font style for the axis title
   * @default ""
   */
  yAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @default 5
   */
  yAxisTitleMargin?: number;
  /**
   * Rotation in degrees for the axis title
   * @default 0
   */
  yAxisTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @default 1
   */
  yAxisTitleScaleFontFactor?: number;
  /**
   * Type of transformation for values in Y axis
   * @default false
   */
  yAxisTransform?: string;
  /**
   * Flag to transform the values of the ticks back to linear scale in the Y axis
   * @default false
   */
  yAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the Y axis
   * @default false
   */
  yAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the Y axis
   * @default 0
   */
  yRotate?: number;
  /**
   * Value between 0 - 1 for adjusting the 3D of the Z Axis
   * @default 1
   */
  z3DRatio?: number;
  /**
   * Name of the samples, groups or variables to be displayed in the Z axis
   * @default []
   */
  zAxis?: unknown[];
  /**
   * Z axis2 title
   * @default false
   */
  zAxis2Title?: string;
  /**
   * Value to ceil the data in the Z axis
   * @default null
   */
  zAxisCeilValue?: number;
  /**
   * Sample id that is currently displayed in the Z axis. Important when there are more that
   * one series displayed in the graph
   * @default 0
   */
  zAxisCurrent?: number;
  /**
   * Flag to force exact values in Z axis
   * @default false
   */
  zAxisExact?: boolean;
  /**
   * Value to factor the data in the Z axis
   * @default null
   */
  zAxisFactorValue?: number;
  /**
   * Value to floor the data in the Z axis
   * @default null
   */
  zAxisFloorValue?: number;
  /**
   * Color for the major grid lines in the Z axis
   * @default "rgb(204, 204, 204)"
   */
  zAxisGridMajorColor?: string;
  /**
   * Type of line for the major grid lines in the Z axis
   * @default "solid"
   */
  zAxisGridMajorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the major grid lines in the Z axis
   * @default true
   */
  zAxisGridMajorShow?: boolean;
  /**
   * Transparency for the color of the major grid lines in the Z axis
   * @default 1
   */
  zAxisGridMajorTransparency?: number;
  /**
   * Width for the major grid lines in the Z axis
   * @default 1
   */
  zAxisGridMajorWidth?: number;
  /**
   * Color for the minor grid lines in the Z axis
   * @default "rgb(204, 204, 204)"
   */
  zAxisGridMinorColor?: string;
  /**
   * Type of line for the minor grid lines in the Z axis
   * @default "solid"
   */
  zAxisGridMinorLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the minor grid lines in the Z axis
   * @default true
   */
  zAxisGridMinorShow?: boolean;
  /**
   * Transparency for the color of the minor grid lines in the Z axis
   * @default 1
   */
  zAxisGridMinorTransparency?: number;
  /**
   * Width for the minor grid lines in the Z axis
   * @default 0.5
   */
  zAxisGridMinorWidth?: number;
  /**
   * Color for the log tick lines in the Z axis
   * @default "rgb(0,0,0)"
   */
  zAxisLogTicksColor?: string;
  /**
   * Length for the log tick lines in the Z axis
   * @default 8
   */
  zAxisLogTicksLength?: number;
  /**
   * Type of line for the log tick lines in the Z axis
   * @default "solid"
   */
  zAxisLogTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the log tick lines in the Z axis
   * @default false
   */
  zAxisLogTicksShow?: boolean;
  /**
   * Transparency for the color of the log tick lines in the Z axis
   * @default 1
   */
  zAxisLogTicksTransparency?: number;
  /**
   * Width for the log tick lines in the Z axis
   * @default 1
   */
  zAxisLogTicksWidth?: number;
  /**
   * Set the tick labels paired one-to-one with zAxisSetValues in the Z axis
   * @default []
   */
  zAxisSetLabels?: unknown[];
  /**
   * Set the minor values for the axis in the Z axis
   * @default []
   */
  zAxisSetMinorValues?: unknown[];
  /**
   * Set the values for the axis in the Z axis
   * @default []
   */
  zAxisSetValues?: unknown[];
  /**
   * Flag to show/hide the Z axis
   * @default true
   */
  zAxisShow?: boolean;
  /**
   * Alignment (or position) for the axis text
   * @default "center"
   */
  zAxisTextAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis text
   * @default "middle"
   */
  zAxisTextBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis text
   * @default "rgb(0,0,0)"
   */
  zAxisTextColor?: string;
  /**
   * Font size for the text in axis text. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * zAxisTextScaleFontFactor
   * @default 8
   */
  zAxisTextFontSize?: number;
  /**
   * Font style for the axis text
   * @default ""
   */
  zAxisTextFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis text
   * @default 5
   */
  zAxisTextMargin?: number;
  /**
   * Rotation in degrees for the axis text
   * @default 0
   */
  zAxisTextRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis text font size in the canvas
   * @default 1
   */
  zAxisTextScaleFontFactor?: number;
  /**
   * Z axis format for the tick values in the Z axis. It could be a string with the sprintf
   * format or an array where the first parameter is the sprintf format and the second
   * parameter is a modification applied to the value before is passed to the sprintf function,
   * i.e. ("/1000", "+ 100", etc.)
   * @default false
   */
  zAxisTickFormat?: string;
  /**
   * Approx number of tick lines in the Z axis
   * @default 10
   */
  zAxisTicks?: number;
  /**
   * Color for the marker lines across the Z axis
   * @default "rgb(204, 204, 204)"
   */
  zAxisTicksColor?: string;
  /**
   * Length for the marker lines across the Z axis
   * @default null
   */
  zAxisTicksLength?: number;
  /**
   * Type of line for the marker lines across the Z axis
   * @default "solid"
   */
  zAxisTicksLineType?: "rect" | "solid" | "spline" | "dotted" | "dashed" | "dotdash" | "longdash" | "twodash" | (string & {});
  /**
   * Flag to show/hide the marker lines across the Z axis
   * @default true
   */
  zAxisTicksShow?: boolean;
  /**
   * Transparency for the color of the marker lines across the Z axis
   * @default 1
   */
  zAxisTicksTransparency?: number;
  /**
   * Width for the marker lines across the Z axis
   * @default 1
   */
  zAxisTicksWidth?: number;
  /**
   * Flag to force date format in Z axis
   * @default false
   */
  zAxisTime?: boolean;
  /**
   * Z axis title
   * @default false
   */
  zAxisTitle?: string;
  /**
   * Alignment (or position) for the axis title
   * @default "center"
   */
  zAxisTitleAlign?: "left" | "center" | "right" | (string & {});
  /**
   * Baseline (or reference line) for the axis title
   * @default "middle"
   */
  zAxisTitleBaseline?: "top" | "middle" | "bottom" | (string & {});
  /**
   * Color for the text in axis title
   * @default "rgb(0,0,0)"
   */
  zAxisTitleColor?: string;
  /**
   * Set the title for the Z axis dynamically as it changes when configured by the user
   * @default false
   */
  zAxisTitleDynamic?: boolean;
  /**
   * Font size for the text in axis title. Be aware that auto scaling font must be turned off
   * for this property to take effect. A more convenient way to modify the size is to use the
   * zAxisTitleScaleFontFactor
   * @default 8
   */
  zAxisTitleFontSize?: number;
  /**
   * Font style for the axis title
   * @default ""
   */
  zAxisTitleFontStyle?: "" | "bold" | "italic" | "bold italic" | (string & {});
  /**
   * Margin to pad or separate the characters in the axis title
   * @default 5
   */
  zAxisTitleMargin?: number;
  /**
   * Rotation in degrees for the axis title
   * @default 0
   */
  zAxisTitleRotate?: number;
  /**
   * Scaling factor used to increase or decrease the axis title font size in the canvas
   * @default 1
   */
  zAxisTitleScaleFontFactor?: number;
  /**
   * Type of transformation for values in Z axis
   * @default false
   */
  zAxisTransform?: string;
  /**
   * Flag to transform the values of the ticks back to linear scale in the Z axis
   * @default false
   */
  zAxisTransformLinearTicks?: boolean;
  /**
   * Flag to transform the values of the ticks in the Z axis
   * @default false
   */
  zAxisTransformTicks?: boolean;
  /**
   * Starting number of degrees to rotate graph arround the Z axis
   * @default 0
   */
  zRotate?: number;
  /**
   * Zoom factor for the networks. A number greater than zero
   * @default 1
   */
  zoom?: number;
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
  zoomStep?: number;
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

export declare class CanvasXpress {
  constructor(
    target: CXTarget,
    data?: CXData,
    config?: CXConfig,
    events?: CXEvents,
    info?: object,
    afterRender?: CXAfterRender,
    callback?: (cx: CanvasXpress) => void,
    noValidate?: boolean,
    synchronous?: boolean
  );

  // ---- instance state (commonly read by integrators) --------------------
  target: HTMLCanvasElement;
  data: CXData;
  config: CXConfig;

  // ---- instance methods -------------------------------------------------
  /** Replace the chart data. `redraw` defaults true; `soft`/`config` are optional refinements. */
  updateData(data: CXData, redraw?: boolean, soft?: boolean, config?: CXConfig): void;
  /** Merge new configuration. `noReset` keeps current view state where possible. */
  updateConfig(config: CXConfig, noReset?: boolean): void;
  /** Re-render from current data/config. */
  render(...args: unknown[]): void;
  /** Redraw the current frame. */
  redraw(...args: unknown[]): void;
  /** Tear down the instance and free its canvas/timers. */
  destroy(): void;

  [key: string]: unknown;

  // ---- static factory / lifecycle --------------------------------------
  static create(target: CXTarget, data?: CXData, config?: CXConfig): CanvasXpress;
  static createObject(
    target: CXTarget, data?: CXData, config?: CXConfig, events?: CXEvents,
    info?: object, afterRender?: CXAfterRender,
    callback?: (cx: CanvasXpress) => void, noValidate?: boolean
  ): CanvasXpress;
  static getObject(id: string, create?: boolean): CanvasXpress | undefined;
  static destroy(id?: string, s?: unknown): void;
  static inject(target: CXTarget): CanvasXpress;

  // ---- static data loaders ---------------------------------------------
  static loadRemoteData(
    target: CXTarget, url: string, config?: CXConfig,
    events?: CXEvents, callback?: (cx: CanvasXpress) => void
  ): void;
  static json(url: string, callback: (data: unknown) => void): void;
  static csv(url: string, callback: (data: unknown) => void): void;
  static svg(url: string, id: string, callback: (data: unknown) => void): void;

  // ---- static data reshaping helpers -----------------------------------
  static melt(d: unknown, i: unknown, m: unknown, vn?: unknown, nn?: unknown): unknown;
  static pivot(d: unknown, r: unknown, c: unknown, v: unknown): unknown;

  // ---- page-level saved states -----------------------------------------
  static savePageState(name: string, group?: string): void;
  static applyPageState(name: string, group?: string): void;
  static deletePageState(name: string, group?: string): void;
  static getPageStates(group?: string): unknown;
}

export default CanvasXpress;

// Ambient global for <script>-tag consumers who use the library without a bundler.
declare global {
  // eslint-disable-next-line no-var
  var CanvasXpress: {
    new (
      target: CXTarget, data?: CXData, config?: CXConfig, events?: CXEvents,
      info?: object, afterRender?: CXAfterRender,
      callback?: (cx: import("./canvasXpress").CanvasXpress) => void,
      noValidate?: boolean, synchronous?: boolean
    ): import("./canvasXpress").CanvasXpress;
  };
}
