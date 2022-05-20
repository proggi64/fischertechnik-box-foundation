# getMaxDepth

Funktion: Liefert größte Tiefe der angegebenen Flächen unter Berücksichtigung der Drehungen.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getMaxDepth(
  spaces, 
  rotations
  i=0);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y]\[x,y]...] | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| i | Integer | Index, ab welchem die Tiefe ermittelt werden soll (intern für rekursive Aufrufe)

## Rückgabewert
Der größte Y-Wert der *spaces* nach Transformation gemäß der jeweils angegebenen Drehung un *rotations*.
