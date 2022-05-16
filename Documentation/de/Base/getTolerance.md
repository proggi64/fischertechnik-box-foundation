# getTolerance

Funktion: Liefert den Betrag für die Toleranz bei Elementen, damit die Bauteile nach dem Druck in die Elemente passen.

__getTolerance__ wird durchgängig als Toleranzbetrag in der Bibliothek eingesetzt, bis auf wenige sinnvolle Ausnahmen. Der Betrag ist so bemessen, dass die Fischertechnikteile auch bei üblicher 3D-Druck-Genauigkeit noch in die Elemente passen sollten.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getTolerance();
```

## Rückgabewert
Toleranzwert, um den Nutzflächen vergrößert werden, damit Drucktoleranzen nicht dazu führen, dass Bauteil nicht in die Element passen. Der Betrag is weniger als 1 mm und gilt für die gesamte Nutzfläche, auch wenn diese für mehrere Bauteile gedacht ist.
