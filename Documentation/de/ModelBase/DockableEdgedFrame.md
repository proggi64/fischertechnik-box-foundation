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
| webDistance | Wird der Rahmen angedockt, werden keine Rahmenwände erzeugt, sondern kurze Stege, die im 90°-Winkel zur Außenwand stehen. Der Abstand der Stege zur Ecke wird bei *webDistance* angegeben. Der Standardwert von __getStandardWebDistance()__ kann hier optional überschrieben werden. |

## Beispiele

Standardrahmen für Silberling (75 x 45 mm) mit 5 mm Wandhöhe, der an keine Wand des Sortierkastens angedockt wird.

<pre><code>DockableEdgedFrame([75, 45, 5]);</pre></code>

<img width="344" alt="DockableEdgedFrame_1" src="https://user-images.githubusercontent.com/48654609/168334867-6615a321-eea0-4325-9640-6d25a1f51989.png">

An die linke Wand angedockter Rahmen für Silberling. Der Abstand zur linken Wand wird durch zwei Stege gehalten, die in den negativen X-Koordinatenbereich ragen. Diese Teile, sowie die beiden Rahmenwände verschmelzen mit der Wand der Sortierbox, wenn der Rahmen dort platziert wird.

<pre><code>DockableEdgedFrame([45, 75, 5], alignX=AlignLeft);</pre></code>

<img width="344" alt="DockableEdgedFrame_2" src="https://user-images.githubusercontent.com/48654609/168335410-cf73aa50-5d66-4bc7-9c93-7843adea195f.png">
