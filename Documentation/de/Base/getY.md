# getY

Funktion: Liefert für die Fläche mit dem angegebenen Index *i* die Y-Position. Dabei werden die Tiefen (Y-Werte der *spaces*) plus die angegebene *distance* der Flächen mit niedrigerem Index addiert.

__getY__ wird intern für das Modul __DeployVertical__ verwendet. Die Funktion ermöglicht die Verteilung verschiedener Elemente in Y-Richtung in gleichen Abständen zueinander.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getY(
  spaces, 
  rotations, 
  distance,
  i);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| spaces | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Anzahl der Rotationen muss gleich der Anzahl der Flächen in *spaces* sein. |
| distance | Die Tiefe der Strecke, über welche die Flächen verteilt werden sollen. Ist die Summe der Tiefen größer als diese Fläche, sind die Abstände negativ und die Elemente werden ineinander geschoben. |
| i | Aktueller Index, zu welchem die Y-Position ermittelt werden soll.

## Rückgabewert
Y-Position der Fläche mit Index *i*, so dass alle Flächen mit gelichmäßigen Abständen über *distance* vertikal verteilt sind. Die jeweilige Rotation jeder Fläche wird berücksichtigt. Für i=0 wird stets die Position 0 geliefert.
