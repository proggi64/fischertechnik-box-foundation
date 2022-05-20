// Fischertechnik Box Foundation
// Helper functions

include <PlacementOptions.scad>

// getRotation(rotations, i)
// gets the rotation with index i, even if rotations or rotations[i] is undefined.
// If undefined, NoRotation ist returned.
// rotations = list of Rotate-constants
// i = Index of the rotation
function getRotation(rotations, i) = (is_undef(rotations) || is_undef(rotations[i])) ? NoRotation : rotations[i];
