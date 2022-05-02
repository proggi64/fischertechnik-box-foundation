// Fischertechnik Box Foundation
// Geometry Helpers Deployment
// Test MergeRow

use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

space = [30, 15, 5];
volume = getFrameOuterVolume(space);

MergeRow(
    [volume, volume, volume],
    [NoRotation, Rotate90, NoRotation]) {
    Frame(space);
    Frame(space);
    Frame(space);
}

translate([0, 40])
MergeRow(
    [volume, volume, volume],
    [Rotate90, NoRotation, Rotate90]) {
    Frame(space);
    Frame(space);
    Frame(space);
}
