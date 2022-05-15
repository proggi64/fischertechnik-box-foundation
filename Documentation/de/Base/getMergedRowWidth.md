# getMergedRowWidth

Funktion: Liefert die Gesamtbeite einer zusammengefügten Reihe von __Frame__-basierten Elementen. Die Elemente werden so zusammengefügt, dass sie jeweils eine gemeinsame Trennwand haben. __getMergedRowWidth__ kann zur Ermittlung der Breite einer solchen Zeile verwendet werden.

## Use
<pre><code>use &lt;../Base/Alignment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getMergedRowWidth(
  spaces, 
  rotations, 
  count, 
  i=0);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| spaces| Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der  zu verteilenden Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Elemente entspricht. |
| rotations | Gibt für jedes Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. |Die Reihenfolge entspricht der der Elemente. |
| i | Aktueller index. Wird für den rekursiven Aufruf verwendet. |
