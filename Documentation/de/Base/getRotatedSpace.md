# getRotatedSpace

Liefert eine Fläche so transformiert, dass die angegebene Drehung angewandt wird. Dadurch werden bei Drehungen um 90° oder 270° die x- und y-Koordinaten vertauscht.

## Use
<pre><code>use <../Base/Rotation.scad>
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>getAxisBottomDiameter(
  space,
  rotation=NoRotation);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| space | Fläche, die entsprechend der angegebenen *rotation* transformiert werden soll. |
| rotation | Drehung, die fpr die Transformation angewandt werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. |
