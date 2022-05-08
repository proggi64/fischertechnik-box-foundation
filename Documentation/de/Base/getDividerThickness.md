# getDividerThickness

Funktion: Liefert die Standardstärke der Wände aller Rahmen und Elemente.

Diesen Wert verwenden alle Elemente für die Angabe der Wandstärken, aber auch zum Berechnen des Platzbedarfs. Wenn der innenraum bei Rahmen (__Frame()__) angegeben wird, ist __getDividerThickness()__ die Grundlage für die Berechnung des äußeren Platzbedarfs.

## Use
<pre><code>use &lt;../Base/Constants.scad&gt;</pre></code>

## Syntax
<pre><code>getDividerThickness();
</pre></code>

## Rückgabewert
Stärke der geraden Trennwände der Elemente und Rahmen in mm. Zylinderwände sind um einen festen Faktor schmäler. Siehe __getTubeWallThickness()__.
