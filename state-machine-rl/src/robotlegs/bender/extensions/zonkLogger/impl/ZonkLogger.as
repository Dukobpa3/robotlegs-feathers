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

        private var _logFunc:Object;

        private var _context:IContext;

        public function ZonkLogger(context:IContext) {
            _context = context;

            _logFunc = {};
            /*_logFunc[LogLevel.DEBUG] = Console.DEBUG;
             _logFunc[LogLevel.ERROR] = Console.ERROR;
             _logFunc[LogLevel.FATAL] = Console.FATAL;
             _logFunc[LogLevel.INFO] = Console.INFO;
             _logFunc[LogLevel.WARN] = Console.WARN;*/

            _logFunc[LogLevel.DEBUG] = Cc.debug;
            _logFunc[LogLevel.ERROR] = Cc.error;
            _logFunc[LogLevel.FATAL] = Cc.fatal;
            _logFunc[LogLevel.INFO] = Cc.info;
            _logFunc[LogLevel.WARN] = Cc.warn;
        }

        public function log(source:Object, level:uint, timestamp:int, message:String, params:Array = null):void {
            //Cc.add([timestamp, LogLevel.NAME[level], _context, source, parseMessage(message, params)], _logFunc[level]);

            var chunks:Array = [timestamp, /*LogLevel.NAME[level],*/ _context, source, "=>"];
            chunks = chunks.concat(parseMessage(message, params));

            _logFunc[level].apply(source, chunks);
        }

        public function parseMessage(message:String, params:Array):Array {
            var result:Array = [];
            var i:int;
            var j:int;

            if (params) {

                var temp:Array = message.split('{');

                for (i = 0; i < temp.length; i++) {
                    var str:String = temp[i];
                    result = result.concat(str.split('}'));
                }

                trace(result);

                for (i = 0; i < params.length; i++) {
                    var param:* = params[i];
                    for (j = 0; j < result.length; j++) {
                        if (result[j] == "") {
                            result.splice(j, 1);
                            j--;
                        } else if (result[j] == i) {
                            result[j] = param;
                        }
                    }
                }

                /*const numParams:int = params.length;
                 for (var i:int = 0; i < numParams; ++i) {
                 message = message.split("{" + i + "}").join(params[i]);
                 }*/
            }
            return result;
        }
    }
}
