# AngledFrame

Erzeugt einen um 90° gewinkelten Rahmen.

<img width="317" alt="AngledFrame" src="https://user-images.githubusercontent.com/48654609/169059870-c6b8f817-2839-48e3-81e1-464ef6a86220.png">

__AngledFrame__ wird u.a. für Rahmen von Federgelenksteinen eingesetzt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
AngeledFrame(
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
| tolerance | Decimal | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen exakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |

## Beispiel

```
use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

AngledFrame(32.5, 15, 32.5, 15, 5);

Place(50, 0, getAngledFrameOuterVolume(45, 15, 30, 30, 10), rotation=Rotate90)
    AngledFrame(45, 15, 30, 30, 10);

Place(100, 0, getAngledFrameOuterVolume(45, 15, 75, 15, 10), rotation=Rotate180)
    AngledFrame(45, 15, 75, 15, 30);
```

Der linke Rahmen entspricht dem aus den em-Kästen für Federgelenksteine. Die beiden anderen zeigen die variablen Möglichkeiten.

<img width="317" alt="AngledFrame_1" src="https://user-images.githubusercontent.com/48654609/169060736-38b1d262-c875-4bc7-a6e9-9db225de322c.png">

