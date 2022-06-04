# getAxisTolerance

Funktion: Liefert den Toleranzbetrag für stehende Achs-Elemente, der vom Durchmesser der Fischertechnik Achse (4mm) abgezogen wird. Dieser Betrag soll sicherstellen, dass die durch 3D-Druck erzeugten Achsen in die Fischertechnik-Teile passen. Dieser Wert fließt in das Ergebnis der Funktion [__getStandAxisDiameter__](getStandAxisDiameter.md) ein.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getAxisTolerance();
```

## Rückgabewert
Konstanter Wert 0,2 für den Abzugsbetrag vom Durchmesser einer Achse in mm.
