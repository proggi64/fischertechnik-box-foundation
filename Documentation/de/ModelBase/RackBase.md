# Rackbase

Erzeugt den inneren Rahmen für Zahnstangen.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
HolderBuildingPlate(
    width, 
    count = 1, 
    dock = false)
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Bauplatte. Die Halter unterstützen die Breiten 30 bis 90 mm. |
| count | Integer | Anzahl der hintereinander aufgestellten Bauplatten. |
| dock | Boolean | __true__, wenn die Halterung an eine Wand oder einen Trenner des Sortierkastens angedockt und verschmolzen werden soll. In diesem Fall ist der Steg 15 mm hoch statt 10 und ragt in die Wand hinein. Das Element muss dann zur Wand so gedreht werden, dass die Verschmelzung an der richtigen Seite erfolgt. |

## Beispiele

### Einfache Rahmen
```
use <../../Base/Placement.scad>
use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

RackBase();

Place(40, 0, getFrameRackSpace(2), rotation=Rotate90)
    RackBase(2);

Place(80, 0, getFrameRackSpace(2, 2), rotation=Rotate90)
    RackBase(2, 2);

Place(120, 0)
    RackBase(1, 4);
```

### Links und rechts angedockt
```
use <../../Base/Placement.scad>
use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

Place(0, 0) {
    RackBase(2, 2, alignX=AlignLeft);
}

Place(0, 50) {
    RackBase(2, 2, alignX=AlignRight);
```

### Oben und unten angedockt
```
use <../../Base/Placement.scad>
use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

Place(0, 0) {
    RackBase(2, 2, alignY=AlignBottom);
}

Place(0, 50) {
    RackBase(2, 2, alignY=AlignTop);
```
