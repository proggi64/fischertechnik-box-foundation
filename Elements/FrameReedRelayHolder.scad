// Fischertechnik Box Library
// Frame for Reed Relay Holder
// 35969

use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 7.5;
depth = 15;
height = 7.5;

// getFrameShortHookSpace(count=1)
// Gets the space of a frame for a reed relay holder
// count = Count of reed relay holders

function getFrameReedRelayHolderSpace(count=1) = getFrameOuterVolume([width * count, depth, height]);

// ReedRelayHolder()
// Frame for a reed relay holder.

module FrameReedRelayHolder(count=1) {
    volume = [width * count, depth, height];
    Frame(volume);
    FrameRails(volume);
}

// Tests
color("lightgray")
FrameReedRelayHolder(count);