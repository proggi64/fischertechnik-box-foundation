// Fischertechnik Box Library
// Frame for Flat Pieces 60
// 31555

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

size = 60;

// getFrameFlatPiece60Space(count)
// count = count of pieces in X direction
// Gets the space for a frame for flat pieces 60.

function getFrameFlatPiece60Space(count=1) = getFrameFlatPieceVolume(count, size);

// FrameFlatPiece30(count)
// count = Count of flat pieces 60 in X direction

module FrameFlatPiece60(count=1) {  
    FrameFlatPiece(count, size);
}

// Tests
color("lightgray") {
FrameFlatPiece60(2);
}
