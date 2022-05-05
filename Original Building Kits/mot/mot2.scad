// OpenSCAD Box mot2

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>


color("lightgray") {
Box190();

webDistance = 18;
BoxWeb(UpperLeft, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerRight, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerLeft, LeftOfCorner, 7);

wallHeight = 13;

}
