# getStandAxisDiameter

Funktion: Liefert den Durchmesser für Standachsen vin Elementen. Dort ist der Toleranzbetrag für stehende Achs-Elemente, der vom Durchmesser der Fischertechnik Achse (4mm) abgezogen wird, berücksichtigt ([__getAxisTolerance__](getAxisTolerance.md)). Dieser reduzierte Durchmesser soll sicherstellen, dass die durch 3D-Druck erzeugten Achsen in die Fischertechnik-Teile passen.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getStandAxisDiameter();
```

## Rückgabewert
Konstanter Wert 3,8 für den Durchmesser einer Standachse in mm.
