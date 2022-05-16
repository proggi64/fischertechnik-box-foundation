# getAxisBottomDiameter

Funktion: Liefert dem Durchmesser der Basis eine Element-Achse.

Achsen, die als Sortierkasten-Element eingesetzt werden, haben häufig eine dickere Basis unterhalb der eigentlichen 4 mm Achse ([__getAxisDiameter__](getAxisDiameter.md)). Dies stellt sicher, dass man noch unterhalb des darauf sitzenden Bauelements kommt, um es aus dem Kasten zu heben. __getAxisBottomDiameter()__ liefert diesen vergößerten Durchmesser für dieses Achs-Basis.

<img width="213" alt="SimpleTestLeveledAxis" src="https://user-images.githubusercontent.com/48654609/167309022-4e0061e3-c5ea-4066-83e5-d7966df9e523.png">

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
getAxisBottomDiameter();
```

## Rückgabewert
Konstanter Wert für den unteren Durchmesser des Absatzes in mm.
