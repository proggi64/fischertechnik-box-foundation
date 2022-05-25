# FrameBTSmartController
BT Smart Controller.
- 161944

![FrameBTSmartController](../../images/FrameBTSmartController.png)

## Use
```
use <../Elements/FrameBTSmartController.scad>
```

## Syntax
```
FrameBTSmartController(
    alignX=NoAlign,
    alingY=NoAlign);

space = getFrameBTSmartControllerSpace(
    alignX=NoAlign,
    alingY=NoAlign);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| alignX | Integer (Enum) | Erzeugt optional einen Rand für das Andocken an die linke oder rechte Wand des Sortierkastens: 0=NoAlign 1=AlignLeft 4=AlignRight. Es werden Stege erzeugt, die mit der Wand verschmelzen. |
| alignY | Integer (Enum) | Erzeugt optional einen Rand für das Andocken an die hintere oder vordere Wand des Sortierkastens: 0=NoAlign 2=AlignBottom 5=AlignTop. Es werden Stege erzeugt, die mit der Wand verschmelzen. |

## Rückgabewert getFrameBTSmartControllerSpace
Fläche als \[x,y]-Liste.

## Beispiel
Test/Elements/TestFrameBTSmartController.scad

```
use <../../Base/Placement.scad>
use <../../Elements/FrameBTSmartController.scad>

include <../../Base/PlacementOptions.scad>

FrameBTSmartController();

Place(0, 100)
    FrameBTSmartController(alignX=AlignLeft);

Place(100, 100)
    FrameBTSmartController(alignX=AlignRight);

Place(0, 200)
    FrameBTSmartController(alignY=AlignBottom);

Place(100, 200)
    FrameBTSmartController(alignY=AlignTop);

Place(0, 300)
    FrameBTSmartController(alignX=AlignLeft, alignY=AlignBottom);

Place(100, 300)
    FrameBTSmartController(alignX=AlignLeft, alignY=AlignTop);

Place(0, 400)
    FrameBTSmartController(alignX=AlignRight, alignY=AlignBottom);

Place(100, 400)
    FrameBTSmartController(alignX=AlignRight, alignY=AlignTop);
```

![TestFrameBTSmartController](../../images/FrameBTSmartController_1.png)