// Fischertechnik Box Library
// Frame for Flat Pieces 30
// 31013

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
size = 30;

// getFrameFlatPiece30Space(count)
// count = count of pieces in X direction
// Gets the space for a frame for flat pieces 30.

function getFrameFlatPiece30Space(count=1) = getFrameFlatPieceVolume(count, size);

// FrameFlatPiece30(count)
// count = Count of flat pieces 30 in X direction

module FrameFlatPiece30(count=1) {  
    FrameFlatPiece(count, size);
}

// Tests
color("lightgray") {
FrameFlatPiece30(count);
}
