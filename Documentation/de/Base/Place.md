# Place

Platziert die Children-Elemente auf die angegebene Position. __Place__ wird am häufigsten zm Platzieren von Elementen innerhaalb des Sortierkastens eingesetzt.

__Place__ kann Elemente auf Flächen ausrichten (lnks-, rechtsbündig, oben oder unten) oder Elemente beim Platzieren drehen. Die Ausrichtungsfläche ist standardmäßig auf die Größe eines Sortierkastens 190x130 gesetzt, kann aber durch einen abweichenden *boxSpace*-Parameter auf beliebige Flächen geändert werden.

Sinnvoll ist die Angabe eines einzelnen Elements oder einer zuvor mit einem Module definierten Gruppe. Wenn mehrere Elemente angegeben sind, werden diese an derselben Stelle verschmolzen platziert.

## Use
<pre><code>use &lt;../Base/Placement.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>Place(
  x=0, y=0, 
  elementSpace=[0,0], 
  alignX=AlignLeft, 
  alignY=AlignBottom, 
  rotation=NoRotation, 
  boxSpace=getBox190Space())
  <i>children</i>
</pre></code>

## Beispiele

### Ohne Parameter
<pre><code>use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

Place()
    Cube();</pre></code>

Wenn alle Standardparameter übernommen werden, wird das Child-Element an Position 0,0 (linke untere Ecke des Sortierkastens) platziert.

<img width="355" alt="Place_1" src="https://user-images.githubusercontent.com/48654609/168483755-c7f5a726-434b-47ca-8535-031530f50aa2.png">

### Feste x/y-Position
<pre><code>use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

Place(15, 5)
    Cube();</pre></code>

<img width="435" alt="PlacementTestPlace02" src="https://user-images.githubusercontent.com/48654609/168484600-ba5da09d-fa92-4260-a413-123324c66ac9.png">

### Zentriert und um 180° gedreht

<pre><code>use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

PlacementBase();

    Place(
        elementSpace=getCubeSpace(), 
        rotation=Rotate180, 
        alignX=AlignCenter, 
        alignY=AlignCenter, 
        boxSpace=getPlacementBaseSpace())
        Cube();</pre></code>

<img width="355" alt="Place_3" src="https://user-images.githubusercontent.com/48654609/168484762-89dfee54-a96f-46fa-a005-556fd4f39577.png">
