// Fischertechnik Box Foundation
// Elements
// Test FrameElectronicBlockConnector

use <../../Base/Placement.scad>
use <../../Elements/FrameElectronicBlockConnector.scad>

include <../../Base/PlacementOptions.scad>

FrameElectronicBlockConnector();

Place(30, 0, elementSpace=getFrameElectronicBlockConnectorSpace(), rotation=Rotate90)
    FrameElectronicBlockConnector();
