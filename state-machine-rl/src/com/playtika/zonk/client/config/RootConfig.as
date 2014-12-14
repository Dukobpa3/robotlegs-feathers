/**
 * Created by Dukobpa3 on 13.12.2014.
 */
package com.playtika.zonk.client.config {
    import com.playtika.zonk.client.service.layout.LayoutService;

    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.IInjector;


    public class RootConfig implements IConfig {

        [Inject]
        public var injector:IInjector;


        public function configure():void {

        }
    }
}
