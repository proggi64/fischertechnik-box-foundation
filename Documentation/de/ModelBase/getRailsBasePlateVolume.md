# getRailsBasePlateVolume

Funktion: Liefert das Volumen des Rahmens für Grundplatten.

Die Höhe besteht aus den Stegen, auf denen die Platte liegt plus der Stärke der Platte selbst.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getRailsBasePlateVolume(
    width, 
    depth)
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Grundplatte (meistens 180 oder 90 mm). |
| depth | Decimal | Tiefe der grundplatte (meistens 90 mm). |

## Rückgabewert

Äußeres Volumen des gesamten Rahmens als \[x,y,z]-Liste.
