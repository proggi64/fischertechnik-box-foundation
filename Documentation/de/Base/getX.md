# getX

Funktion: Liefert für die Fläche mit dem angegebenen Index *i* die X-Position, wenn die angegebenen Flächen mit gleichen Abständen über die Strecke *distance* verteilt sind.

__getX__ wird intern für das Modul __DeployHorizontal__ verwendet. Die Funktion ermöglicht die Verteilung verschiedener Elemente mit individueller Drehung in gleichen Abständen zueinander.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getX(
  spaces, 
  rotations, 
  distance,
  i);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| spaces | Liste der Flächen, die über *distance* verteilt werden sollen. |
| rotations | Liste der Rotationen zu jeder Fläche, die bei der Verteilung berücksichtigt werden soll. Die Anzahl der Rotationen muss gleich der Anzahl der Flächen in *spaces* sein. |
| distance | Die Breite der Strecke, über welche die Flächen verteilt werden sollen. Ist die Summe der Breiten größer als diese Fläche, sind die Abstände negativ und die Elemente werden ineinander geschoben. |
| i | Aktueller Index, zu welchem die X-Position ermittelt werden soll.

## Rückgabewert
X-Position der Fläche mit Index *i*, so dass alle Flächen mit gelichmäßigen Abständen über *distance* verteilt sind. Die jeweilige Rotation jeder Fläche wird berücksichtigt. Für i=0 wird stets die Position 0 geliefert.
