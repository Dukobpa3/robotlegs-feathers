/**
 * Created by Dukobpa3 on 14.12.2014.
 */
package com.playtika.zonk.client.constants {
    import flash.geom.Point;
    import flash.geom.Rectangle;


    public class ApplicationSize {
        public static var CURRENT_RATIO:Number = 1;
        public static var CURRENT_STAGE:Rectangle = new Rectangle();

        public static const PROPORTIONS:Point = new Point(16, 10);

        public static const SIZE_X1:Rectangle = new Rectangle(0, 0, 800, 500);
        public static const SIZE_X2:Rectangle = new Rectangle(0, 0, 1600, 1000);
        public static const SIZE_X3:Rectangle = new Rectangle(0, 0, 3200, 2000);

        public static const SIZE:Object = {
            x1:SIZE_X1,
            x2:SIZE_X2,
            x3:SIZE_X3
        };

        public static function getCurentSize():Rectangle {
            return SIZE['x' + CURRENT_RATIO];
        }
    }
}
