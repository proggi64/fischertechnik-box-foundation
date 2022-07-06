# getCutoffOffset

Funktion: Liefert den Offset eines Wand-Ausschnitts von der mittigen Position eines Rahmens aus, wenn dort mehrere Ausschnitte in gleichmäßigen Abständen herausgeschnittetn werden sollen. Die Funktion wird von den Modulen [__FrameTopCutoffs__](FrameTopCutoffs.md), [__FrameBottomCutoffs__](FrameBottomCutoffs.md), [__FrameLeftCutoffs__](FrameLeftCutoffs.md) und [__FrameRightCutoffs__](FrameRightCutoffs.md) verwendet.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
getCutoffOffset(
  length, 
  count, 
  index, 
  tolerance=getTolerance());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| length | Decimal | Länge der Wand, in welche die Ausschnitte geschnitten werden sollen (ohne Toleranz). |
| count | Integer | Anzahl der Ausschnitte. |
| index | Integer | Null-basierter index des jeweiligen Ausschnitts, zu dem der Offset geliefert werden soll. |
| tolerance | Decimal | Zusätzliche Toleranz, die bei der Länge *length' addiert werden soll. |

## Rückgabewert
Der Offset von der Mitte der Wand aus. Dieser Wert wird als *offset*-Parameter an die Module (z.B. [__FrameTopCutoff__](FrameCutoff.md)) übergeben.
