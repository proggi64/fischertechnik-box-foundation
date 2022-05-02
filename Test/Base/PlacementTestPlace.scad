// Fischertechnik Box Foundation
// Geometry Helpers Placement
// Test Place

use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

Place()
    Cube();

Place(15, 5)
    Cube();

Place(10, 35, elementSpace=getCubeSpace(), rotation=Rotate270)
    Cube();

Place(5, 5, 
    elementSpace=getCubeSpace(), 
    alignX=AlignRight, 
    alignY=AlignTop, 
    rotation=Rotate90, 
    boxSpace=getPlacementBaseSpace())
    Cube();


translate([60, 0]) {
    PlacementBase();
    
    Place(
        elementSpace=getCubeSpace(), 
        rotation=Rotate270, 
        alignX=AlignRight, 
        boxSpace=getPlacementBaseSpace())
        Cube();

    Place(
        elementSpace=getCubeSpace(), 
        rotation=Rotate180, 
        alignX=AlignCenter, 
        alignY=AlignCenter, 
        boxSpace=getPlacementBaseSpace())
        Cube();

    Place(
        elementSpace=getCubeSpace(), 
        rotation=Rotate90, 
        alignX=AlignCenter, 
        alignY=AlignCenter, 
        boxSpace=getPlacementBaseSpace())
        Cube();
    
    Place(elementSpace=getCubeSpace(), alignY=AlignTop, boxSpace=getPlacementBaseSpace())
        Cube();
    
    Place(elementSpace=getCubeSpace(), alignX=AlignRight, alignY=AlignTop, boxSpace=getPlacementBaseSpace())
        Cube();
}