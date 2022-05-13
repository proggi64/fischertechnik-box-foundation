# DockableEdgedFrame

Erzeugt einen Rahmen für Bauteile, der optional an bis zu zwei Wänden angedockt werden kann. Dabei kann eine zusätzliche Distanz zur Wand angegeben werden. Außerdem wird an der angedockten Seite keine Rahmenwand erzeugt, sondern zwei Stege, welche die Distanz zur Wand des Sortierkastens überbrücken. Diese Art Rahmen wurde in den Elektronikkästen ec1 bis 3 für Silberlinge eingesetzt, sowie für die Kassetten mit den Kleinteilen.

<img width="344" alt="DockableEdgedFrame" src="https://user-images.githubusercontent.com/48654609/168328989-99e95105-f7ee-47cc-b4fc-d1087c189df0.png">

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>DockableEdgedFrame(
  volume, 
  alignX=NoAlign,
  alignY=NoAlign,
  edgeDistance=getStandardEdgeDistance(), 
  frameEdge=getStandardCornerLength(), 
  webDistance=getStandardWebDistance());
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| volume | Volumen des Bauelements, welches in dem Rahmen passen soll. Die Rahmen und die Toleranz werden im Rückgabewert berücksichtigt. |
| alignX | Gibt an, ob an die linke (__AlignLeft__), rechte (__AlignRight__) oder keine (__NoAlign__) der beiden Wände angedockt werden soll. |
| alignY | Gibt an, ob an die untere (__AlignBottom__), obere (__AlignTop__) oder keine (__NoAlign__) der beiden Wände angedockt werden soll. |
| edgeDistance | Zusätzliche Distanz des Rahmens zur Wand, falls an eine Wand angedockt werden soll. |
| frameEdge | Länge der Rahmenwand von der Ecke bis zur Lücke der Wand. Der Rahmen wird normalerweise nur für die Ecken erzeugt und hat an jeder Seite mittig eine Lücke. Dieser Wert gibt an, wie weit der Rahmen von den Ecken aus reicht. Bei den ec-Kästen waren dies 15 mm. |
| webDistance | Wird der Rahmen angedockt, werden keine Rahmenwände erzeugt, sondern Stege
