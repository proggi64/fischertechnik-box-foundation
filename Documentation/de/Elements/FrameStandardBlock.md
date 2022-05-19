# FrameStandardBlock

Einfacher Rahmen für Grundbausteine, die auf der 15x15-Seite ohne Zapfen stehen.

<details><summary>Artikelnummern</summary>

- 31003
- 31004
- 31005
- 32879
- 32880
- 32881
</details>

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
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| columns | Integer | Anzahl der Bausteine nebeneinander (X-Richtung). |
| rows | Integer | Anzahl der Bausteine untereinander (Y-Richtung). |
| height | Decimal | Höhe der Wände in mm. |

## Beispiel
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
