// Box 130x95
// h4 MF
// Elektronik-MONO-FLOP-Baustein
// 39596

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=1;
controlLights=2;
text="h4 FF";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);
