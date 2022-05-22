# HolderBuildingPlate30x45
Bauplatte 30x45.
- 31502
- 38237
- 38238
- 38248
- 38269
- 163042

![HolderBuildingPlate45x30](../../images/HolderBuildingPlate30x45.png)

## Use
```
use <../Elements/HolderBuildingPlate30x45.scad>
```

## Syntax
```
HolderBuildingPlate30x45(
    count=1,
    dock=false);

space = getHolderBuildingPlate30x45Space(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Bauplatten hintereinander. |
| dock | Boolean | __true__, wenn die Halterungen an die Wand des Sortierkastens angedockt werden sollen. Die der Wand zugewandten Stege sind dann höher und ragen zum Verschmelzen in die Wand hinein. Dazu muss das Element mit der Seite direkt an der Wand platziert werden (z.B. per [__Place__](../Base/Place.md) mit __Rotate90__ und __AlignLeft__). |

## Rückgabewert getHolderBuildingPlate30x45Space
Fläche als \[x,y]-Liste

## Beispiel
```
use <../../Elements/HolderBuildingPlate30x45.scad>

HolderBuildingPlate30x45(4, true);
```

![HolderBuildingPlate30x30](../../images/HolderBuildingPlate30x45_1.png)
