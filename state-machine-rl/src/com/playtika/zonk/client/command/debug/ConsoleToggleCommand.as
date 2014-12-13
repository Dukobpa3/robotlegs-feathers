/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.command.debug {
    import feathers.controls.Alert;
    import feathers.data.ListCollection;

    import robotlegs.bender.bundles.mvcs.Command;

    import starling.events.Event;


    public class ConsoleToggleCommand extends Command {

        private var alert:Alert;

        override public function execute():void {
            alert = Alert.show("Hi, its working", "msg from command", new ListCollection(
                    [
                        {label: "OK", triggered: okButton_triggeredHandler}
                    ]));
        }

        private function okButton_triggeredHandler(event:Event):void {
            //alert.
        }
    }
}
