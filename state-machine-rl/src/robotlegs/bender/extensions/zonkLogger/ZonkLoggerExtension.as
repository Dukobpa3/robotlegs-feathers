/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package robotlegs.bender.extensions.zonkLogger {
    import robotlegs.bender.extensions.zonkLogger.impl.ZonkLogger;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IExtension;


    public class ZonkLoggerExtension implements IExtension {
        public function ZonkLoggerExtension() {
        }

        public function extend(context:IContext):void {
            context.addLogTarget(new ZonkLogger(context));
        }
    }
}
