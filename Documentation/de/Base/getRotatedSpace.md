# getRotatedSpace

Liefert eine Fläche so transformiert, dass die angegebene Drehung angewandt wird. Dadurch werden bei Drehungen um 90° oder 270° die x- und y-Koordinaten vertauscht.

## Use
```
use <../Base/Rotation.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getAxisBottomDiameter(
  space,
  rotation=NoRotation);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x,y] | Fläche, die entsprechend der angegebenen *rotation* transformiert werden soll. |
| rotation | Integer (Enum) | Drehung, die für die Transformation angewandt werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. |
