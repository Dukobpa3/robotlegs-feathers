/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.view.debug.events {
    import flash.events.Event;


    public class DebugViewEvent extends Event {

        public static const CONSOLE_TOGGLE_CLICK:String = "DebugViewEvent.CONSOLE_TOGGLE_CLICK";

        public function DebugViewEvent(eventType:String) {
            super(eventType);
        }

        override public function clone():Event {
            return new DebugViewEvent(type);
        }
    }
}
