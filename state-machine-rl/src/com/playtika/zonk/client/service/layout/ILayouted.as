/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.service.layout {
    public interface ILayouted {

        function set x(value:Number):void;
        function set y(value:Number):void;

        function get width():Number;
        function set width(value:Number):void;

        function get height():Number;
        function set height(value:Number):void;

        function get layoutConfig():LayoutConfig;
    }
}
