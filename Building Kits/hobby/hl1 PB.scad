// Box 130x95
// hl1 PB
// hobbylabor-Potentiometer-Baustein
// 39621

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=2;
controlLights=0;
text="hl1 PB";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);
