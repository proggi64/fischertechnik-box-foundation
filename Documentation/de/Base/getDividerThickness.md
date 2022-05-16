# getDividerThickness

Funktion: Liefert die Standardstärke der Wände aller Rahmen und Elemente.

Diesen Wert verwenden alle Elemente für die Angabe der Wandstärken, aber auch zum Berechnen des Platzbedarfs. Wenn der innenraum bei Rahmen ([__Frame__](../ModelBase/Frame.md) angegeben wird, ist __getDividerThickness__ die Grundlage für die Berechnung des äußeren Platzbedarfs.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getDividerThickness();
```

## Rückgabewert
Stärke der geraden Trennwände der Elemente und Rahmen in mm. Zylinderwände sind um einen festen Faktor schmäler. Siehe [__getTubeWallThickness__](getTubeWallThickness.md).
