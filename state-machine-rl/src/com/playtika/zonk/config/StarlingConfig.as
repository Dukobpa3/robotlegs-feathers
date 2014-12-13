/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.config {
    import com.playtika.zonk.StarlingRoot;

    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IInjector;

    import starling.core.Starling;


    public class StarlingConfig implements IConfig {
        [Inject]
        public var injector:IInjector;

        [Inject]
        public var mediatorMap:IMediatorMap;

        [Inject]
        public var commandMap:IEventCommandMap;

        [Inject]
        public var contextView:ContextView;

        [Inject]
        public var context:IContext;

        public function configure():void {


        }
    }
}
