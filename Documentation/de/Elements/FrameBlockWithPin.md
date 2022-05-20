# FrameBlockWithPin

Einfacher Rahmen für Grundbausteine mit Zapfen nach unten.

- 31006
- 31007
- 32882
- 38240

Der Rahmen hat am Boden zwei Stege, so dass der Zapfen dazwischen Platz hat.

## Use
```
use <../Elements/FrameBlockWithPin.scad>
```

## Syntax
```
FrameBlockWithPin(
    count=1, 
    height=8);

space = getFrameBlockWithPinSpace()
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Bausteine nebeneinander (X-Richtung). |
| height | Decimal | Höhe der Wände in mm. |

## Rückgabewert getFrameBlockWithPinSpace
Äußere Fläche des Rahmens als \[x,y]-Liste.

## Beispiel

/Test/Elements/TestFrameBlockWithPin.scad

```
use <../../Base/Placement.scad>
use <../../Elements/FrameBlockWithPin.scad>

include <../../Base/PlacementOptions.scad>

FrameBlockWithPin();

Place(20, 0, elementSpace=getFrameBlockWithPinSpace(2), rotation=Rotate90)
    FrameBlockWithPin(2);

Place(40, 0, elementSpace=getFrameBlockWithPinSpace(8), rotation=Rotate90)
    FrameBlockWithPin(8);
```

<img width="270" alt="FrameBlockWithPin" src="https://user-images.githubusercontent.com/48654609/169554820-58efd2f7-9263-49d9-a028-d397bac66cd4.png">
