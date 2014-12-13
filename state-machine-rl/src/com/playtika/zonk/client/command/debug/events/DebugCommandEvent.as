/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.command.debug.events {
    import flash.events.Event;


    public class DebugCommandEvent extends Event {

        public static const CONSOLE_TOGGLE:String = "DebugCommandEvent.CONSOLE_TOGGLE";

        public function DebugCommandEvent(eventType:String) {
            super(eventType);
        }

        override public function clone():Event {
            return new DebugCommandEvent(type);
        }

    }
}
