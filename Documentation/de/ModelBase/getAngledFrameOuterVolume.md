# getAngledFrameOuterVolume

Funktion: Liefert das äußere Gesamtvolumen ("bounding box") eines gewinkelten Rahmens ([__AngledFrame__](AngledFrame.md)).

[__AngledFrame__](AngledFrame.md) erzeugt einen Rahmen mit einem 90°-Winkel, der u.a. für Federgelenksteine verwendet wird. Das Volumen umfasst die beiden langen Seiten dieses Rahmens und die Höhe der Wände.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getAngledFrameOuterVolume(
  width1, 
  depth1, 
  width2, 
  depth2, 
  height, 
  tolerance=getTolerance());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width1 | Decimal | Breite des ersten Arms des gewinkelten Rahmens. |
| depth1 | Decimal | Tiefe des ersten Arms des gewinkelten Rahmens. |
| width2 | Decimal | Breite des zweiten Arms des gewinkelten Rahmens. |
| depth2 | Decimal | Tiefe des zweiten Arms des gewinkelten Rahmens. |
| height | Decimal | Höhe der Wände des Rahmens. |
| tolerance | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen exakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |

## Rückgabewert
Das Volumen des gesamten äußeren gewinkelten Rahmens als \[x,y,z]-Liste.
