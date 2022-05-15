# Merge

Fügt die angegebene Anzahl von Kopien des Children-Elements so aneinander, dass dessen Trennwände zu jeweils einer verschmelzen. __Merge__ ist vor allem sinnvoll für das Aneinanderfügen von Elementen, die durch Trennwände eingerahmt sind. Durch die freie Angabe des *dividerThickness*-Parameters können aber auch beliebige andere Elemente ineinander geschoben werden.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>Merge(
  count,
  space, 
  rotation, 
  dividerThickness = getDividerThickness())
  <i>child</i>
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| count | Anzahl der Kopien des child, die aneinander gefügt werden sollen. |
| space | Fläche, welche das children-Element einnimmt. Hierfür kann die jeweilige __get*ElementName*Space()__-Funktion als Wert übergeben werden. |
| rotation | Gibt für das Children-Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Drehung wird für jedes erzeugte Element angewandt. |
| dividerThickness | Wandstärke des Children-Elements. Standardwert ist die Standardwandstärke von __getDividerThickness()__. |

## Beispiel
<pre><code>use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

space = [30, 15, 5];
volume = getFrameOuterVolume(space);

Merge(3, volume, Rotate0)
    Frame(space);</pre></code>

<img width="355" alt="Merge" src="https://user-images.githubusercontent.com/48654609/168483153-7f969cf5-e06d-4e9e-b070-3214f792b1d6.png">
