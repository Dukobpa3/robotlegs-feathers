package com.playtika.zonk.client {
    import com.playtika.zonk.client.config.DebugConfig;
    import com.playtika.zonk.client.config.RootConfig;
    import com.playtika.zonk.client.config.StarlingConfig;
    import com.playtika.zonk.client.service.layout.LayoutService;
    import com.playtika.zonk.client.view.StarlingRoot;

    import flash.display.MovieClip;
    import flash.display.Stage;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.geom.Rectangle;

    import robotlegs.bender.bundles.mvcs.MVCSBundle;
    import robotlegs.bender.bundles.starling.StarlingBundle;
    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.impl.Context;

    import starling.core.Starling;
    import starling.events.ResizeEvent;


    [SWF(frameRate=60, backgroundColor=0)]
    public class DocumentClass extends MovieClip {

        private var _context:IContext;
        private var _starling:Starling;

        public function DocumentClass() {
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        }

        private function onAddedToStage(event:Event):void {
            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;

            _starling = new Starling(StarlingRoot, stage);

            configureContext();
            configureStarling();

            stage.addEventListener(ResizeEvent.RESIZE, onResize);
        }

        private function onResize(event:Event):void {
            // set rectangle dimensions for viewPort:
            var viewPortRectangle:Rectangle = new Rectangle();
            viewPortRectangle.width = stage.stageWidth;
            viewPortRectangle.height = stage.stageHeight;

            // resize the viewport:
            Starling.current.viewPort = viewPortRectangle;

            // assign the new stage width and height:
            _starling.stage.stageWidth = stage.stageWidth;
            _starling.stage.stageHeight = stage.stageHeight;
        }

        private function configureContext():void {
            _context = new Context();
            _context.injector.map(Stage).toValue(stage);
            _context.injector.map(LayoutService).asSingleton();

            _context.install(MVCSBundle, StarlingBundle);
            _context.configure(new ContextView(this), _starling);

            _context.configure(DebugConfig);

            _context.configure(RootConfig);
            _context.configure(StarlingConfig);
        }

        private function configureStarling():void {
            _starling.showStats = true;
            _starling.antiAliasing = 1;
            _starling.start();
        }
    }
}