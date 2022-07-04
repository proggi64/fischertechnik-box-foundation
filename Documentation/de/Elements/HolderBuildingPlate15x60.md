# HolderBuildingPlate15x60
Bauplatte 15x60.
- 38324
- 38464
- 38474
- 133008

![HolderBuildingPlate15x60](../../images/HolderBuildingPlate15x60.png)

## Use
```
use <../Elements/HolderBuildingPlate15x60.scad>
```

## Syntax
```
HolderBuildingPlate15x60(
    count=1,
    dock=false);

space = getHolderBuildingPlate15x60Space(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Bauplatten hintereinander. |
| dock | Boolean | __true__, wenn die Halterungen an die Wand des Sortierkastens angedockt werden sollen. Die der Wand zugewandten Stege sind dann höher und ragen zum Verschmelzen in die Wand hinein. Dazu muss das Element mit der Seite direkt an der Wand platziert werden (z.B. per [__Place__](../Base/Place.md) mit __Rotate90__ und __AlignLeft__). |

## Rückgabewert getHolderBuildingPlate15x60Space
Fläche als \[x,y]-Liste

## Beispiel
```
use <../../Elements/HolderBuildingPlate15x60.scad>

HolderBuildingPlate15x60(5, true);
```

![HolderBuildingPlate15x60](../../images/HolderBuildingPlate15x60_1.png)
