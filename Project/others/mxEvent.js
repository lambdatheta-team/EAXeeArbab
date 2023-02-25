/**
 * Copyright (c) 2006-2015, JGraph Ltd
 * Copyright (c) 2006-2015, Gaudenz Alder
 */
var mxEvent =
{

	/**
	 * Class: mxEvent
	 * 
	 * Cross-browser DOM event support. For internal event handling,
	 * <mxEventSource> and the graph event dispatch loop in <mxGraph> are used.
	 * 
	 * Memory Leaks:
	 * 
	 * Use this class for adding and removing listeners to/from DOM nodes. The
	 * <removeAllListeners> function is provided to remove all listeners that
	 * have been added using <addListener>. The function should be invoked when
	 * the last reference is removed in the JavaScript code, typically when the
	 * referenced DOM node is removed from the DOM.
	 *
	 * Function: addListener
	 * 
	 * Binds the function to the specified event on the given element. Use
	 * <mxUtils.bind> in order to bind the "this" keyword inside the function
	 * to a given execution scope.
	 */
	addListener: function()
	{
		var updateListenerList = function(element, eventName, funct)
		{
			if (element.mxListenerList == null)
			{
				element.mxListenerList = [];
			}
			
			var entry = {name: eventName, f: funct};
			element.mxListenerList.push(entry);
		};
		
		if (window.addEventListener)
		{
			return function(element, eventName, funct)
			{
				element.addEventListener(eventName, funct, false);
				updateListenerList(element, eventName, funct);
			};
		}
		else
		{
			return function(element, eventName, funct)
			{
				element.attachEvent('on' + eventName, funct);
				updateListenerList(element, eventName, funct);				
			};
		}
	}(),

	/**
	 * Function: removeListener
	 *
	 * Removes the specified listener from the given element.
	 */
	removeListener: function()
	{
		var updateListener = function(element, eventName, funct)
		{
			if (element.mxListenerList != null)
			{
				var listenerCount = element.mxListenerList.length;
				
				for (var i = 0; i < listenerCount; i++)
				{
					var entry = element.mxListenerList[i];
					
					if (entry.f == funct)
					{
						element.mxListenerList.splice(i, 1);
						break;
					}
				}
				
				if (element.mxListenerList.length == 0)
				{
					element.mxListenerList = null;
				}
			}
		};
		
		if (window.removeEventListener)
		{
			return function(element, eventName, funct)
			{
				element.removeEventListener(eventName, funct, false);
				updateListener(element, eventName, funct);
			};
		}
		else
		{
			return function(element, eventName, funct)
			{
				element.detachEvent('on' + eventName, funct);
				updateListener(element, eventName, funct);
			};
		}
	}(),

	/**
	 * Function: removeAllListeners
	 * 
	 * Removes all listeners from the given element.
	 */
	removeAllListeners: function(element)
	{
		var list = element.mxListenerList;

		if (list != null)
		{
			while (list.length > 0)
			{
				var entry = list[0];
				mxEvent.removeListener(element, entry.name, entry.f);
			}
		}
	},
	
	/**
	 * Function: addGestureListeners
	 * 
	 * Adds the given listeners for touch, mouse and/or pointer events. If
	 * <mxClient.IS_POINTER> is true then pointer events will be registered,
	 * else the respective mouse events will be registered. If <mxClient.IS_POINTER>
	 * is false and <mxClient.IS_TOUCH> is true then the respective touch events
	 * will be registered as well as the mouse events.
	 */
	addGestureListeners: function(node, startListener, moveListener, endListener)
	{
		if (startListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointerdown' : 'mousedown', startListener);
		}
		
		if (moveListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointermove' : 'mousemove', moveListener);
		}
		
		if (endListener != null)
		{
			mxEvent.addListener(node, (mxClient.IS_POINTER) ? 'pointerup' : 'mouseup', endListener);
		}
		
		if (!mxClient.IS_POINTER && mxClient.IS_TOUCH)
		{
			if (startListener != null)
			{
				mxEvent.addListener(node, 'touchstart', startListener);
			}
			
			if (moveListener != null)
			{
				mxEvent.addListener(node, 'touchmove', moveListener);
			}
			
			if (endListener != null)
			{
				mxEvent.addListener(node, 'touchend', endListener);
			}
		}
	},
	
	/**
	 * Function: removeGestureListeners
	 * 
	 * Removes the given listeners from mousedown, mousemove, mouseup and the
	 * respective touch events if <mxClient.IS_TOUCH> is true.
	 */
	removeGestureListeners: function(node, startListener, moveListener, endListener)
	{
		if (startListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointerdown' : 'mousedown', startListener);
		}
		
		if (moveListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointermove' : 'mousemove', moveListener);
		}
		
		if (endListener != null)
		{
			mxEvent.removeListener(node, (mxClient.IS_POINTER) ? 'pointerup' : 'mouseup', endListener);
		}
		
		if (!mxClient.IS_POINTER && mxClient.IS_TOUCH)
		{
			if (startListener != null)
			{
				mxEvent.removeListener(node, 'touchstart', startListener);
			}
			
			if (moveListener != null)
			{
				mxEvent.removeListener(node, 'touchmove', moveListener);
			}
			
			if (endListener != null)
			{
				mxEvent.removeListener(node, 'touchend', endListener);
			}
		}
	},
	
	/**
	 * Function: redirectMouseEvents
	 *
	 * Redirects the mouse events from the given DOM node to the graph dispatch
	 * loop using the event and given state as event arguments. State can
	 * either be an instance of <mxCellState> or a function that returns an
	 * <mxCellState>. The down, move, up and dblClick arguments are optional
	 * functions that take the trigger event as arguments and replace the
	 * default behaviour.
	 */
	redirectMouseEvents: function(node, graph, state, down, move, up, dblClick)
	{
		var getState = function(evt)
		{
			return (typeof(state) == 'function') ? state(evt) : state;
		};
		
		mxEvent.addGestureListeners(node, function (evt)
		{
			if (down != null)
			{
				down(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_DOWN, new mxMouseEvent(evt, getState(evt)));
			}
		},
		function (evt)
		{
			if (move != null)
			{
				move(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_MOVE, new mxMouseEvent(evt, getState(evt)));
			}
		},
		function (evt)
		{
			if (up != null)
			{
				up(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				graph.fireMouseEvent(mxEvent.MOUSE_UP, new mxMouseEvent(evt, getState(evt)));
			}
		});

		mxEvent.addListener(node, 'dblclick', function (evt)
		{
			if (dblClick != null)
			{
				dblClick(evt);
			}
			else if (!mxEvent.isConsumed(evt))
			{
				var tmp = getState(evt);
				graph.dblClick(evt, (tmp != null) ? tmp.cell : null);
			}
		});
	},

	/**
	 * Function: release
	 * 
	 * Removes the known listeners from the given DOM node and its descendants.
	 * 
	 * Parameters:
	 * 
	 * element - DOM node to remove the listeners from.
	 */
	release: function(element)
	{
		try
		{
			if (element != null)
			{
				mxEvent.removeAllListeners(element);
				
				var children = element.childNodes;
				
				if (children != null)
				{
			        var childCount = children.length;
			        
			        for (var i = 0; i < childCount; i += 1)
			        {
			        	mxEvent.release(children[i]);
			        }
			    }
			}
		}
		catch (e)
		{
			// ignores errors as this is typically called in cleanup code
		}
	},

	/**
	 * Function: addMouseWheelListener
	 * 
	 * Installs the given function as a handler for mouse wheel events. The
	 * function has two arguments: the mouse event and a boolean that specifies
	 * if the wheel was moved up or down.
	 * 
	 * This has been tested with IE 6 and 7, Firefox (all versions), Opera and
	 * Safari. It does currently not work on Safari for Mac.
	 * 
	 * Example:
	 * 
	 * (code)
	 * mxEvent.addMouseWheelListener(function (evt, up)
	 * {
	 *   mxLog.show();
	 *   mxLog.debug('mouseWheel: up='+up);
	 * });
	 *(end)
	 * 
	 * Parameters:
	 * 
	 * funct - Handler function that takes the event argument and a boolean up
	 * argument for the mousewheel direction.
	 * target - Target for installing the listener in Google Chrome. See 
	 * https://www.chromestatus.com/features/6662647093133312.
	 */
	addMouseWheelListener: function(funct, target)
	{
		if (funct != null)
		{
			var wheelHandler = function(evt)
			{
				// IE does not give an event object but the
				// global event object is the mousewheel event
				// at this point in time.
				if (evt == null)
				{
					evt = window.event;
				}
			
				//To prevent window zoom on trackpad pinch
				if (evt.ctrlKey) 
				{
					evt.preventDefault();
				}

				var delta = -evt.deltaY;
				
				// Handles the event using the given function
				if (Math.abs(evt.deltaX) > 0.5 || Math.abs(evt.deltaY) > 0.5)
				{
					funct(evt, (evt.deltaY == 0) ?  -evt.deltaX > 0 : -evt.deltaY > 0);
				}
			};
	
			target = target != null ? target : window;
					
			if (mxClient.IS_SF && !mxClient.IS_TOUCH)
			{
				var scale = 1;
				
				mxEvent.addListener(target, 'gesturestart', function(evt)
				{
					mxEvent.consume(evt);
					scale = 1;
				});
				
				mxEvent.addListener(target, 'gesturechange', function(evt)
				{
					mxEvent.consume(evt);
					var diff = scale - evt.scale;
					
					if (Math.abs(diff) > 0.2)
					{
						funct(evt, diff < 0, true);
						scale = evt.scale;
					}
				});

				mxEvent.addListener(target, 'gestureend', function(evt)
				{
					mxEvent.consume(evt);
				});
			}
			
			mxEvent.addListener(target, 'wheel', wheelHandler);
		}
	},
	
	/**
	 * Function: disableContextMenu
	 *
	 * Disables the context menu for the given element.
	 */
	disableContextMenu: function(element)
	{
		mxEvent.addListener(element, 'contextmenu', function(evt)
		{
			if (evt.preventDefault)
			{
				evt.preventDefault();
			}
			
			return false;
		});
	},
	
	/**
	 * Function: getSource
	 * 
	 * Returns the event's target or srcElement depending on the browser.
	 */
	getSource: function(evt)
	{
		return (evt.srcElement != null) ? evt.srcElement : evt.target;
	},

	/**
	 * Function: isConsumed
	 * 
	 * Returns true if the event has been consumed using <consume>.
	 */
	isConsumed: function(evt)
	{
		return evt.isConsumed != null && evt.isConsumed;
	},

	/**
	 * Function: isTouchEvent
	 * 
	 * Returns true if the event was generated using a touch device (not a pen or mouse).
	 */
	isTouchEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'touch' || evt.pointerType ===
			evt.MSPOINTER_TYPE_TOUCH) : ((evt.mozInputSource != null) ?
					evt.mozInputSource == 5 : evt.type.indexOf('touch') == 0);
	},

	/**
	 * Function: isPenEvent
	 * 
	 * Returns true if the event was generated using a pen (not a touch device or mouse).
	 */
	isPenEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'pen' || evt.pointerType ===
			evt.MSPOINTER_TYPE_PEN) : ((evt.mozInputSource != null) ?
					evt.mozInputSource == 2 : evt.type.indexOf('pen') == 0);
	},

	/**
	 * Function: isMultiTouchEvent
	 * 
	 * Returns true if the event was generated using a touch device (not a pen or mouse).
	 */
	isMultiTouchEvent: function(evt)
	{
		return (evt.type != null && evt.type.indexOf('touch') == 0 && evt.touches != null && evt.touches.length > 1);
	},

	/**
	 * Function: isMouseEvent
	 * 
	 * Returns true if the event was generated using a mouse (not a pen or touch device).
	 */
	isMouseEvent: function(evt)
	{
		return (evt.pointerType != null) ? (evt.pointerType == 'mouse' || evt.pointerType ===
			evt.MSPOINTER_TYPE_MOUSE) : ((evt.mozInputSource != null) ?
				evt.mozInputSource == 1 : evt.type.indexOf('mouse') == 0);
	},
	
	/**
	 * Function: isLeftMouseButton
	 * 
	 * Returns true if the left mouse button is pressed for the given event.
	 * To check if a button is pressed during a mouseMove you should use the
	 * <mxGraph.isMouseDown> property. Note that this returns true in Firefox
	 * for control+left-click on the Mac.
	 */
	isLeftMouseButton: function(evt)
	{
		// Special case for mousemove and mousedown we check the buttons
		// if it exists because which is 0 even if no button is pressed
		if ('buttons' in evt && (evt.type == 'mousedown' || evt.type == 'mousemove'))
		{
			return evt.buttons == 1;
		}
		else if ('which' in evt)
		{
	        return evt.which === 1;
	    }
		else
		{
	        return evt.button === 1;
	    }
	},
	
	/**
	 * Function: isMiddleMouseButton
	 * 
	 * Returns true if the middle mouse button is pressed for the given event.
	 * To check if a button is pressed during a mouseMove you should use the
	 * <mxGraph.isMouseDown> property.
	 */
	isMiddleMouseButton: function(evt)
	{
		if ('which' in evt)
		{
	        return evt.which === 2;
	    }
		else
		{
	        return evt.button === 4;
	    }
	},
	
	/**
	 * Function: isRightMouseButton
	 * 
	 * Returns true if the right mouse button was pressed. Note that this
	 * button might not be available on some systems. For handling a popup
	 * trigger <isPopupTrigger> should be used.
	 */
	isRightMouseButton: function(evt)
	{
		if ('which' in evt)
		{
	        return evt.which === 3;
	    }
		else
		{
	        return evt.button === 2;
	    }
	},

	/**
	 * Function: isPopupTrigger
	 * 
	 * Returns true if the event is a popup trigger. This implementation
	 * returns true if the right button or the left button and control was
	 * pressed on a Mac.
	 */
	isPopupTrigger: function(evt)
	{
		return mxEvent.isRightMouseButton(evt) || (mxClient.IS_MAC && mxEvent.isControlDown(evt) &&
			!mxEvent.isShiftDown(evt) && !mxEvent.isMetaDown(evt) && !mxEvent.isAltDown(evt));
	},

	/**
	 * Function: isShiftDown
	 * 
	 * Returns true if the shift key is pressed for the given event.
	 */
	isShiftDown: function(evt)
	{
		return (evt != null) ? evt.shiftKey : false;
	},

	/**
	 * Function: isAltDown
	 * 
	 * Returns true if the alt key is pressed for the given event.
	 */
	isAltDown: function(evt)
	{
		return (evt != null) ? evt.altKey : false;
	},

	/**
	 * Function: isControlDown
	 * 
	 * Returns true if the control key is pressed for the given event.
	 */
	isControlDown: function(evt)
	{
		return (evt != null) ? evt.ctrlKey : false;
	},

	/**
	 * Function: isMetaDown
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	isMetaDown: function(evt)
	{
		return (evt != null) ? evt.metaKey : false;
	},

	/**
	 * Function: getMainEvent
	 * 
	 * Returns the touch or mouse event that contains the mouse coordinates.
	 */
	getMainEvent: function(e)
	{
		if ((e.type == 'touchstart' || e.type == 'touchmove') && e.touches != null && e.touches[0] != null)
		{
			e = e.touches[0];
		}
		else if (e.type == 'touchend' && e.changedTouches != null && e.changedTouches[0] != null)
		{
			e = e.changedTouches[0];
		}
		
		return e;
	},
	
	/**
	 * Function: getClientX
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	getClientX: function(e)
	{
		return mxEvent.getMainEvent(e).clientX;
	},

	/**
	 * Function: getClientY
	 * 
	 * Returns true if the meta key is pressed for the given event.
	 */
	getClientY: function(e)
	{
		return mxEvent.getMainEvent(e).clientY;
	},

	/**
	 * Function: consume
	 * 
	 * Consumes the given event.
	 * 
	 * Parameters:
	 * 
	 * evt - Native event to be consumed.
	 * preventDefault - Optional boolean to prevent the default for the event.
	 * Default is true.
	 * stopPropagation - Option boolean to stop event propagation. Default is
	 * true.
	 */
	consume: function(evt, preventDefault, stopPropagation)
	{
		preventDefault = (preventDefault != null) ? preventDefault : true;
		stopPropagation = (stopPropagation != null) ? stopPropagation : true;
		
		if (preventDefault)
		{
			if (evt.preventDefault)
			{
				if (stopPropagation)
				{
					evt.stopPropagation();
				}
				
				evt.preventDefault();
			}
			else if (stopPropagation)
			{
				evt.cancelBubble = true;
			}
		}

		// Opera
		evt.isConsumed = true;

		// Other browsers
		if (!evt.preventDefault)
		{
			evt.returnValue = false;
		}
	},
	
	//
	// Special handles in mouse events
	//
	
	/**
	 * Variable: LABEL_HANDLE
	 * 
	 * Index for the label handle in an mxMouseEvent. This should be a negative
	 * value that does not interfere with any possible handle indices. Default
	 * is -1.
	 */
	LABEL_HANDLE: -1,
	
	/**
	 * Variable: ROTATION_HANDLE
	 * 
	 * Index for the rotation handle in an mxMouseEvent. This sh‰PNG

   IHDR  7   ¸   	Ñ<Ü  âIDATxÚíytE¾€+@¢BdY–!„°Ã atq d@D@A1òÈsL†E²	“èa0˜Ìa<ÈÁQ_@I.
êdyŠ##7²²Ÿà’yÕ{uwUo÷ö½}o~ßÚ·nwuİ¦¿ÔÒÕ¿Š¹Rs àabÀR ğ8K÷ùcÃ]* hˆI¨£¦+–¶øU§ûÎâQCîwi½ˆïİñ‡ü¶_¸D-œG4WEKEÁOS°«ƒõw)€hæàÑQEKq+µuĞ@5â‰	wdêu)®•³*R[`KèîR ã]O?©º¨µ*R»`QôQ9ô…"*Xêli¿~`)à"ÿ9–¶´oßŞá.Í|æÿ,liï>`id£ï•æ-Î1Øá²"+Ù:È¤¶geµK?*H6†Î)³ñÓß›sOåÚ“¾Ä„S¯¦=V+ŸÁ;w~sâI‹{‰Y³f	/¿ü²q¢¶´Wï^!,#àZOŸ_’CıçFüığìRK–:Ê„âé‘/kL,ÅŠ³PÚÎCÖ]å,}V<µe©m‚‘;¾vÂe5ØĞ€-íÙ,lôuéÏåöÌs…V²Å™|KÍ„Z—~~ÜÌÒİùé#æÌP>¼:bAÙGW´m©Ë[Z–¾İS–^¿b8—A–"©
%?²,MNK£åK›¿Ä’¥8Õ-f‚©:afé–¹÷N˜1TùøêG^|·ÕƒšŒ.¿5G›7oi}ö—i«æó*	Õ,_Õ˜³¼‡Tå
‡­è¢HÇ5~3wğ;¯MÉ¬â¥×ä€¤]š»‡ò}'ñìS23_ö`@µ‘¥(â-í‘œbñrŞ$ÆÇ¥[öKŸ^ü’>½V™;uÉÄÒW³S5ÇÌXµ×REİ†s’ñRj;½’ÄQBçÚ#iŞ93Eí˜´?Y—‡ òìºƒéhœ4Pñ–vOK#w,}ñ¯F–Î]D±”Úäõef© ®<)µ¥1²?’@#ßÑWJ](9™öe6·‹$R©­ÊS•C'ÅRÍ_ı_ìZšĞ£gàÿ¢@‰q§2-È3²tÎBj]JÑôËÓßZ³4{ËåU„m«C¾ŠQüöò{&¾¹\O×6V£'ùMUk˜0‘CÀ–:hñvë–F8îÔ¥/åÏ6°ô/VR¾ Õ¥ÇÏØ´ÔÆ/i©àiåh4Q%ù¸×¢\Fé>ÍPÓ{Š¦r£Qr°Ğâ5µÔÙèQ×D°4²q©_Zø¼‘¥¹ÏR,¥öKO~mÙRîçN¼Õ·Á¯j¤Wm)ùüTš;UöÕ!İBÚn&?¤ŒÑrÓø±!]{ØÚ°³'1]’]ùGB…K–½`ÔIÌy¦@ŸHµôÔÙËöæùÚî»ÚÄİg9Ng5tê–F6.Yê ª¥§ÏÙ´ÔùoP×¶Ş [úëß$…»@@¸4zä êèÑ™óW¼>—h¼’™¼¶´cW°4²ñŒ¤ôºôìÏ[êq°¥ºôw)€€ğx]zîâw`i@`Koï–F6‘”^—^ø,liûN`idãIé³í/Ö€¥-m{g÷p—"<$>>¶é‘O]=ÅÉ}owû‡4òLezƒV™Ö|û`i@±y&÷İ?¼>¦Qìµï]=‹o×ÁpÿĞ0Ó¨Ùí`)à”F¸ÿ^¾ìVş­Zqÿ½q#Ü¿3ÌìÜw,œ"XêEnç!€¥@ „ĞÒ5Ÿ!¿¬ÈP–ZK´(³/€¥@Ä5K

æÌ™ãeKÅ†° °4$€¥ÑÉÖ­[ãââÒÓÓëêê>Ü·oßFÂ\ÂméKå¹ç¯ÖthŞö©Ñ+Mó´ké¸G+ıï×LJÀÒèdÓ¦MMš4;vìöíÛGŒQQQ1zôh¢~ûí·ŒÅ™P¾¶iiÅª×k¯x¬´Ùm‰Æ{Z±tùÛÙÚÄõjÛæÓóÏ\ª?öÆyÚ²+Úµc÷ãg¾`‰ˆ¥1/ÿ~PÜOõIztĞb+ûƒ¥Ñ	¶´qãÆXKl×¶mÛÆï@TAÑ>}ú8p`Ü¸q”=lZú¯Å·öyø•/|Ëd˜ˆjÅÒ©«ÓîKêôcİ/MccÿõùÉ´~'¤O›½€š§ŞÒŠ’‘ÂÆ°©ïé¹óóÉ…Ë)déœÁ³GşªYıÍ‰múZ,N6nÜX[[‹ÕÂŠ
)vE½téV7•[µjµcÇûï¿Ÿ²“MKw,¸utşWø>/[6èñÒfm™¢Z±ô¹Í™77ş)±uËÏ/]®»qËs“ÖâÄ×Wæ[·t×êî#³ö¿³fpÙ‰Ç„RHì*ÕOU	íƒ+ÒÙ]š­|çõß_·8¹Áô°4
Á}Ñ6`¯E±ŸòÆŞ½{Ge**V×ŸıúõkÅÏşÙ½{÷Ï?ÿLîĞ¼yó^½zµiÇ{C³ôÜŞªÚ¹øÇË_‘‰qÍÛ|†›îw¾Òw´lÙo§—Æ3DµØ/}aëg¯|sg«öO›»¶,İ¶¼k=ªÁWfş	¤Ó2Kï›¿¹QLÌÅë-š·jÚ©]ÓîíãÛ6½öåß¦Ü·nĞ¼Ãáş•›¿F[ÖÏzßô,6°¢eee÷Üsl¦n]T¬èşıû±¢­[·físşüy¿ß?òà>Ğ,İ¹¬Ó i«[wÈÊá\åÃoç§fÒEu<ÆkËR-³ç¬ZÎôĞØÒ?oÿê¦Æ1P\‡æM[ÆvkŞ¤c|“îywJêzW‡ïz}—€u­/Øoş{„‹	–F¥¥¥—¥‰µr-ªÙnß¾=•zø•+WpÃXhèŸ7ƒ'LœÈmÑ,ıŸy·Şÿü!ãÎy÷ğö‚»³wßÒ²£æ+ë–ş}sîS“ä¶,ÕôK5–Î|fõ+/<Á*¼y]Ú(æâ/-š·¼¥S»fİïˆïŞ¦éG5Z¹öø ´~}‡ödN6Y,6¶lÙòı÷ÜK*B-*	ÿERÚ²eKz?¡šš\‘0 >>ŞøD;wî|p¯ÍÒ­sâÈûÀ8‡K§øç’»Ÿ|·Y›ßh¾²néª¢7²s•?Ê–şô®hàÍ÷Š#Cvû¥ÓŸ}cİó"Æ–î+Ÿ}#ù¯šÄ	şù‘¼,êºI£:·¸,m¸ÔÖÖâN©¦¡‹ÔMß©S§ÆÆÆ²r8sæÌ§Ÿ~Ú¿ÿfÍš±öÁÕõ‘#GÒÇå>Ğ,İ6¿í½3n½­#+‡šSG÷o\1ø¿6ÜÖu¨ş[ë–®)\•«ÔxØRa#½Ëk‚­øBH±Û/¶`óëù“+–&vhÆ½ÖÍ¿»š2ä±Ê}ÊCê]³‡Œ1Æ+ –F!ÅÅÅ²“z°¥Æ9`Q:„»¦‚¨¸+{íÚ5r‡¸¸8¬ñ¯;wæ>Ğ,õ¿÷ÃåK¯ÿô™xk›;G?ùŞ¨ùêØG›_:ƒ®(²céº•Óg+¶Èuééõ¢w>~BøÊn¿ÔcK?(ß¤÷â¤Š¥x£âøwÃº¶@| —ÏÊçß=n¹Ås¥Qi)µ.5µsúôi,*V±iÓ¦»vízè¡‡(;Ù|³1;ş¡¥¯Õœ:öáæÕ¿ÃŠvÊÚÓº¥šh°F]'Îj*Î ×xÆ–îxsqóó{aKcø )õœ™õõhÿÙ‡t¸'ìİºxÔÄe¯X…h,%û¥È²¥ˆõ“O>Á}Ô?üğá‡¦ìaÓÒ³âGf.ü÷ÆÕwıiC¶¢(–Zé—j-¼V5«iS&eV“±¥[JòÛ§æöıµT—
aRøªó?öhËæOxÄj½–F!A©K°¨7İtÓ<@ùÚ¦¥[îR÷óÕÙ¥m†ïiÅR¹* Èi«_ªAräkú!9«é‹%>f	¼±~E×á³tj&6xu®n~íÅGŸkñº¥QH-5!Ü³í—ÎgÛ.Y©më _*3v•jVÓÛÙk™%dğêZóu¾gdæšî# –F!6l¸!™sıúua£qãÆÂF\\Ü¤I“œå¬%Ü–"^T½¢TlÍ¶Ÿ¸ZœÕ´q&}?¼D°Ô:ğ~)Ğ ¸G!, b†° °4$€¥@ €¥!!t–/>G]ğ:`iH©¥eÓcbÀÒˆÄˆgzÀR·-¥V¡]-­.–»—ßL-ôWätC¾™1cÖH_g•×¿’†ÿÏ'JÔ#á0%İ€-î½íÙãî)QUU¸g˜	…¥z'­ZÊK–"›T]TäÏÉIÃ’å%âq¾!ş{.±2M.&…tLUYÊåyt¡¥˜¡é Î !Ç¥Ø%Mİ¨OÑ@]JúDB:#os(U&šâ´m(kM¥J0'Æ¥@8±aéúõë«ªªòòòš4i"¤üòË/.LJJ²2/Ôv¿”%)R×¥â¦°µğhÂ¶ñâ!øøTŒS4‚ql¥R½ªO#f˜^&5³³ÊËÑ©-4•6x–\'—OŞ4†KÄIó‰ß§‚Ù@°jéõë×,X°ÿşÁƒ¢
Š
)ùùùò4QÎëRÁ2ÊmNôK•~¥¨WâŠQSñpœ ¯EÏÄ£¹*w¼Ü»å6‘’Bf®®½¹ÍaÇæUäø¹òFú”M¢5 a£.­««[´h‘ å’%K–.]JJË:ó~©i]ŠÈˆDŞm¿(»±ªtzeMEíºiˆLˆÁ,NtDwÚÉ@°×/•ëÏøøø«W¯š*Š\î—Õ­œÈ§-œ¼)OøÂHùB>Å(ƒ¬¼³ÊÕªS
åKW±=ÆK6tM%qò¼TóxE?Æ«="~¥f§^_QQBÿ‘nÓdY÷£)ê±'¤4ºıê3’İZ–nãäIµ¤¤dÊ”)qèô8œÕ@¶0•Ÿr÷Kª‘ıOœ¶"±BİÖ>á!—ªz‘ºªb‚vôZ¼@(€¹G">Í€ x˜ÇËÃO€ğïÄíWx´	x° ¼X
 ^, ¯–€×‰KYCÄa„ n1–"^T“1xĞ
 nI–"–K©Á¬@ÎãçÚ ÚÑQ¶
fœ³‹ ÂI„YŠÔf²-Õs°‚ƒ9}¡™hp˜‡ı„ÈRAå4·ÔŞM–^$–äDã§¥º”œ„¯Š±@T¯zÃF	Ù í£>©'î#êk¨Dü´¼äÂ”Ü\îˆTJÄ4."Ìš5ü¯ÔpšĞlA. à]\·ÔqS„ªØ¤_ªæ@ÄXĞ¿zF{NÜA3Ÿº'™(µ³•¾"ñ¥N¾G¡³'¸ ¼K(êRgA4P«M“º©Âêb,¤:ËQ(–ªeÂ8¯r¸q;Ür8·
 x—õKy Z0}Œ%EŞ‹ñN9ğŒy
ª¥ŒpÈ½ Ş%tc¼y°ùP”ÙTÅX c°(mB}Ó—hë‚ØNAË–„ƒğ»W À»„ôIŒ³ ö¡sc1ÄÏ©YR_­¥‰+ˆ¯\SNR!Ã8Poäaë–"v8ˆê"·
 xO?/…©E €<n)  È³–B-
 2µ  ° ¼N”XúÉ…p— ğ6ıÛ…» –°4ü€¥€1`iøKcÀÒğ$K}ùí·?ÿÊ°pÿS*æÅ<…Ê?^áàüóºì«˜ŠŠ¦ÙtŞèl3ƒ“NØ=sÀTñÕ»¿;¸ÔNÏ–†ÒÒíÍ_.ÿø<õal„XŠïÔì£İPe—UT‘,µw ³£h%r4S¸Â'‹JçL¢k–ºˆÅ ²¥XÑúú2ÓlcbÒi¢F†¥§×[ŒŠ—¡üßuYvgâ†ÕR\‘®LŞ¶=çÎP^/°Ô-¬y,µ¨¨øk)¢Ê–ò7å²”‚Å\Û¬÷2?/CuÉ
ş—ÛoBIı‚ä+oshÚòz
nÎ!Ü.}ÏxšĞ:¥f‹t9uNîg\‚¾YˆwÎ@«ø&k6Z&Şñ|Î%“wMå’rf'JE•Ê¯-@…ªä(¿ı˜-ˆü(¨”S*9ó7ÊWxLµ&QûcåkˆzÜÛm¶­lxâkìb\7°ÔlypÁÒ1[µ¸~âşÉñ†o<ÑdYª»Õßj³åoµ]ãÈCˆœwÏœ^=O{O‹rJºŠ³e`!WM)=7V¢ÆR}¨%§ÿX¤èAœTûIDµTV«~¬_¹†Ä5Ç8ŞK#ÿ8Ú»n`©[XòàJ]ª¹)¹á–\¤È¬K•–¡2R’:‡u¯#¢«&@TPÓT£DBsW(Şï_¨ÔÒÒyu745‘] G%§”İNæc7,jWıEê¤‘?{ŒûÛäğº¥.b1ÈC(,å¶y1ï5nñ­Aá6’+=ë–ê´QJ(5>E”V"Ù<1[SB}¢•Ø(¹=Kå?1OÓıXíWwÂ]7°Ôe¬yöè‘Ñ­&ÕfHºï…š§R[çÈ#%”Ö&™-µå¦o6óhG_H÷¤C”›••hÖâµZrM‹W“?åÒ¡İE%]sä¿üIıº«>JĞFÃ·ú9ºn`i0òì'1´[í¸îAŸÜ,œ–5áõJæÌÀ¬	âSÖ¬ÔºQUË×WkTw¡ÔèEÒˆË^¤È¡&Òºšdô%—Æ“˜£GBÃ!cKÉ¶€ü»´?©â“$_'×¥^ ÁÏ=¢¶-ƒôø$* KÃX
––†°,5,?ŞRÀ°4ü€¥€1`)  .–€×KÍÑ¿”î°ÔìµÀEÀR«®kLY±ØÊj6A/¸µ%a\, (`©%4kk¿®V-”ZäÏÉñĞò½–ÂšN‘AÔZj1ÈƒH3é–zúnK#è´ÔzS¬­X£_q”\›P^x<e¡5kPjêŞr`qFbQÆÂ”Ü\®ı,¯j(ç–Zˆ¿Û¤_U‘Ï9…;í¼ÂşêV9’?±WU”›ïŒR!!
-µäÁ;‹J‰·¶ê¶–Vvl¿B°d2±v±n¡n^%Ù/q­`e‹?*ÔZ*ÿ —µVª•ŠåµŒõ¥BDZŠìy0ÀÉºo¼C)Ä
Æ"šÊJÑT4©›±9¨hX*E3\¡¸Úğ¼Je*T‡ŒsÉ}lÊíäĞ–"ËAX8^šQHšwŒ¼×y´+”cïŠQ†d_-eœWÑ¯ZÊ,¢ÖRd-ÈÛŠúŠŠrø»Vn#úu=UõÍÍ™r4¡ñ‚V[¡Œ/yã¼rËWÕ5mñ
Æ‚¥á$š-E‚<èqT‹úÔ#1¼wdãSÛâEDãX5ˆÄ0G9kôHå?ı¼ò TVªL.&Æ“˜£Gò8XN¢ÜR»DÀä”6-å€¥
 (ı™å€¥¶iƒ, ¯–€×KÀë€¥ àuÀR ğ:`) x°48¿¹jö–xĞo…:ÀR:Ö_—‚!•Ñ¾JÒñb¹ª™)h#ÔÌÔk(€¥>|éÒ¥»ï¾»Q£F¦;ó3–Œ%>ê-d¾XÚP Kµ`—ŞÿısçÎİ~ûí¦¢ZT”HT‹Ê””:»ŒÂPÆ¨ç÷³,”OŞ4†KÇ‰Üëtü.úº€)0ÃÉ;€¥nÜ¸ñÁX5–*/’Ğ,õ+hû0,Èï{K›êì€€g Ké]Tz‹×V]Š4¯–2_ş6{u[•!; àÀR&uuu¥¥¥µµµ½{÷îÙ³'k·ÀFXš2ßçš¨|ó4(–” <XJÇz]*àüI÷‹Cã%´Ó½«&5“ıì¯q€UX£€€7 K)ØU4PÈ÷ÒÈèÂğPVVÖšJ±_ªŸODZH³`ÍZ¼^,ÕbkŒ B XJÁÖóR p°”ãå*  è€¥ àuÀR ğ:`) x° ¼Xj~Ôp—hX€¥6&‚¥@HK­"D¾gÆ¿÷i'ÙCy‘%è·6éÏÅ –ZB–“n)9ÙİF°…Ğ``)ÌÚ¢ÖRı´ÇH3é–zúnK#è´tıúõUUUäš¥ÂZ¦III¶²²¶Äm%f”šº7e¡fIÄÄäÊˆ…)¹¹Â:ˆÚ 
¬•• ´ó&û‰u‘<±Œö@]QöA_* $D¡¥×¯__°`¹¸0¹Üp~~~ãÆ-feg6ñÖVİÖ¬0>%ê‚î]PâM6UPãU†å¿Ôó²Ö·²Ê0öA[* DD¡¥ˆ{Ñ¢E‚–K–,Yºti(VGD@Àã0²¦¢IİŒÍAdàÛ:õ›húó*•©gÅäÕp³ÊP–"©‰‹åŒ¿zõj(å’¸@`Fa„7¹‹Q†d_-eœWÑO¶–FQk)"Du]Q_QQB×ÊmD¿IÎ”£)¯|°Ú
e´xUAèç•[¾ªv¬i‹×8ì
¢ÙRÄ‹ZRR2eÊ”ØØX‹‡8ªE}ê‘Ş;“0šhÙÆ–*g`©ü§ŸW€ÊÊB•ÉÅÄxsôÈ4ì
¢ÜR»8nè†@âl‘	XªŠÒŸù QXh[±P‘6(ÀR ğ:`) x° ¼X
 ^, ¯–ºED<×"°Ô-¬…_!&-Ù}ÆÑ`)ÀcÛëšÒ—-UĞÌÊa0ƒ/Ú K)ØZ'Æ@fyñR¶¨nÌK£°T‹İ5×Xk«÷a‰ª®Ke¹´ñ¨±|ÚiôÜŞåhŒzŞ?3dD
ÌaŠÀR
¶Ö/µb)bŠJ{™†çA÷æñJšùA{¸qÈ B KéX58u)RE!ÔÆ[˜wŒö8y,ùÊ©åĞ@„ –2©««+--­­­íİ»wÏ=Y»«_*P ¼›V]dd)½Œ¯­…n K#°”­F/Ûc¼êh	ºxì¯´—ä²ßRè°4r K)®(²ñ¼T]
O@õoªQb5ıRuX}"CšYÈ  KµØãeáÖÜ#ˆÕĞğ K)Øz^b VC,¥øÜ£ ±4`) x° ¼X
 ^, ¯1–²ÆràMk ê‰Kí	$ÄC ‘d)ÒiÉ°Ôq rşºı0.O°6­¢7D)f)R›É¶ÔY s\C3-Öà,0/7ú!-ı¬ÄQÈºB29    IEND®B`‚                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     CELLS: 'resizeCells',

	/**
	 * Variable: CELLS_RESIZED
	 *
	 * Specifies the event name for cellsResized.
	 */
	CELLS_RESIZED: 'cellsResized',

	/**
	 * Variable: TOGGLE_CELLS
	 *
	 * Specifies the event name for toggleCells.
	 */
	TOGGLE_CELLS: 'toggleCells',

	/**
	 * Variable: CELLS_TOGGLED
	 *
	 * Specifies the event name for cellsToggled.
	 */
	CELLS_TOGGLED: 'cellsToggled',

	/**
	 * Variable: ORDER_CELLS
	 *
	 * Specifies the event name for orderCells.
	 */
	ORDER_CELLS: 'orderCells',

	/**
	 * Vari‰PNG

   IHDR         àw=ø  ½IDATxœ}•Ol\WÅ÷ı™?ı<3!vâÒ¤4¡‹š‚DUA«Š`A$B  ŠØTˆ VºˆhR)Bª„„Ô­PmT!%()UêÔ.´¶cR{<cgÆã±ÇyóŞ»÷~,Æ™ÆIÄ'Í»WçÜs¾ïŞ§¸©~üä÷Õ3ÏıN¬µYàñöúêçÂÚâ½6QÊ Š;”HÖMóïÒúùÇ¾ø¥go¬y7olÖ«ja~ö‰Úä«OÅï¾:šjş—¬¯p w¢Ş)å##„vï,Ó7/õ¬µéÎZùÅµçNl_#ï9¨¬Ó#@İIÁdXímÆÔªµ];< cŒê¬•ÿĞøÓÙÓ£jå€hƒXù@àVn54©$’NŒ5›››·X£öÊ¹¯í7u F#`wˆo=|z•İâLb0‘ÁjÁ»[ \.»õé‹OåÖ¦Àw1Zc{ä·+PÙaTf…ì¸QˆrÅmcà
…‰Õ×.	l” Zàğà í&Òi‚P6AùHe{ÄVPNO wÊ½­KFO˜âUlFƒDƒ9|ŠÕJ‘àØ—ÌÀ$ˆ@Ç=˜eº=aCáF™nÌW³£ã¿9ó©'tm~}f©2é5+‹c~´u<°‚u0*ÅÔ•qüÈ	‚á}úTggáŸ8­2¢\láæ“xÏ„INÄQx¢\~î{^·³í8ZcA¬ ®‡7”çñ<‹Û*ãıåI¶Æ¿Næ¾Ï÷‚˜ıî/€‰o´…°üÙ™èSg!ÿ¬ã±ÚXç?õhÖ+ÊjÕ	’h¬—Eep}h­"[u|p=Ti.ı
ÓÙÂD&Šhí9Äàw^$~ğ[ğÚÓØ¸òS,”–enC_s@”Õ	6ÑÀĞ(¸>Êq`c›$H°˜KÏ£Ãİí¢»]’n„sò»ø¾ÏĞø#ØCŸ&~ó °X.7'›UdÇM4jø ÊqA9Øõ2qãæîB6VHJï¡ÃnÛcÇÉ}°•Røã_ ù;XM­Z¹¶ÑÜ–‹¦ÇA,¨Â]pC`­È–öÉ9l¹„Ãİ#84‚òüŞåŞ{¨±ŠßÙf}­>KoØÁ&«5VÀë;0µì”R¨`´Möa.½@í—_¡³0ˆ`×WĞ©k•2‰Ös;O… FcµƒÊ¢=Ñ6z£†Œ|¼A0‚| 3ÿÆî›4…ÆÓ’şÌdm9vŠÚJ‘ØÒs V÷DíÉƒã`›Ëèn\çõß¢KSœş9‰uÑİh7:Ú§şş{?ûMj+K´­Ú‰¨ï@£†öA*‹r\L½ˆ‰"”I°WÏV®“¾{œ¡³ç‰ƒ1L÷¡£˜CìûÑË¤Òª•å¨Ş• O’®&I •;ˆr½^şÕLƒ@Üj!Õ9œ?ÿï£3öë)6Ş¾HT|ñRøÇNpìcŸDâ»İ¤RYY¼:³xZ’ĞĞµ08| Tï9Ô«×ÑqŒkÑÆ&¦Õ *]¦ë’·ò‡?{üÑ~+D,X‹Õ	ÕJyîÆw§Şh²Üö)¶<¬—béòy¶U’åyBëãµ›´7Z˜V“N­NÒ¨ıõ­ÉW­*bbM³^¡†³ıQşÇôÌË¥¾=çvjùûı³é™):ú•÷ÑC#èåyÚÕ"a£ÙlÑ*•Ğ£s„Ï<BôğO>|?@’ˆ•âu¶bÛwĞÿ=¼ş‹Çö¿yñÊOk’Íw¼¡\Çª|Êóóit~ ›‚ŒŸñuèæöÄİ\%øğQüõ%‚{î'Ó\$sïq2ğV¥Íï_zéä¥w–/ïø•É¦£‡>”\	\LŞÉùÊ{Ê#’÷\•3¢òÊOç]%¹b+9óöÜJàfŸdJ]l    IEND®B`‚          /
	SPLIT_EDGE: 'splitEdge',

	/**
	 * Variable: FLIP_EDGE
	 *
	 * Specifies the event name for flipEdge.
	 */
	FLIP_EDGE: 'flipEdge',

	/**
	 * Variable: START_EDITING
	 *
	 * Specifies the event name for startEditing.
	 */
	START_EDITING: 'startEditing',

	/**
	 * Variable: EDITING_STARTED
	 *
	 * Specifies the event name for editingStarted.
	 */
	EDITING_STARTED: 'editingStarted',

	/**
	 * Variable: EDITING_STOPPED
	 *
	 * Specifies the event name for editingStopped.
	 */
	EDITING_STOPPED: 'editingStopped',

	/**
	 * Variable: ADD_OVERLAY
	 *
	 * Specifies the event name for addOverlay.
	 */
	ADD_OVERLAY: 'addOverlay',

	/**
	 * Variable: REMOVE_OVERLAY
	 *
	 * Specifies the event name for removeOverlay.
	 */
	REMOVE_OVERLAY: 'removeOverlay',

	/**
	 * Variable: UPDATE_CELL_SIZE
	 *
	 * Specifies the event name for updateCellSize.
	 */
	UPDATE_CELL_SIZE: 'updateCellSize',

	/**
	 * Variable: ESCAPE
	 *
	 * Specifies the event name for escape.
	 */
	ESCAPE: 'escape',

	/**
	 * Variable: DOUBLE_CLICK
	 *
	 * Specifies the event name for doubleClick.
	 */
	DOUBLE_CLICK: 'doubleClick',

	/**
	 * Variable: START
	 *
	 * Specifies the event name for start.
	 */
	START: 'start',

	/**
	 * Variable: RESET
	 *
	 * Specifies the event name for reset.
	 */
	RESET: 'reset'

};
