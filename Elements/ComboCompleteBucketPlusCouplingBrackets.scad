// Fischertechnik Box Library
// Combo Complete Bucket plus Coupling Brackets
// 38252, 37354, 37353, 37355, 38257

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

use <HolderCompleteBucket.scad>
use <FrameCouplingBracket.scad>

// getComboCompleteBucketPlusCouplingBracketsSpace()
// Gets the space the combo complete bucket plus two coupling brackets needs as width and depth (.x and .y as a list)

function getComboCompleteBucketPlusCouplingBracketsSpace() = [
    2*getFrameCouplingBracketSpace().x + getHolderCompleteBucketSpace().x, 
    getHolderCompleteBucketSpace().y];

// ComboCompleteBucketPlusCouplingBrackets()
// Holder for complete bucket with three middle and two side parts, 
// and a middle axis plus two frame coupling brackets.
// 37354, 37353, 37355, 38257, 38252

module ComboCompleteBucketPlusCouplingBrackets() {
    Space(getComboCompleteBucketPlusCouplingBracketsSpace());
    
    translate([getFrameCouplingBracketSpace().x, 0, 0])
        HolderCompleteBucket();
    
    yOffset = (getHolderCompleteBucketSpace().y - getFrameCouplingBracketSpace().y) / 2;
    translate([0, yOffset, 0])
        FrameCouplingBracket();
    
    mirror([1, 0, 0])
        translate([-getComboCompleteBucketPlusCouplingBracketsSpace().x, yOffset, 0])
            FrameCouplingBracket();
}

// Test
color("lightgray") {
ComboCompleteBucketPlusCouplingBrackets();
}
