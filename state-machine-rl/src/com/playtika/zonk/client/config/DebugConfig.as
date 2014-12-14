/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.config {
    import com.junkbyte.console.Cc;
    import com.playtika.zonk.client.command.debug.ConsoleToggleCommand;
    import com.playtika.zonk.client.command.debug.events.DebugCommandEvent;
    import com.playtika.zonk.client.mediator.debug.DebugViewMediator;
    import com.playtika.zonk.client.service.layout.LayoutService;
    import com.playtika.zonk.client.view.debug.DebugView;

    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.extensions.ccLogger.CcLoggerExtension;
    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.IContext;
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

        [Inject]
        public var context:IContext;

        public function configure():void {

            Cc.config.commandLineAllowed = true; // Enables full commandLine features
            Cc.config.tracing = true; // also send traces to flash's normal trace()
            Cc.config.maxLines = 2000; // change maximum log lines to 2000, default is 1000

            Cc.startOnStage(contextView.view, '`'); // finally start with these config

            Cc.width = contextView.view.stage.stageWidth;
            Cc.height = contextView.view.stage.stageHeight;

            context.install(CcLoggerExtension);

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
