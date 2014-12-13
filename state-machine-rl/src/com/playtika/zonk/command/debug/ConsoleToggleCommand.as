/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.command.debug {
    import robotlegs.bender.bundles.mvcs.Command;

    import spark.components.Alert;


    public class ConsoleToggleCommand extends Command {
        override public function execute():void {
            Alert.show("Hi, its working", "msg from command");
        }
    }
}
