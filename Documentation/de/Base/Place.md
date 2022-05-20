# Place

Platziert die Children-Elemente auf die angegebene Position. __Place__ wird am häufigsten zm Platzieren von Elementen innerhaalb des Sortierkastens eingesetzt.

__Place__ kann Elemente auf Flächen ausrichten (lnks-, rechtsbündig, oben oder unten) oder Elemente beim Platzieren drehen. Die Ausrichtungsfläche ist standardmäßig auf die Größe eines Sortierkastens 190x130 gesetzt, kann aber durch einen abweichenden *boxSpace*-Parameter auf beliebige Flächen geändert werden.

Sinnvoll ist die Angabe eines einzelnen Elements oder einer zuvor mit einem Module definierten Gruppe. Wenn mehrere Elemente angegeben sind, werden diese an derselben Stelle verschmolzen platziert.

## Use
```
use <../Base/Placement.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
Place(
  x=0, y=0, 
  elementSpace=[0,0], 
  alignX=AlignLeft, 
  alignY=AlignBottom, 
  rotation=NoRotation, 
  boxSpace=getBox190Space())
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| x | Decimal | Ohne Ausrichtung: Absolute X-Position auf der angegebenen Fläche *boxSpace*<br/>Mit horizontaler Ausrichtung: Relativer Offset von der Mitte, negative Werte verschieben nach links. |
| y | Decimal | Ohne Ausrichtung: Absolute Y-Position auf der angegebenen Fläche *boxSpace*<br/>Mit vertikaler Ausrichtung: Relativer Offset von der Mitte, negative Werte verschieben nach unten. |
| elementSpace | \[x,y] | Fläche des zu platzierenden Elements. Hier wird normalerweise __get*ElementName*Space()__ verwendet. Ohne Angabe wird er Ursprungspunkt des Elements platziert. |
| alignX | Integer (Enum) | Horizontale Ausrichtung der Children-Elemente zueinander. Grundlage ist die in *elementSpace* angegebenen Fläche, sowie die in *rotation* angegebene Drehung. __AlignLeft__ richtet am linken Rand von *boxSpace* aus (wie __NoAlign__), __AlignRight__ am rechten Rand, __AlignCenter__ zentriert das Element. |
| alignY | Integer (Enum) | Vertikale Ausrichtung der Children-Elemente zueinander. Grundlage ist die in *elementSpace* angegebenen Fläche, sowie die in *rotation* angegebene Drehung. __AlignBottom__ richtet am unteren Rand von *boxSpace* aus (wie __NoAlign__), __AlignTop__ am oberen Rand, __AlignCenter__ zentriert das Element. |
| rotation | Integer (Enum) | Gibt an, wie das Element rotiert werden soll. Mögliche Werte sind die in *PlacementOptions.scad* definierten Konstanten __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| boxSpace | \[x,y] | Fläche, auf der die Elemente platziert werden. Standard ist die Fläche des Sortierkastens 190x130. |

## Beispiele

### Ohne Parameter
```
use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

Place()
    Cube();
```

Wenn alle Standardparameter übernommen werden, wird das Child-Element an Position 0,0 (linke untere Ecke des Sortierkastens) platziert.

<img width="355" alt="Place_1" src="https://user-images.githubusercontent.com/48654609/168483755-c7f5a726-434b-47ca-8535-031530f50aa2.png">

### Feste x/y-Position
```
use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

Place(15, 5)
    Cube();
```

<img width="435" alt="PlacementTestPlace02" src="https://user-images.githubusercontent.com/48654609/168484600-ba5da09d-fa92-4260-a413-123324c66ac9.png">

### Zentriert und um 180° gedreht

```
use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

    Place(
        elementSpace=getCubeSpace(), 
        rotation=Rotate180, 
        alignX=AlignCenter, 
        alignY=AlignCenter, 
        boxSpace=getPlacementBaseSpace())
        Cube();
```

<img width="355" alt="Place_3" src="https://user-images.githubusercontent.com/48654609/168484762-89dfee54-a96f-46fa-a005-556fd4f39577.png">
