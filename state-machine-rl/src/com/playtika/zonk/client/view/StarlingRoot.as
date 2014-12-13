/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.view {
    import com.playtika.zonk.view.StarlingView;
    import com.playtika.zonk.view.theme.ZonkTheme;

    import starling.display.Sprite;
    import starling.events.Event;


    public class StarlingRoot extends Sprite {

        private var _theme:ZonkTheme;

        private var _view:StarlingView;

        public function StarlingRoot() {
            super();
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        }

        private function onAddedToStage(event:Event):void {
            _theme = new ZonkTheme(true);

            _view = new StarlingView();
            addChild(_view);
        }
    }
}
