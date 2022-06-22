# getGearRackSpace

Funktion: Liefert die Fläche eines Rahmens für eine Hubzahnstange.

Es wird die Fläche geliefert, die von [__GearRack__](GearRack.md) erzeugt wird.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getGearRackSpace(
    width=gearRackBaseWidth, 
    dock=false);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Basislänge der Hubzahnstange ohne die Metallstifte. Sinnvolle Werte sind 30 und 60. |
| dock | Boolean | __true__ wenn die linke Seite des Rahmens an die Wand gedockt werden soll. |

## Rückgabewert
Außenfläche eines von [__GearRack__](GearRack.md) erzeugten Elements als \[x,y]-Liste.