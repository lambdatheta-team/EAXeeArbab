/**
 * Copyright (c) 2006-2015, JGraph Ltd
 * Copyright (c) 2006-2015, Gaudenz Alder
 */
/**
 * Class: mxAbstractCanvas2D
 *
 * Base class for all canvases. A description of the public API is available in <mxXmlCanvas2D>.
 * All color values of <mxConstants.NONE> will be converted to null in the state.
 * 
 * Constructor: mxAbstractCanvas2D
 *
 * Constructs a new abstract canvas.
 */
function mxAbstractCanvas2D()
{
	/**
	 * Variable: converter
	 * 
	 * Holds the <mxUrlConverter> to convert image URLs.
	 */
	this.converter = this.createUrlConverter();
	
	this.reset();
};

/**
 * Variable: state
 * 
 * Holds the current state.
 */
mxAbstractCanvas2D.prototype.state = null;

/**
 * Variable: states
 * 
 * Stack of states.
 */
mxAbstractCanvas2D.prototype.states = null;

/**
 * Variable: path
 * 
 * Holds the current path as an array.
 */
mxAbstractCanvas2D.prototype.path = null;

/**
 * Variable: rotateHtml
 * 
 * Switch for rotation of HTML. Default is false.
 */
mxAbstractCanvas2D.prototype.rotateHtml = true;

/**
 * Variable: lastX
 * 
 * Holds the last x coordinate.
 */
mxAbstractCanvas2D.prototype.lastX = 0;

/**
 * Variable: lastY
 * 
 * Holds the last y coordinate.
 */
mxAbstractCanvas2D.prototype.lastY = 0;

/**
 * Variable: moveOp
 * 
 * Contains the string used for moving in paths. Default is 'M'.
 */
mxAbstractCanvas2D.prototype.moveOp = 'M';

/**
 * Variable: lineOp
 * 
 * Contains the string used for moving in paths. Default is 'L'.
 */
mxAbstractCanvas2D.prototype.lineOp = 'L';

/**
 * Variable: quadOp
 * 
 * Contains the string used for quadratic paths. Default is 'Q'.
 */
mxAbstractCanvas2D.prototype.quadOp = 'Q';

/**
 * Variable: curveOp
 * 
 * Contains the string used for bezier curves. Default is 'C'.
 */
mxAbstractCanvas2D.prototype.curveOp = 'C';

/**
 * Variable: closeOp
 * 
 * Holds the operator for closing curves. Default is 'Z'.
 */
mxAbstractCanvas2D.prototype.closeOp = 'Z';

/**
 * Variable: pointerEvents
 * 
 * Boolean value that specifies if events should be handled. Default is false.
 */
mxAbstractCanvas2D.prototype.pointerEvents = false;

/**
 * Function: createUrlConverter
 * 
 * Create a new <mxUrlConverter> and returns it.
 */
mxAbstractCanvas2D.prototype.createUrlConverter = function()
{
	return new mxUrlConverter();
};

/**
 * Function: reset
 * 
 * Resets the state of this canvas.
 */
mxAbstractCanvas2D.prototype.reset = function()
{
	this.state = this.createState();
	this.states = [];
};

/**
 * Function: createState
 * 
 * Creates the state of the this canvas.
 */
mxAbstractCanvas2D.prototype.createState = function()
{
	return {
		dx: 0,
		dy: 0,
		scale: 1,
		alpha: 1,
		fillAlpha: 1,
		strokeAlpha: 1,
		fillColor: null,
		gradientFillAlpha: 1,
		gradientColor: null,
		gradientAlpha: 1,
		gradientDirection: null,
		strokeColor: null,
		strokeWidth: 1,
		dashed: false,
		dashPattern: '3 3',
		fixDash: false,
		lineCap: 'flat',
		lineJoin: 'miter',
		miterLimit: 10,
		fontColor: '#000000',
		fontBackgroundColor: null,
		fontBorderColor: null,
		fontSize: mxConstants.DEFAULT_FONTSIZE,
		fontFamily: mxConstants.DEFAULT_FONTFAMILY,
		fontStyle: 0,
		shadow: false,
		shadowColor: mxConstants.SHADOWCOLOR,
		shadowAlpha: mxConstants.SHADOW_OPACITY,
		shadowDx: mxConstants.SHADOW_OFFSET_X,
		shadowDy: mxConstants.SHADOW_OFFSET_Y,
		rotation: 0,
		rotationCx: 0,
		rotationCy: 0
	};
};

/**
 * Function: format
 * 
 * Rounds all numbers to integers.
 */
mxAbstractCanvas2D.prototype.format = function(value)
{
	return Math.round(parseFloat(value));
};

/**
 * Function: addOp
 * 
 * Adds the given operation to the path.
 */
mxAbstractCanvas2D.prototype.addOp = function()
{
	if (this.path != null)
	{
		this.path.push(arguments[0]);
		
		if (arguments.length > 2)
		{
			var s = this.state;

			for (var i = 2; i < arguments.length; i += 2)
			{
				this.lastX = arguments[i - 1];
				this.lastY = arguments[i];
				
				this.path.push(this.format((this.lastX + s.dx) * s.scale));
				this.path.push(this.format((this.lastY + s.dy) * s.scale));
			}
		}
	}
};

/**
 * Function: rotatePoint
 * 
 * Rotates th?`o??XY?Z}??-v???'u??w???;???s2?N>????U1???e?p????0 (?J?A??'7l?'5????~
????k???r??n[?0????c0? ??\c?3??~%???n?7?:q~?????|D???@?D?D ??X[[[^^^ZZ???LN?1?  EQ???? ?`?uA`??1 @Qd?Q	7?kG%???5???n??n?S????c ??0???????e??2??j?V6T?p>?a??>33???5>>?21?` E?? Mc0? ???DC.`??1 @Q???` ? ??1?  EQ?1?v??B??0 (
?Fc0
? ?c???c ???? 0
?!` P??` ?eUW?` ??w???^x?????????w?? ????+?????~?_??mm%` P????^|????????W_?????k?5?\?o????????/?*c ??x???,ix???_y?????<| =?????{??={?X?p?e??????mG0 (???????,o????Ca)?e;w???Pu??# ????Q?H????P>   c   ??`   0?   ?1   ?`0   ?    ??   `0   c   ??`   0?   ?1   ?`0   ??HJ%?? ??    IEND?B`?                                                                                                                                                                                                                                                                                                             es the current state.
 */
mxAbstractCanvas2D.prototype.translate = function(dx, dy)
{
	this.state.dx += dx;
	this.state.dy += dy;
};

/**
 * Function: rotate
 * 
 * Rotates the current state.
 */
mxAbstractCanvas2D.prototype.rotate = function(theta, flipH, flipV, cx, cy)
{
	// nop
};

/**
 * Function: setAlpha
 * 
 * Sets the current alpha.
 */
mxAbstractCanvas2D.prototype.setAlpha = function(value)
{
	this.state.alpha = value;
};

/**
 * Function: setFillAlpha
 * 
 * Sets the current solid fill alpha.
 */
mxAbstractCanvas2D.prototype.setFillAlpha = function(value)
{
	this.state.fillAlpha = value;
};

/**
 * Function: setStrokeAlpha
 * 
 * Sets the current stroke alpha.
 */
mxAbstractCanvas2D.prototype.setStrokeAlpha = function(value)
{
	this.state.strokeAlpha = value;
};

/**
 * Function: setFillColor
 * 
 * Sets the current fill color.
 */
mxAbstractCanvas2D.prototype.setFillColor = function(value)
{
	if (value == mxConstants.NONE)
	{
		value = null;
	}
	
	this.state.fillColor = value;
	this.state.gradientColor = null;
};

/**
 * Function: setGradient
 * 
 * Sets the current gradient.
 */
mxAbstractCanvas2D.prototype.setGradient = function(color1, color2, x, y, w, h, direction, alpha1, alpha2)
{
	var s = this.state;
	s.fillColor = color1;
	s.gradientFillAlpha = (alpha1 != null) ? alpha1 : 1;
	s.gradientColor = color2;
	s.gradientAlpha = (alpha2 != null) ? alpha2 : 1;
	s.gradientDirection = direction;
};

/**
 * Function: setStrokeColor
 * 
 * Sets the current stroke color.
 */
mxAbstractCanvas2D.prototype.setStrokeColor = function(value)
{
	if (value == mxConstants.NONE)
	{
		value = null;
	}
	
	this.state.strokeColor = value;
};

/**
 * Function: setStrokeWidth
 * 
 * Sets the current stroke width.
 */
mxAbstractCanvas2D.prototype.setStrokeWidth = function(value)
{
	this.state.strokeWidth = value;
};

/**
 * Function: setDashed
 * 
 * Enables or disables dashed lines.
 */
mxAbstractCanvas2D.prototype.setDashed = function(value, fixDash)
{
	this.state.dashed = value;
	this.state.fixDash = fixDash;
};

/**
 * Function: setDashPattern
 * 
 * Sets the current dash pattern.
 */
mxAbstractCanvas2D.prototype.setDashPattern = function(value)
{
	this.state.dashPattern = value;
};

/**
 * Function: setLineCap
 * 
 * Sets the current line cap.
 */
mxAbstractCanvas2D.prototype.setLineCap = function(value)
{
	this.state.lineCap = value;
};

/**
 * Function: setLineJoin
 * 
 * Sets the current line join.
 */
mxAbstractCanvas2D.prototype.setLineJoin = function(value)
{
	this.state.lineJoin = value;
};

/**
 * Function: setMiterLimit
 * 
 * Sets the current miter limit.
 */
mxAbstractCanvas2D.prototype.setMiterLimit = function(value)
{
	this.state.miterLimit = value;
};

/**
 * Function: setFontColor
 * 
 * Sets the current font color.
 */
mxAbstractCanvas2D.prototype.setFontColor = function(value)
{
	if (value == mxConstants.NONE)
	{
		value = null;
	}
	
	this.state.fontColor = value;
};

/**
 * Function: setFontColor
 * 
 * Sets the current font color.
 */
mxAbstractCanvas2D.prototype.setFontBackgroundColor = function(value)
{
L        ?      F?       -?u???-?u???Okz?????                    ? P?O? ?:i?? +00? /C:\                   ? 1     fRt` PROGRA~2  |   ???:?fRt`*   ?              R     P r o g r a m   F i l e s   ( x 8 6 )   @ s h e l l 3 2 . d l l , - 2 1 8 1 7    ` 1     fRt` AMAZIN~1  H   ??fRt`fRt`*   ??   %               A m a z i n g - S h a r e    x 1     fRu` AMAZIN~1  `   ??fRt`fRu`*   ??   =               A m a z i n g   A n y   D a t a   R e c o v e r y    b 2 ?? fRr`  unins000.exe  F   ??fRt`fRt`*   ??   0               u n i n s 0 0 0 . e x e      z            -       y         y4??    C:\Program Files (x86)\Amazing-Share\Amazing Any Data Recovery\unins000.exe  ] . . \ . . \ . . \ . . \ . . \ . . \ . . \ P r o g r a m   F i l e s   ( x 8 6 ) \ A m a z i n g - S h a r e \ A m a z i n g   A n y   D a t a   R e c o v e r y \ u n i n s 0 0 0 . e x e > C : \ P r o g r a m   F i l e s   ( x 8 6 ) \ A m a z i n g - S h a r e \ A m a z i n g   A n y   D a t a   R e c o v e r y      ?*   ?        ??@Z|???K?J???????   ?   	  ??   1SPS??XF?L8C???&?m?q          /   S - 1 - 5 - 2 1 - 3 6 9 5 9 5 6 1 6 0 - 3 1 4 4 6 4 3 8 8 4 - 1 5 4 5 1 6 5 3 5 5 - 1 0 0 0             `     ?X       lambdatheta-pc  
??~hBJ?W??|??`~???p???;
??~hBJ?W??|??`~???p???;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       