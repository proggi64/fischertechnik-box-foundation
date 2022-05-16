# getMergedRowWidth

Funktion: Liefert die Gesamtbeite einer zusammengefügten Reihe von [__Frame__](../ModelBase/Frame.md)-basierten Elementen. Die Elemente werden so zusammengefügt, dass sie jeweils eine gemeinsame Trennwand haben. __getMergedRowWidth__ kann zur Ermittlung der Breite einer solchen Zeile verwendet werden.

## Use
```
use <../Base/Alignment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getMergedRowWidth(
  spaces, 
  rotations, 
  i=0);
```

| Parameter | Type | Beschreibung |
| ------ | ------ | ------ |
| spaces| \[\[x,y]\[x,y]...] | Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der  zu verteilenden Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Elemente entspricht. |
| rotations | \[RotateX, RotateX,...] | Gibt für jedes Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. |Die Reihenfolge entspricht der der Elemente. |
| i | Ineteger | Aktueller index. Wird für den rekursiven Aufruf verwendet. |
