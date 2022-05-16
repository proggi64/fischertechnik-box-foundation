# getBoxBaseThickness

Funktion: Liefert die Stärke des Bodens eines Fischertechnik-Sortierkastens. Diese Stärke (Dicke) wird verwendet, um die Oberfläche des Kastens auf die Z-Position Null zu bringen, wenn die jeweilige STL-Datei über [__Box190__](Box190.md) oder [__Box130__](Box130.md) importiert wird.

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
getBoxBaseThickness();
```

## Rückgabewert
Stärke des Bodens eines Fischertechnik-Sortierkastens in mm. Der Wert wird intern verwendet, um die Sortierkästen nach dem Import so abzusenken, dass die Oberfläche des Boden die Y-Position 0 hat.
