# DeploySame
Verteilt das angegebene Children-Element in den angegebenen Spalten und Zeilen mit gleichem Abstand auf die angegebene Fläche. Dabei werden auch die Drehungen der einzelnen Elemente berücksichtigt. Es wird nur das erste children-Element verarbeitet.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>DeploySame(
  space, 
  elementSpace, 
  columns=2, 
  rows=1, 
  rotation=Rotate0)
  <i>children<i>
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| space| Wertpaar (Liste mit x- und y-Wert) mit der Fläche auf der die *columns* und *rows* ds Children-Elements verteilt werden. Wenn keine Abstände zwischen den Elementen erzeugt werden sollen, kann der x- und/oder der y-Wert von *space* 0 sein. |
| elementSpace | Fläche, welche das children-Element einnimmt. Hierfür kann die jeweilige __get*ElementName*Space()__-Funktion als Wert übergeben werden. |
| columns | Anzahl der Elemente pro Zeile (*rows*). |
| rows | Anzahl der Elemente pro Spalte (*columns*). |
| rotation | Gibt für das Children-Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Drehung wird für jedes erzeugte Element angewandt. |

## Beispiele

## Gleichmäßge Verteilung
Das Beispiel ist ein Ausschnitt aus der Testdatei *Test/Base/DeploymentTestDeploySame.scad*:

<pre><code>use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=4, rows=2)
    Cube();
</pre></code>

Das Beispiel verteilt das Element __Cube__ auf zwei Zeilen à vier Spalten. Die Abstände sind gleich.

<img width="355" alt="DeploySame_1" src="https://user-images.githubusercontent.com/48654609/168473940-cecfcad2-d398-4255-a148-b8481395fc3e.png">

## Ohne Abstand
<pre><code>use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeploySame([0,0], getCubeSpace(), columns=4, rows=3)
    Cube();
</pre></code>

Das Beispiel verteilt das Element __Cube__ auf drei Zeilen à vier Spalten ohne Abstände.

<img width="355" alt="DeploySame_2" src="https://user-images.githubusercontent.com/48654609/168474379-46ab347c-0632-4469-ae40-009d2be96c62.png">
