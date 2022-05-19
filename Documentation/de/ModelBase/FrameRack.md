# Framerack

Erzeugt einen Rahmen für Zahnstangen.

Die Rahmen für Zahnstangen haben ein inneres Rahmengeflecht.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax

```
FrameRack(
    factor=1, 
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| factor | Integer | 1 für 30 mm und 2 für 60 mm Zahnstange. |
| count | Integer | Anzahl der Zahnstangen, die nebeneinander liegen. Die inneren Rahmengeflechte werden dabei miteinander verbunden. |

## Beispiel
```
use <../../Base/Placement.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

FrameRack();

Place(40, 0, getFrameRackSpace(2), rotation=Rotate90)
    FrameRack(2);

Place(80, 0, getFrameRackSpace(2, 2), rotation=Rotate90)
    FrameRack(2, 2);

Place(120, 0, getFrameRackSpace(1, 4))
    FrameRack(1, 4);
```

