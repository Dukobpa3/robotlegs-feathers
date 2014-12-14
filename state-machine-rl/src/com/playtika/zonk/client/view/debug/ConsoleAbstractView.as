/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package com.playtika.zonk.client.view.debug {
    import com.junkbyte.console.Cc;
    import com.playtika.zonk.client.service.layout.ILayouted;
    import com.playtika.zonk.client.service.layout.LayoutConfig;


    public class ConsoleAbstractView implements ILayouted {

        public function set x(value:Number):void {
            Cc.x = value;
        }

        public function set y(value:Number):void {
            Cc.y = value;
        }

        public function get width():Number {
            return Cc.width;
        }

        public function set width(value:Number):void {
            Cc.width = value;
        }

        public function get height():Number {
            return Cc.height;
        }

        public function set height(value:Number):void {
            Cc.height = value;
        }

        public function get layoutConfig():LayoutConfig {
            return new LayoutConfig({top:0});
        }
    }
}
