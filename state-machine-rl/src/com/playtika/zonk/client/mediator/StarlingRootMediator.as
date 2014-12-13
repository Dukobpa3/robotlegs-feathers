/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.mediator {
    import com.playtika.zonk.client.command.debug.events.DebugCommandEvent;
    import com.playtika.zonk.client.view.StarlingRoot;
    import com.playtika.zonk.client.view.events.StarlingViewEvent;

    import robotlegs.extensions.starlingViewMap.impl.StarlingMediator;


    public class StarlingRootMediator extends StarlingMediator {

        [Inject]
        public var _view:StarlingRoot;

        public function StarlingRootMediator() {
            super();
        }

        override public function initialize():void {
            _view.addEventListener(StarlingViewEvent.STARLING_VIEW_BUTTON_CLICKED, onButtonTriggered);
        }

        private function onButtonTriggered(event:StarlingViewEvent):void {
            dispatch(new DebugCommandEvent(DebugCommandEvent.CONSOLE_TOGGLE));
        }

        private function get view():StarlingRoot {
            return _view
        }
    }
}
