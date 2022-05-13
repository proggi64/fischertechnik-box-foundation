# getDockableEdgedFrameWidth

Funktion: Liefert den zusätzlichen Abstand eines links oder rechts angedockten Rahmens, wenn dieser über __DockableEdgedFrame__ erzeugt wird. Der Abstand wird zur Wand eingehalten und zusätzlich werden zwei Stege eingefügt, die mit der Außenwand verschmelzen.

<img width="344" alt="ComplexTestDockableEdgedFrame" src="https://user-images.githubusercontent.com/48654609/168326465-092ff8fa-9027-4002-a818-d70652e15877.png">

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>getDockableEdgedFrameWidth(
  edgeDistance, 
  alignX=NoAlign);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| edgeDistance | Zusätzliche Distanz des Rahmens zur Wand, falls an die linke oder rechte Wand angedckt werden soll. |
| alignX | __NoAlign__, falls nicht angedockt werden soll. Dann wird 0 zurückgeliefert. Sonst __AlignLeft__ oder __AlignRight__. |

## Rückgabewert
Zusätzliche Distanz des Rahmens zur Wand, an die gedckt wird. Der Wert ist 0, wenn für *alignX* __NoAlign__ übergeben wird.
