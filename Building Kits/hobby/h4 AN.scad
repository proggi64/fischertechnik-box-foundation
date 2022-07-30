// Box 130x95
// h4 AN
// Elektronik-AND-NAND-Baustein
// 39606

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=0;
controlLights=2;
text="h4 AN";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);

