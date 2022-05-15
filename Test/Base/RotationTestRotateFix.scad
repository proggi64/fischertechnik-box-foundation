// Fischertechnik Box Foundation
// Geometry Helpers Rotation
// Test RotateFix

use <../../Base/Rotation.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

Deploy(30) {
    RotateFix(getCubeSpace(), Rotate0)
        Cube();
    RotateFix(getCubeSpace(), Rotate90)
        Cube();
    RotateFix(getCubeSpace(), Rotate180)
        Cube();
    RotateFix(getCubeSpace(), Rotate270)
        Cube();
}