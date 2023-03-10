?PNG

   IHDR           szz?   ,tEXtCreation Time Mon 25 Jan 2010 12:14:55 -0000h??~   tIME?y?   	pHYs  
?  
?B?4?   gAMA  ???a  ?IDATx??V]HQ??B냽???b?Ql? ?%[$DEPA ?P=.?b	??CKk???T(n?=DDB?Q?????J????|wϵi???F?=??:?|?s??Y?(?P5???[Ⲿ?p?0G?OXK#?(???@xG?M('?#??s??Y?w?0?? ??I?fn??<Rǘh??#_'e}STz?^p??k?X???$!G??;?,??o˳? ?? )~?{?????X?h?J?yn̝?xB>|???????????'	mڸGq????.{Tڙ'x?f??????e??B?D<aD?<??]?a??9?J>;uV???'}Un?_??׻	U?uU1\?Mh??`?'?[Fx???P?F???kE??C??TiB??GZF???rq+??6lO<?8Mh'\&??0??v֒І??	? >7֭?ք?ͫq??#??Au??Hs[??QB?-w*/xNO}*@Y????U?j???b??zІ??ڨ=.gx????',F??~?n??N3Q???SvJ?W?Į?&1?;???QBa??7ư+???Nl&dH[?
????8?_?[????dc=B?h?[J?@?ڦ????E???&??????Ђ&??boU?I?!??????X??akM's?!>??Ǘ??q4ء???jxm?^??S?+7?J?q0?=i??2???&N?#?:pj?'??????e?0f?*Ƚ???\W@8???敪T??~ ???tK?m?    IEND?B`?                                                                                                                 */
mxEventSource.prototype.eventsEnabled = true;

/**
 * Variable: eventSource
 *
 * Optional source for events. Default is null.
 */
mxEventSource.prototype.eventSource = null;

/**
 * Function: isEventsEnabled
 * 
 * Returns <eventsEnabled>.
 */
mxEventSource.prototype.isEventsEnabled = function()
{
	return this.eventsEnabled;
};

/**
 * Function: setEventsEnabled
 * 
 * Sets <eventsEnabled>.
 */
mxEventSource.prototype.setEventsEnabled = function(value)
{
	this.eventsEnabled = value;
};

/**
 * Function: getEventSource
 * 
 * Returns <eventSource>.
 */
mxEventSource.prototype.getEventSource = function()
{
	return this.eventSource;
};

/**
 * Function: setEventSource
 * 
 * Sets <eventSource>.
 */
mxEventSource.prototype.setEventSource = function(value)
{
	this.eventSource = value;
};

/**
 * Function: addListener
 *
 * Binds the specified function to the given event name. If no event name
 * is given, then the listener is registered for all events.
 * 
 * The parameters of the listener are the sender and an <mxEventObject>.
 */
mxEventSource.prototype.addListener = function(name, funct)
{
	if (this.eventListeners == null)
	{
		this.eventListeners = [];
	}
	
	this.eventListeners.push(name);
	this.eventListeners.push(funct);
};

/**
 * Function: removeListener
 *
 * Removes all occurrences of the given listener from <eventListeners>.
 */
mxEventSource.prototype.removeListener = function(funct)
{
	if (this.eventListeners != null)
	{
		var i = 0;
		
		while (i < this.eventListeners.length)
		{
			if (this.eventListeners[i+1] == funct)
			{
				this.eventListeners.splice(i, 2);
			}
			else
			{
				i += 2;
			}
		}
	}
};

/**
 * Function: fireEvent
 *
 * Dispatches the given event to the listeners which are registered for
 * the event. The sender argument is optional. The current execution scope
 * ("this") is used for the listener invocation (see <mxUtils.bind>).
 *
 * Example:
 *
 * (code)
 * fireEvent(new mxEventObject("eventName", key1, val1, .., keyN, valN))
 * (end)
 * 
 * Parameters:
 *
 * evt - <mxEventObject> that represents the event.
 * sender - Optional sender to be passed to the listener. Default value is
 * the return value of <getEventSource>.
 */
mxEventSource.prototype.fireEvent = function(evt, sender)
{
	if (this.eventListeners != null && this.isEventsEnabled())
	{
		if (evt == null)
		{
			evt = new mxEventObject();
		}
		
		if (sender == null)
		{
			sender = this.getEventSource();
		}

		if (sender == null)
		{
			sender = this;
		}

		var args = [sender, evt];
		
		for (var i = 0; i < this.eventListeners.length; i += 2)
		{
			var listen = this.eventListeners[i];
			
			if (listen == null || listen == evt.getName())
			{
				this.eventListeners[i+1].apply(this, args);
			}
		}
	}
};
