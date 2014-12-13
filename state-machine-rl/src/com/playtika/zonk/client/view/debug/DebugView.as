package com.playtika.zonk.client.view.debug {
    import com.playtika.zonk.client.service.layout.ILayouted;
    import com.playtika.zonk.client.service.layout.LayoutConfig;
    import com.playtika.zonk.client.service.layout.LayoutService;
    import com.playtika.zonk.client.view.debug.events.DebugViewEvent;

    import fl.controls.Button;

    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.MouseEvent;


    public class DebugView extends Sprite implements ILayouted {

        [Inject]
        public var layout:LayoutService;

        private var _btn:Button;

        public function DebugView() {
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        }

        private function onAddedToStage(event:Event):void {
            _btn = new Button();
            _btn.label = "click";
            _btn.addEventListener(MouseEvent.CLICK, onBtnClick);
            addChild(_btn);

            layout.setLayout(this);
        }

        private function onBtnClick(event:MouseEvent):void {
            dispatchEvent(new DebugViewEvent(DebugViewEvent.CONSOLE_TOGGLE_CLICK))
        }

        public function get layoutConfig():LayoutConfig {
            return new LayoutConfig({bottom:5, right:5});
        }
    }
}