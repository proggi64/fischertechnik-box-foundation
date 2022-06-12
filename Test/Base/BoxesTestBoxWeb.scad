// Fischertechnik Box Foundation
// Test BoxWeb

use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(UpperLeft, LeftOfCorner, 0);
BoxWeb(UpperLeft, RightOfCorner, 0);

BoxWeb(UpperLeft, LeftOfCorner, 2);
BoxWeb(UpperLeft, RightOfCorner, 2);

BoxWeb(UpperLeft, LeftOfCorner, 4);
BoxWeb(UpperLeft, RightOfCorner, 4);

BoxWeb(UpperLeft, LeftOfCorner, 6);
BoxWeb(UpperLeft, RightOfCorner, 6);


BoxWeb(LowerLeft, LeftOfCorner, 0);
BoxWeb(LowerLeft, RightOfCorner, 0);

BoxWeb(LowerLeft, LeftOfCorner, 2);
BoxWeb(LowerLeft, RightOfCorner, 2);

BoxWeb(LowerLeft, LeftOfCorner, 4);
BoxWeb(LowerLeft, RightOfCorner, 4);

BoxWeb(LowerLeft, LeftOfCorner, 6);
BoxWeb(LowerLeft, RightOfCorner, 6);


BoxWeb(UpperRight, LeftOfCorner, 0);
BoxWeb(UpperRight, RightOfCorner, 0);

BoxWeb(UpperRight, LeftOfCorner, 2);
BoxWeb(UpperRight, RightOfCorner, 2);

BoxWeb(UpperRight, LeftOfCorner, 4);
BoxWeb(UpperRight, RightOfCorner, 4);

BoxWeb(UpperRight, LeftOfCorner, 6);
BoxWeb(UpperRight, RightOfCorner, 6);


BoxWeb(LowerRight, LeftOfCorner, 0);
BoxWeb(LowerRight, RightOfCorner, 0);

BoxWeb(LowerRight, LeftOfCorner, 2);
BoxWeb(LowerRight, RightOfCorner, 2);

BoxWeb(LowerRight, LeftOfCorner, 4);
BoxWeb(LowerRight, RightOfCorner, 4);

BoxWeb(LowerRight, LeftOfCorner, 6);
BoxWeb(LowerRight, RightOfCorner, 6);

translate([200, 0]) {
    #Box130();

    BoxWeb(LowerLeft, LeftOfCorner, 7.5, boxSpace=getBox130Space());
    BoxWeb(LowerLeft, RightOfCorner, 7.5, boxSpace=getBox130Space());

    BoxWeb(LowerRight, LeftOfCorner, 5, boxSpace=getBox130Space());
    BoxWeb(LowerRight, RightOfCorner, 2.5, boxSpace=getBox130Space());

    BoxWeb(UpperRight, LeftOfCorner, 10, boxSpace=getBox130Space());
    BoxWeb(UpperRight, RightOfCorner, 15, boxSpace=getBox130Space());

    BoxWeb(UpperLeft, LeftOfCorner, 20, boxSpace=getBox130Space());
    BoxWeb(UpperLeft, RightOfCorner, 25, boxSpace=getBox130Space());

    BoxWeb(UpperLeft, RightOfCorner, 70, webWidth=30, webThickness=5, boxSpace=getBox130Space());
}