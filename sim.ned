import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.SensorNode;
import inet.physicallayer.wireless.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;
import inet.node.inet.WirelessHost;
import inet.node.inet.AdhocHost;

network sim
{
    @display("bgb=74.72,57.68;bgi=background/streetmap,s"; );
    submodules:
        sensor1: AdhocHost {
            @display("p=9.5,3.5;i=misc/sensor");
        }
        sensor2: AdhocHost {
            @display("p=9.5,16.5;i=misc/sensor");
        }
        sensor3: AdhocHost {
            @display("p=10.75,10.75;i=misc/sensor");
        }
        sensor4: AdhocHost {
            @display("p=2.5,17.5;i=misc/sensor");
        }
        sensor5: AdhocHost {
            @display("p=2.5,7;i=misc/sensor");
        }
        drone1: AdhocHost {
            @display("p=57.44,28.56;i=misc/drone");
        }
        drone2: AdhocHost {
            @display("p=58.48,23.2;i=misc/drone");
        }
        basestation: AdhocHost {
            @display("p=33.84,21.2;i=device/antennatower;is=l");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=26.4,1.52");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=18,2.25");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=34.88,1.52");
        }
}
