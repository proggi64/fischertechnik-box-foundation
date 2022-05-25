// Box 130x95
// hl1 EF
// hobbylabor-Experimentierfeld
// 39626

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=0;
controlLights=0;
text="hl1 EF";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);
