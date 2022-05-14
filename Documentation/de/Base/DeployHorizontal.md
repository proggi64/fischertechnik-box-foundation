# DeployHorizontal
Verteilt die angegebenen Children-Elemente mit gleichem Abstand auf die angegebene Strecke auf der Y-Position Null. Dabei werden auch die Drehungen der einzelnen Elemente angegeben und berücksichtigt.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>DeployHorizontal(
  width, 
  spaces, 
  rotations);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| width | Strecke, über die die angegebenen Elemente verteilt werden. |
| spaces| Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | Gibt für jedes Children-Element an, wie es vor dem Vertielne gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. |

## Beispiele
Das Beispiel ist ein Ausschnitt aus der Testdatei *Test/Base/DeploymentTestDeployHorizontal.scad*:

<pre><code>use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180]) {
    Cube();
    Cube();
    Cube();
}</pre></code>

Das Beispiel verteilt drei gelbe Elemente __Cube__ auf der grünen __PlacementBase__, die hier zur Veranschaulichung unter die Elemente gelegt wird. Die Rotationen zeigen, dass die richtige Breite nach der jeweiligen Rotation berücksichtigt wird. Die Abstände sind identisch.

<img width="355" alt="DeployHorizontalSample" src="https://user-images.githubusercontent.com/48654609/168444058-dd0ef1e6-d41f-4f6c-bf0b-4c4fa788a45e.png">
