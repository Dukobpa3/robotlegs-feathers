/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package robotlegs.bender.extensions.zonkLogger.impl {
    import com.junkbyte.console.Cc;
    import com.junkbyte.console.Console;

    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.ILogTarget;
    import robotlegs.bender.framework.api.LogLevel;


    public class ZonkLogger implements ILogTarget {

        private var PRIORITY:Object;

        private var _context:IContext;

        public function ZonkLogger(context:IContext) {
            _context = context;

            PRIORITY = {};
            PRIORITY[LogLevel.DEBUG] = Console.DEBUG;
            PRIORITY[LogLevel.ERROR] = Console.ERROR;
            PRIORITY[LogLevel.FATAL] = Console.FATAL;
            PRIORITY[LogLevel.INFO] = Console.INFO;
            PRIORITY[LogLevel.WARN] = Console.WARN;
        }

        public function log(source:Object, level:uint, timestamp:int, message:String, params:Array = null):void {
            Cc.add([timestamp, LogLevel.NAME[level], _context, source, parseMessage(message, params)], PRIORITY[level]);
        }

        public function parseMessage(message:String, params:Array):Array
        {
            var result:Array = [];
            if (params)
            {
                const numParams:int = params.length;
                for (var i:int = 0; i < numParams; ++i)
                {
                    var splitted:Array = message.split("{" + i + "}");
                    result.concat([splitted[0], params[i], splitted[1]]);
                }
            }
            //.join(params[i])
            return result;
        }
    }
}
