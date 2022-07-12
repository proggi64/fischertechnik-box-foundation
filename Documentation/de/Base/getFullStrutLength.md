# getFullStrutLength

Funktion: Liefert die volle Länge einer Strebe der angegebenen Nominallänge. Die Nominallänge gibt immer den Abstand zwischen den Mittelpunkten der beiden äußersten Schraubenlöcher an. Um die tatsächliche Länge zu ermitteln wird hier noch zwei Mal der Radius zum Rand der Strebe addiert.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getFullStrutLength(
    length);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| length | Decimal | Nominallänge der Strebe, zu welcher die volle Länge ermittelt werden soll. |

## Rückgabewert
Volle Länge der Strebe mit der Nominallänge *length*.
