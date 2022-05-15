# MergeRow

Fügt die Children horizontal so zusammen, dass ihre Außenwände miteinander verschmelzen.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>MergeRow(
  spaces, 
  rotations, 
  dividerThickness = getDividerThickness())
  <i>children</i>
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| spaces| Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | Gibt für jedes Children-Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. |
| dividerThickness | Wandstärke der Elemente. Standardwert ist die Standardwandstärke von __getDividerThickness()__. |

## Beispiel
<pre><code>use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

space = [30, 15, 5];
volume = getFrameOuterVolume(space);

MergeRow(
    [volume, volume, volume],
    [NoRotation, Rotate90, NoRotation]) {
    Frame(space);
    Frame(space);
    Frame(space);
}</pre></code>

Das Beispiel fügt drei __Frame__-Elemente zusammen. Die Wandstärke zwischen den Elementen entspricht der Standardwandstärke.

<img width="355" alt="MergeRow" src="https://user-images.githubusercontent.com/48654609/168481994-c997db5d-bfdd-4edc-90c5-424990725693.png">
