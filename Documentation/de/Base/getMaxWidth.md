# getMaxWidth

Funktion: Liefert größte Breite der angegebenen Flächen unter Berücksichtigung der Drehungen.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getMaxWidth(
  spaces, 
  rotations
  i=0);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y]\[x,y]...] | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Anzahl der Rotationen muss gleich der Anzahl der Flächen in *spaces* sein. |
| i | Integer | Index, ab welchem die Breite ermittelt werden soll (intern für rekursive Aufrufe)

## Rückgabewert
Der größte X-Wert der *spaces* nach Transformation gemäß der jeweils angegebenen Drehung un *rotations*.
