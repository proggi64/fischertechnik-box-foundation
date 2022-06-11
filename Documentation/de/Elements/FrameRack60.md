# FrameRack60
Zahnstange 60 m1,5.
- 31053

![FrameRack60](../../images/FrameRack60.png)

## Use
```
use <../Elements/FrameRack60.scad>

include <../Base/PlacementOptions.scad>
```

## Syntax
```
FrameRack60(
    count=1
    alignX=NoAlign, 
    alignY=NoAlign);
);

space = getFrameRack60Space(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Zahnstangen 60 nebeneinander. Es werden 60 mm lange Rahmen längs hinzugefügt. Die Zahnstangen werden nicht durch eine Wand getrennt, sondern schließen direkt aneinder an. |
| alignX | Integer (Enum) | __NoAlign__ wenn der Rahmen nicht mit einer Wand verschmolzen werden soll. __AlignLeft__, wenn die linke Seite (vor einer eventuellen Drehung) an eine Wand gedockt werden soll, und __AlignRight__ für das Andocken rechts. |
| alignY | Integer (Enum) | __NoAlign__ wenn der Rahmen nicht mit einer Wand verschmolzen werden soll. __AlignBottom__, wenn die untere Seite (vor einer eventuellen Drehung) an eine Wand gedockt werden soll, und __AlignTop__ für das Andocken oben. |

## Rückgabewert getFrameRack60Space
Fläche als \[x,y]-Liste

## Beispiel
Bei count = 2:

![FrameRack60](../../images/FrameRack60_2.png)