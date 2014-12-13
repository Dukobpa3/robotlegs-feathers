/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.view.events {
    import starling.events.Event;


    public class StarlingViewEvent extends Event {

        public static const STARLING_VIEW_BUTTON_CLICKED:String = "StarlingViewEvent.STARLING_VIEW_BUTTON_CLICKED";

        public function StarlingViewEvent(eventType:String) {
            super(eventType, true);
        }
    }
}
