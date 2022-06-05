// Fischertechnik Box Library
// Holder for Tire 45 (may be with flat hub)
// 31018, (31015)

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;
height = 3; // [3, 6]

/* [Hidden] */
width = 46;
depth = 46;

// getHolderTire45Space(count=1)
// Gets the space the tire 45 holder needs as width and depth (.x and .y as a list)

function getHolderTire45Space(count=1, height=height) = [(width * count) + getTolerance(), depth + getTolerance(), height];

// HolderTire45(count=1)
// Tire 45 holder
// count = Count of tires in a row

module HolderTire45(count=1, height=height) {
    distance = 30;

    wallVolume = [
        getHolderTire45Space(count).x, 
        getDividerThickness(),
        height];

    webSpace = [
        wallVolume.x,
        distance
    ];

    Space(getHolderTire45Space(count));

    CenterVertical(distance, space=getHolderTire45Space(count))
    DeployVertical(distance, [wallVolume, wallVolume]) {
        Wall(wallVolume);
        Wall(wallVolume);
    }
}

// Test
color("lightgray")
HolderTire45(count, height);
