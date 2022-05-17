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
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Anzahl der Rotationen muss gleich der Anzahl der Flächen in *spaces* sein. |
| i | Integer | Index, ab welchem die Tiefe ermittelt werden soll (intern für rekursive Aufrufe)

## Rückgabewert
Der größte Y-Wert der *spaces* nach Transformation gemäß der jeweils angegebenen Drehung un *rotations*.
