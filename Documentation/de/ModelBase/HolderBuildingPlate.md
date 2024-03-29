# HolderBuildingPlate

Erzeugt Halter für Bauplatten.

Die Bauplatten stehen senkrecht in den Haltern. Über Parameter können die Größen der Bauplatten angegeben werden.

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
| width | Decimal | Breite der Bauplatte. Die Halter unterstützen die Breiten 30 bis 90 mm. Bei 30 mm werden die beiden Halter außerhalb neben den äußeren Zapfen platziert, ansonsten innerhalb neben den äußeren Zapfen. |
| count | Integer | Anzahl der hintereinander aufgestellten Bauplatten. |
| dock | Boolean | __true__, wenn die Halterung an eine Wand oder einen Trenner des Sortierkastens angedockt und verschmolzen werden soll. In diesem Fall ist der Steg 15 mm hoch statt 10 und ragt in die Wand hinein. Das Element muss dann zur Wand so gedreht werden, dass die Verschmelzung an der richtigen Seite erfolgt. |

## Beispiel
```
use <../../ModelBase/Complex.scad>

HolderBuildingPlate(30);

translate([0, 20, 0])
    HolderBuildingPlate(60);

translate([0, 40, 0])
    HolderBuildingPlate(90);

translate([120, 0, 0])
    HolderBuildingPlate(90, 4, dock=true);

translate([120, 40, 0])
    HolderBuildingPlate(45, 4);
```

![HolderBuildingPlate](../../images/HolderBuildingPlate_1.png)
