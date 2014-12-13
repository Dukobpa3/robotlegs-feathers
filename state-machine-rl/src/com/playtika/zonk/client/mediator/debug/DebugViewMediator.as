/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.mediator.debug {
    import com.playtika.zonk.command.debug.events.DebugCommandEvent;
    import com.playtika.zonk.view.debug.DebugView;
    import com.playtika.zonk.view.debug.events.DebugViewEvent;

    import robotlegs.bender.bundles.mvcs.Mediator;


    public class DebugViewMediator extends Mediator {

        [Inject]
        private var view:DebugView;

        public function DebugViewMediator() {
            super();
        }

        override public function initialize():void  {
            addViewListener(DebugViewEvent.CONSOLE_TOGGLE_CLICK, onConsoleToggleClick, DebugViewEvent);
        }

        private function onConsoleToggleClick(event:DebugViewEvent):void {
            dispatch(new DebugCommandEvent(DebugCommandEvent.CONSOLE_TOGGLE));
        }
    }
}
