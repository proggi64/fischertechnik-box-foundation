// Box 130x95
// h4 ON
// Elektronik-OR-NOR-Baustein
// 39601

use <ElectronicBlockBoxBase.scad>

connectors = 1;
dials=0;
controlLights=2;
text="h4 ON";

color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);

