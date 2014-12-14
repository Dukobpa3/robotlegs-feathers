/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package robotlegs.bender.extensions.zonkLogger {

    import flash.display.Sprite;

    import flexunit.framework.Assert;

    import org.hamcrest.assertThat;

    import robotlegs.bender.extensions.zonkLogger.impl.ZonkLogger;


    public class ZonkLoggerTest {

        private var _spr:Sprite = new Sprite();

        private var strOne:String = "some {0} some2";
        private var paramsSimple:Array = [_spr];

        private var strTwoSame:String = "some {0} some2 {0}";

        private var logger:ZonkLogger = new ZonkLogger(null);

        [Test]
        public function testParseMessageOne():void {
            assertThat(["some ", _spr, " some2"], logger.parseMessage(strOne, paramsSimple));
        }

        [Test]
        public function testParseMessageTwoSame():void {
            var res:Array = logger.parseMessage(strTwoSame, paramsSimple)
            assertThat(["some ", _spr, " some2", _spr], res);
        }
    }
}
