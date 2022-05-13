# getDockableEdgedFrameSpace

Funktion: Liefert die Fläche für einen mit __DockableEdgedFrame__ erzeugten Rahmen. Der Platz für die in die Wand hineinragenden optionalen Stege wird nicht mit eingerechnet.

<img width="344" alt="ComplexTestDockableEdgedFrame" src="https://user-images.githubusercontent.com/48654609/168326465-092ff8fa-9027-4002-a818-d70652e15877.png">

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>getDockableEdgedFrameSpace(
  volume, 
  alignX=NoAlign,
  alignY=NoAlign,
  edgeDistance=getStandardEdgeDistance());
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| alignX | __NoAlign__, falls nicht links oder rechts angedockt werden soll. Sonst __AlignLeft__ oder __AlignRight__. |
| alignY | __NoAlign__, falls nicht oben oder unten angedockt werden soll. Sonst __AlignBottom__ oder __AlignTop__. |
| edgeDistance | Zusätzliche Distanz des Rahmens zur der Wand, an die angedockt werden soll. |

## Rückgabewert
Gesamte Fläche, die der Rahmen innerhalb des nutzbaren Bereichs des Sortierkastens benötigt. Die Teile der optionalen Stege und Rahmenwände, die in die Außenwand ragen, werden nicht mit eingerechnet.
