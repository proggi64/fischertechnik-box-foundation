// Fischertechnik Box Foundation
// Elements
// Test FrameTrailSensor

use <../../base/Placement.scad>
use <../../Elements/FrameTrailSensor.scad>

include <../../Base/PlacementOptions.scad>

FrameTrailSensor();

Place(getFrameTrailSensorSpace().x+15, 0, elementSpace=getFrameTrailSensorSpace(), rotation=Rotate90)
    FrameTrailSensor();

Place(getFrameTrailSensorSpace().x+getFrameTrailSensorSpace().y+30, 0, elementSpace=getFrameTrailSensorSpace(), rotation=Rotate270)
    FrameTrailSensor();