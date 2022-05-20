# getY

Funktion: Liefert für die Fläche mit dem angegebenen Index *i* die Y-Position. Dabei werden die Tiefen (Y-Werte der *spaces*) plus die angegebene *distance* der Flächen mit niedrigerem Index addiert.

__getY__ wird intern für das Modul [__DeployVertical__](DeployVertical.md) verwendet. Die Funktion ermöglicht die Verteilung verschiedener Elemente in Y-Richtung in gleichen Abständen zueinander.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getY(
  spaces, 
  rotations, 
  distance,
  i);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y]\[x,y]...] | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Reihenfolge entspricht der der Children-Elemente. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| distance | Decimal | Die Tiefe der Strecke, über welche die Flächen verteilt werden sollen. Ist die Summe der Tiefen größer als diese Fläche, sind die Abstände negativ und die Elemente werden ineinander geschoben. |
| i | Integer | Aktueller Index, zu welchem die Y-Position ermittelt werden soll.

## Rückgabewert
Y-Position der Fläche mit Index *i*, so dass alle Flächen mit gleichmäßigen Abständen über *distance* vertikal verteilt sind. Die jeweilige Rotation jeder Fläche wird berücksichtigt. Für i=0 wird stets die Position 0 geliefert.
