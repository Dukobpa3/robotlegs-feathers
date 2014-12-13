/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.config {
    import com.playtika.zonk.mediator.StarlingRootMediator;
    import com.playtika.zonk.view.StarlingRoot;

    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IInjector;


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

            mediatorMap.map(StarlingRoot).toMediator(StarlingRootMediator);
        }
    }
}
