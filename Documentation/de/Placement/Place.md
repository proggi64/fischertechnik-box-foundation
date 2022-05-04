# Place
Platziert ein oder mehrere Elemente an der angegebenen Position.

- Optional __absolute Position__ mit x/y-Koordinaten
- Optional __links oder rechts und oben oder unten ausgerichtet__ an den Rändern der Box oder einer angegebenen Fläche mit relativen x/y-Koordinaten
- Optional __zentriert__ in der Box oder einer angegebenen Fläche mit relativen x/y-Koordinaten
- Optional mit __Drehung__ des oder der Elemente

__Place__ ist ein *module* und platziert ein oder mehrere *children*. Falls mehr als ein *children* angegeben ist, werden diese an derselben Position platziert. Damit können z.B. abgestufte Trennwände erzeugt werden.

Alle Parameter sind optional. Wie üblich in OpenSCAD sind die Werte in mm angegeben. Ohne Angabe von Parameterwerten wird das Element an Position 0,0 in der linken unteren Ecke der Sortierbox platziert. Als Standardfläche für die Ausrichtung wird die Sortierbox 190 x 130 angenommen, dies kann durch Angabe des Parameters *boxSpace* geändert werden.

## Use
<pre><code>use &lt;../Base/Placement.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>Place(
  x=0,
  y=0,
  elementSpace=[0,0],
  alignX=AlignLeft,
  alignY=AlignBottom,
  rotation=NoRotation, 
  boxSpace=getBox190Space() )
</code></pre>

| Parameter | Beschreibung |
| ------ | ------ |
| x | Ohne Ausrichtung: Absolute Position vom linken Rand<br/>__AlignLeft__: Position vom linken Rand (wie ohne Ausrichtung)<br/>__AlignCenter__: Relative Position vom Zentrum aus (positiv nach rechts, negativ nach links)<br/>__AlignRight__: Relative Position vom rechten Rand (positive Werte nach links) |
| y | Ohne Ausrichtung: Absolute Position vom unteren Rand<br/>__AlignBottom__: Position vom unteren Rand (wie ohne Ausrichtung)<br/>__AlignCenter__: Relative Position vom Zentrum aus (positiv nach oben, negativ nach unten)<br/>__AlignTop__: Relative Position vom oberen Rand (positive Werte nach unten) |
| elementSpace | x/y-Ausdehnung des Elements als Liste von zwei Werten. Wird für alle Positionierungen benötigt, die nicht absolut sind, sowie für Drehungen. |
| alignX | Horizontale Ausrichtung. Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignLeft__ (Standard), __AlignCenter__ und __AlignRight__. Damit das Element korrekt ausgerichtet wird, muss dessen Ausdehnung in *elementSpace* angegeben werden. Fehlt sie, wird die linke untere Ecke des Elements in der Mitte platziert. Jedes Element bietet eine eigene Funktion namens __get*ElementName*Space__, welche diese Ausdehnung liefert. Bei Elementen mit Parametern müssen diese i.d.R. auch dieser Funktion mitgegeben werden. Die Ausrichtung am Rand erfolgt stets so, dass der entsprechende Rand des Elements bündig ist bzw. sich der x-Offset auf diesen Rand bezieht. |
| alignY | Vertikale Ausrichtung. Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignBottom__ (Standard), __AlignCenter__ und __AlignTop__. Damit das Element korrekt ausgerichtet wird, muss dessen Ausdehnung in *elementSpace* angegeben werden. Fehlt sie, wird die linke untere Ecke des Elements in der Mitte platziert. Jedes Element bietet eine eigene Funktion namens __get*ElementName*Space__, welche diese Ausdehnung liefert. Bei Elementen mit Parametern müssen diese i.d.R. auch dieser Funktion mitgegeben werden. Ausrichtung am Rand erfolgt stets so, dass der entsprechende Rand des Elements bündig ist bzw. sich der y-Offset auf diesen Rand bezieht.|
| rotation | Rotation des Elements. Mögliche Werte aus der Datei *PlacementOptions.scad*: __RotateNo__ (Standard), __Rotate90__, __Rotate180__ und __Rotate270__. Die Rotation wird so ausgeführt, dass die neue linke untere Ecke immer auf derselben x/y-Position wie die ursprüngliche linke untere Ecke liegt.
| boxSpace | Fläche, in welcher der Platzierung stattfindet. Standard ist die nutzbare Fläche der Fischertechnik Box 190 x 130 (wie aus der Box 1000). Es könen aber beliebige andere Flächen angegeben werden, um z.B. ausgerichtete Gruppen von Elementen zu bilden. |

## Beispiele
<pre><code>Test/Base/PlacementTestPlace.scad</code></pre>

### Absolute Platzierung

<pre><code>Place()
    Cube();</code></pre>

Position 0,0:

<img width="435" alt="PlacementTestPlace01" src="https://user-images.githubusercontent.com/48654609/166712351-70f319d3-3fdc-4a11-b67a-6f911f6b8c40.png">

<pre><code>Place(15, 5)
    Cube();</code></pre>
    
Position 15,5:

<img width="435" alt="PlacementTestPlace02" src="https://user-images.githubusercontent.com/48654609/166713113-798abc08-902e-4438-8946-cd5e00990f64.png">

### Ausrichtung

<pre><code>Place(elementSpace=getCubeSpace(), alignX=AlignRight, alignY=AlignCenter, boxSpace=getPlacementBaseSpace())
    Cube();</code></pre>

Rechtsbündig und vertikal zentriert:

<img width="435" alt="PlacementTestPlace04" src="https://user-images.githubusercontent.com/48654609/166714749-a3c6ae1e-dea6-4777-ac30-8b39e1a9002b.png">

Der grüne Bereich (*PlacementBase*) wird hier als Grundlage für die Ausrichtung angegeben. Lässt man diese Angabe weg, wird die Fläche der Sortierbox 190 x 130 verwendet.

### Rotation

<pre><code>Place(15, 5, elementSpace=getCubeSpace(), rotation=Rotate90)
    Cube();</code></pre>

Position 15,5 um 90° gedreht:

<img width="435" alt="PlacementTestPlace03" src="https://user-images.githubusercontent.com/48654609/166713683-0e21ac32-c05a-4f5d-92c3-80490dd28e4b.png">
