# getX

Funktion: Liefert für die Fläche mit dem angegebenen Index *i* die X-Position, wenn die angegebenen Flächen mit gleichen Abständen über die Strecke *distance* verteilt sind.

__getX__ wird intern für das Modul [__DeployHorizontal__](DeployHorizontal.md) verwendet. Die Funktion ermöglicht die Verteilung verschiedener Elemente mit individueller Drehung in gleichen Abständen zueinander.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getX(
  spaces, 
  rotations, 
  distance,
  i);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y]\[x,y]...] | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Reihenfolge entspricht der der Children-Elemente. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| distance | Decimal | Die Breite der Strecke, über welche die Flächen verteilt werden sollen. Ist die Summe der Breiten größer als diese Fläche, sind die Abstände negativ und die Elemente werden ineinander geschoben. |
| i | Integer | Aktueller Index, zu welchem die X-Position ermittelt werden soll.

## Rückgabewert
X-Position der Fläche mit Index *i*, so dass alle Flächen mit gleichmäßigen Abständen über *distance* horizontal verteilt sind. Die jeweilige Rotation jeder Fläche wird berücksichtigt. Für i=0 wird stets die Position 0 geliefert.
