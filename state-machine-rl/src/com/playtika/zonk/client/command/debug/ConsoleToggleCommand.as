/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.command.debug {
    import com.junkbyte.console.Cc;

    import robotlegs.bender.bundles.mvcs.Command;


    public class ConsoleToggleCommand extends Command {

        override public function execute():void {
            Cc.visible = !Cc.visible;
        }
    }
}
