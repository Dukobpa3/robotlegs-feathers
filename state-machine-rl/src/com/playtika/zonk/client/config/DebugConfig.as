/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.config {
    import com.playtika.zonk.client.command.debug.ConsoleToggleCommand;
    import com.playtika.zonk.client.command.debug.events.DebugCommandEvent;
    import com.playtika.zonk.client.mediator.debug.DebugViewMediator;
    import com.playtika.zonk.client.service.layout.LayoutService;
    import com.playtika.zonk.client.view.debug.DebugView;

    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.IInjector;


    public class DebugConfig implements IConfig {
        [Inject]
        public var injector:IInjector;

        [Inject]
        public var mediatorMap:IMediatorMap;

        [Inject]
        public var commandMap:IEventCommandMap;

        [Inject]
        public var contextView:ContextView;

        [Inject]
        public var layout:LayoutService;

        public function configure():void {
            mediatorMap
                    .map(DebugView)
                    .toMediator(DebugViewMediator);

            commandMap
                    .map(DebugCommandEvent.CONSOLE_TOGGLE, DebugCommandEvent)
                    .toCommand(ConsoleToggleCommand);


            var debugView:DebugView = new DebugView();
            injector.injectInto(debugView);
            contextView.view.addChild(debugView);
        }
    }
}
