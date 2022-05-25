// Box 130x95
// h4 FF
// Elektronik-FLIP-FLOP-Baustein
// 39591

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=0;
controlLights=2;
text="h4 FF";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);
