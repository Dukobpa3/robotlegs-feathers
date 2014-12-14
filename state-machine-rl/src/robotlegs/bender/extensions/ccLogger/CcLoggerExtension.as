/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package robotlegs.bender.extensions.ccLogger {
    import robotlegs.bender.extensions.ccLogger.impl.CcLogger;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IExtension;


    public class CcLoggerExtension implements IExtension {
        public function CcLoggerExtension() {
        }

        public function extend(context:IContext):void {
            context.addLogTarget(new CcLogger(context));
        }
    }
}
