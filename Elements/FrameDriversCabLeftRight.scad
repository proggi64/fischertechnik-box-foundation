// Fischertechnik Box Library
// Frame for Driver's Cab Left and Right Side
// 38435, 38436

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
spaceWidth = 100;
spaceDepth = 55;

// getFrameDriversCabLeftRightSpace()
// Gets the space the frame driver's cab left an right side needs as width (.x and .y as a list)

function getFrameDriversCabLeftRightSpace() = [spaceWidth, spaceDepth];

// FrameDriversCabLeftRight()
// Frame for Driver's Cab Left and Right Side
// 38435, 38436

module FrameDriversCabLeftRight() {
    Space ([spaceWidth, spaceDepth]);
    
    widthBottom = 90;
    widthTop = 60;
    depthBottom = 18;
    depthTop = 32;
    depthWeb = 3;
    height = 5;
    totalHeight = height + getExcess();
    
    xTopLeft = (widthBottom - widthTop) / 2;
    xTopRight = xTopLeft + widthTop;
    yTop = depthBottom + depthTop;
    xBottomRight = widthBottom;
    xBottomOffset = (spaceWidth - widthBottom) / 2;
    t = getDividerThickness();
    tX = (depthTop/sqrt(depthTop*depthTop + xTopLeft*xTopLeft)) * t;

    points = [ 
        [0, 0], 
        [0, depthBottom + 1 ], 
        [xTopLeft, yTop], 
        [xTopRight, yTop],
        [xBottomRight, depthBottom +1],
        [xBottomRight, 0],
        [t, t], 
        [t, depthBottom], 
        [xTopLeft+tX, yTop-t], 
        [xTopRight-tX, yTop-t],
        [xBottomRight-t, depthBottom],
        [xBottomRight-t, t],
        ];
    paths = [[0,1,2,3,4,5],[6,7,8,9,10,11]];

    webOffset1 = 8;
    webOffset2 = widthBottom - webOffset1 - getDividerThickness();

    translate([xBottomOffset, 0, -getExcess()]) {    
        linear_extrude(height = totalHeight)
            polygon (points, paths);
        translate([webOffset1, 0, 0])
            cube([getDividerThickness(), depthWeb, totalHeight]);
        translate([webOffset2, 0, 0])
            cube([getDividerThickness(), depthWeb, totalHeight]);        
    }
}

// Test
color("lightgray") {
FrameDriversCabLeftRight();
}