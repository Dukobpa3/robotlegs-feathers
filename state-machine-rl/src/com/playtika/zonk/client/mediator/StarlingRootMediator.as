/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.mediator {
    import com.playtika.zonk.client.command.debug.events.DebugCommandEvent;
    import com.playtika.zonk.client.view.StarlingRoot;
    import com.playtika.zonk.client.view.events.StarlingViewEvent;

    import robotlegs.bender.bundles.starling.StarlingMediator;

    public class StarlingRootMediator extends StarlingMediator {

        public function StarlingRootMediator() {
            super();
        }

        override public function initialize():void {
            addViewListener(StarlingViewEvent.STARLING_VIEW_BUTTON_CLICKED, onButtonTriggered, StarlingViewEvent);
        }

        private function onButtonTriggered(event:StarlingViewEvent):void {
            dispatch(new DebugCommandEvent(DebugCommandEvent.CONSOLE_TOGGLE));
        }

        private function get view():StarlingRoot {
            return StarlingRoot(viewComponent);
        }
    }
}
