/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.service.layout {
    public class LayoutConfig {

        private var _top:Number;
        private var _left:Number;
        private var _bottom:Number;
        private var _right:Number;
        private var _parent:Object;


        public function LayoutConfig(position:Object) {
            _top = position["top"];
            _left = position["left"];
            _bottom = position["bottom"];
            _right = position["right"];

            _parent = position["parent"];
        }

        public function get top():Number { return _top; }
        public function get left():Number { return _left; }
        public function get bottom():Number { return _bottom; }
        public function get right():Number { return _right; }

        public function get parent():Object { return _parent; }
    }
}
