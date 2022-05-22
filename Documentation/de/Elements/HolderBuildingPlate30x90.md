# HolderBuildingPlate30x90
Bauplatte 30x90.
- 31503
- 38251
- 38485

![HolderBuildingPlate30x90](../../images/HolderBuildingPlate30x90.png)

## Use
```
use <../Elements/HolderBuildingPlate30x90.scad>
```

## Syntax
```
HolderBuildingPlate30x90(
    count=1,
    dock=false);

space = getHolderBuildingPlate30x90Space(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Bauplatten hintereinander. |
| dock | Boolean | __true__, wenn die Halterungen an die Wand des Sortierkastens angedockt werden sollen. Die der Wand zugewandten Stege sind dann höher und ragen zum Verschmelzen in die Wand hinein. Dazu muss das Element mit der Seite direkt an der Wand platziert werden (z.B. per [__Place__](../Base/Place.md) mit __Rotate90__ und __AlignLeft__). |

## Rückgabewert getHolderBuildingPlate30x90Space
Fläche als \[x,y]-Liste

```
use <../../Elements/HolderBuildingPlate30x90.scad>

HolderBuildingPlate30x90(4, true);
```

![HolderBuildingPlate30x30](../../images/HolderBuildingPlate30x90_1.png)
