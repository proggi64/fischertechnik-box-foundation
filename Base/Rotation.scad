// Fischertechnik Box Foundation
// Geometry Helpers Rotation

include <PlacementOptions.scad>

// getRotatedSpace(space, rotation=NoRotation)
// Rotates the space dependent on the specified rotation

function getRotatedSpace(space, rotation=NoRotation) = [
    (rotation == Rotate90 || rotation == Rotate270) ? space.y : space.x,
    (rotation == Rotate90 || rotation == Rotate270) ? space.x : space.y
];

// Rotates the given space around the fixed left lower corner
// space = the space the children needs as width/depth list [width,depth]
// rotation = 0 Rotate0 degrees, 1 Rotate90 degrees, 2 Rotate180 degrees, 3 Rotate270 degrees (equivalent to -90)

module RotateFix(space, rotation=Rotate0) {
    dy = (rotation == Rotate0 || rotation == Rotate270) ? 0 :
        (rotation == Rotate90) ? space.x :
        space.y;
    dx = (rotation < Rotate180) ? 0 :
        (rotation == Rotate180) ? space.x :
        space.y;
    
    translate([dx, dy, 0])
        rotate([0, 0, rotations[rotation]])
            children();
}

