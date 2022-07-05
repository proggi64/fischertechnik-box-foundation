// Fischertechnik Box Library
// Frame for plastic ball 20 mm
// 185695

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 20;
depth = 20;
height = 12;

// getFramePlasticBall20Space(count=1)
// Gets the space for count plastic balls
// count = Count of balls

function getFramePlasticBall20Space(count=1) = [width * count, depth, height];

// FramePlasticBall20(count=1)
// Frame with rails for 20 mm plastic balls
// count = Count of balls

module FramePlasticBall20(count=1) {
    volume = [width * count, depth, height];
    Frame(volume);
    distance = 10;
    FrameRails(volume, distance);
}

// Test
color("lightgray")
FramePlasticBall20();