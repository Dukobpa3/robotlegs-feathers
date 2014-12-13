/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.service.layout {
    import flash.display.Stage;
    import flash.events.Event;

    import robotlegs.bender.extensions.localEventMap.api.IEventMap;


    public class LayoutService {

        [Inject]
        public var eventMap:IEventMap;

        [Inject]
        public var stage:Stage;

        private var _layouts:Vector.<ILayouted>;

        public function LayoutService() {
            _layouts = new <ILayouted>[];
        }

        public function setLayout(layoutConfig:ILayouted):void {
            if (_layouts.indexOf(layoutConfig) < 0) {
                _layouts.push(layoutConfig);
            }
            updatePositions();
            eventMap.mapListener(stage, Event.RESIZE, onStageResize);
        }

        private function onStageResize(event:Event):void {
            updatePositions();
        }

        private function updatePositions():void {
            for each (var object:ILayouted in _layouts) {
                var config:LayoutConfig = object.layoutConfig;

                if(config.parent != null){
                    object.x = config.parent.width - object.width - config.right;
                    object.y = config.parent.height - object.height - config.bottom;

                } else {
                    object.x = stage.stageWidth - object.width - config.right;
                    object.y = stage.stageHeight - object.height - config.bottom;
                }

            }
        }
    }
}
