# getHolderbBuildingPlateSpace

Funktion: Liefert die Fläche einer Halterung für Bauplatten.

Dies ist die Fläche einer Halterung, die von [HolderBuildingPlate](HolderBuildingPlate.md) erzeugt wird.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getHolderbBuildingPlateSpace(
    width, 
    count);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Bauplatte. Die Halter unterstützen die Breiten 30 bis 90 mm. |
| count | Integer | Anzahl der hintereinander aufgestellten Bauplatten. |

## Rückgabewert
Fläche der Halterungen auf Basis der Anzahl (*count*) und der Größe (*width*). Die Toleranz ist eingerechnet.