# FrameStandardBlock

Grundbausteine und Winkelträger, die auf der 15x15-Seite ohne Zapfen stehen.

- 31003
- 31004
- 31005
- 31059
- 32879
- 32880
- 32881
- 35053
- 36299
- 36300
- 36301
- 36920
- 36922
- 127471
- 127472

Es können Anzahlen in x- und y-Richtung angegeben werden, die nebeneinander in denselben Rahmen gestellt werden.

![FrameStandardBlock](../../images/FrameStandardBlock.png)

3D-Druck getestet

## Use
```
use <../Elements/FrameStandardBlock.scad>
```

## Syntax
```
FrameStandardBlock(
    columns=1, 
    rows=1, 
    height=10);

space = getFrameStandardBlockSpace()
    columns=1, 
    rows=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| columns | Integer | Anzahl der Bausteine nebeneinander (X-Richtung). |
| rows | Integer | Anzahl der Bausteine untereinander (Y-Richtung). |
| height | Decimal | Höhe der Wände in mm. |

## Rückgabewert getFrameStandardBlockSpace
Äußere Fläche des Rahmens als \[x,y]-Liste.

## Beispiel

/Test/Elements/TestFrameStandardBlock.scad

```
use <../../Base/Placement.scad>
use <../../Elements/FrameStandardBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameStandardBlock();

Place(20, 0, getFrameStandardBlockSpace(2), rotation=Rotate90)
    FrameStandardBlock(2);

Place(40, 0)
    FrameStandardBlock(2);

Place(80, 0, getFrameStandardBlockSpace(4), rotation=Rotate270)
    FrameStandardBlock(4);

Place(0, 80, getFrameStandardBlockSpace(rows=2), rotation=Rotate90)
    FrameStandardBlock(rows=2);

Place(50, 80)
    FrameStandardBlock(rows=3);

Place(70, 80, getFrameStandardBlockSpace(2,4), rotation=Rotate270)
    FrameStandardBlock(2,4);
```

<img width="275" alt="FrameStandardBlock" src="https://user-images.githubusercontent.com/48654609/169412944-762ca0e5-2456-4ee6-9b88-ad4510d34b0f.png">
