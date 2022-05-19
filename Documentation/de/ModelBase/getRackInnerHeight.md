# getRackInnerHeight

Funktion: Liefert die innere Höhe der Halterungen für Zahnstangen.

Dies ist die Fläche einer Halterung, die von [HolderBuildingPlate](HolderBuildingPlate.md) erzeugt wird.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getRackInnerHeight();
```

## Rückgabewert
Höhe der inneren Rahmen, die mit [__FrameRack__](FrameRack.md) oder [__RackBase__](RackBase.md) erzeugt werden. Auf diesen Rahmen liegen der Zahnstangen. Falls ein äußerer Rahmen verwendet wird, ist dieser i.d.R. etwas höher.