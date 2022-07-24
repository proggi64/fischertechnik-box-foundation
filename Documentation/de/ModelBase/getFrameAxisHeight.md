# getFrameAxisHeight

Funktion: Liefert die Höhe der Halterungen, die vom Modul [__FrameAxis__](ModelBase/FrameAxis.md) verwendet wird.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getFrameAxisHeight(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Achsen übereinander. Ab 3 Achsen erhöht sich die Gesamthöhe jeweils um den Durchmesser einer Achse. Ansonsten wird der Standardwert geliefert. |

## Rückgabewert
Höhe der Halterungen des Moduls [__FrameAxis__](ModelBase/FrameAxis.md) in mm.
