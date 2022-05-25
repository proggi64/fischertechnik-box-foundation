// Box 130x95
// h4 RB
// Elektronik-Relais-Baustein
// 39576

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=0;
controlLights=0;
text="h4 RB";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);

