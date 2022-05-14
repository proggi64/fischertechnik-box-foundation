# DeployHorizontal
Verteilt die angegebenen Children-Elemente mit gleichem Abstand auf die angegebene Strecke auf der Y-Position Null. Dabei werden auch die Drehungen der einzelnen Elemente angegeben und berücksichtigt. Optional kann eine vertikale Ausrichtung der Elemente relativ zueinander angegeben werden.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>DeployHorizontal(
  width, 
  spaces, 
  rotations,
  alignY=NoAlign);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| width | Strecke, über die die angegebenen Elemente verteilt werden. Wird hier Null angegeben, werden die Elemente direkt ohne Abstand aneinander gesetzt. |
| spaces| Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | Gibt für jedes Children-Element an, wie es vor dem Vertielne gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. |
| alignY | Vertikale Ausrichtung der Children-Elemente zueinander. Grundlage sind die in *spaces* angegebenen Flächen, sowie die in *rotations* angegebenen Drehungen der einzelnen Elemente. __AlignBottom__ richtet auf der unteren Linie aus (wie __NoAlign__), __AlignTop__ am höchsten Y-Wert der Elemente, __AlignCenter__ zentriert alle Elemente um das Zentrum des tiefsten Elements. |

## Beispiele

## Ohne Ausrichtung
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

## Zentriert ausgerichtet

<pre><code>use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180],
    alignY=AlignCenter) {
    Cube();
    Cube();
    Cube();
}</pre></code>

Wie das vorige Beispiel, aber der optionale Parameter *alignY* wird auf __AlignCenter__ gesetzt.

<img width="355" alt="DeployHorizontal_Center" src="https://user-images.githubusercontent.com/48654609/168445149-ada86163-d7df-4982-b52b-884f67ce5b55.png">

## Ohne Abstand mit Ausrichtung oben

<pre><code>use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    0, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180],
    alignY=AlignTop) {
    Cube();
    Cube();
    Cube();
}</pre></code>

Die Elemente werden direkt aneinander platziert. Bei __Frame__-Elementen werden die Zwischenwände doppelt so dick wie eine einzelne Wand. Um in solchen Fällen die  Zwischenwände auf die Einzelstärke zu reduzieren, muss stattdessen __MergeRow__ verwendet werden.

<img width="355" alt="DeployHorizontal_Zero" src="https://user-images.githubusercontent.com/48654609/168445294-81a83274-f977-46a3-b1d0-7d9dd05166fb.png">
