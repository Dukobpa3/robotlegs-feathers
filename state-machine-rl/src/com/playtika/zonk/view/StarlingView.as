/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.view {
    import feathers.controls.Button;
    import feathers.controls.Panel;

    import starling.events.Event;


    public class StarlingView extends Panel {

        private var _button:Button;

        public function StarlingView() {
            super();
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage)
        }

        private function onAddedToStage(event:Event):void {
            _button = new Button();
            addChild(_button);

            _button.label = "Click";
        }
    }
}
