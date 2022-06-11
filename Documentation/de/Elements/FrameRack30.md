# FrameRack30
Zahnstange 30 m1,5.
- 31054

![FrameRack30](../../images/FrameRack30.png)

## Use
```
use <../Elements/FrameRack30.scad>
```

## Syntax
```
FrameRack30(
    count=1,
    alignX=NoAlign, 
    alignY=NoAlign);

space = getFrameRack30Space(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Zahnstangen in Reihe. Üblich sind 1 oder 2. |
| alignX | Integer (Enum) | __NoAlign__ wenn der Rahmen nicht mit einer Wand verschmolzen werden soll. __AlignLeft__, wenn die linke Seite (vor einer eventuellen Drehung) an eine Wand gedockt werden soll, und __AlignRight__ für das Andocken rechts. |
| alignY | Integer (Enum) | __NoAlign__ wenn der Rahmen nicht mit einer Wand verschmolzen werden soll. __AlignBottom__, wenn die untere Seite (vor einer eventuellen Drehung) an eine Wand gedockt werden soll, und __AlignTop__ für das Andocken oben. |

## Rückgabewert getFrameRack30Space
Fläche als \[x,y]-Liste