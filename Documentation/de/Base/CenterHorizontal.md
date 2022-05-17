# CenterHorizontal

Platziert Children-Elemente horizontal zentriert.

Die Breite des zu platzierenden Elements (*width*), sowie die Fläche, in welcher zentriert platziert werden soll (*space*), können als optionale Parameter angegeben werden. Normalerweise muss *elementSpace* für alle Elemente angegeben werden. Ausnahme sind Elemente, deren Ursprungspunkt selbst mittig ist, z.B. __cylinder__ mit *center* = __true__.

*space* hat als Standardwert die Fläche des Sortierkastens 190x130, so dass Elemente mittig in der Box zentriert werden. Die Fläche *space* kann aber abweichend davon auch explizit angegeben werden, so dass Elemente auf beliebigen Flächen zentriert werden können. __CenterHorizontal__ verwendet das [__Place__](Place.md)-Modul mit den entsprechenden Standardwerten für dessen Parameter.

## Use
```
use <../Base/Placement.scad>
```

## Syntax
```
CenterHorizontal(
  width=0, 
  y=0, 
  offset=0, 
  space=getBox190Space())
  <i>children</i>
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite des Elements, das platziert werden soll. Dies kann z.B. durch __get*ElementName*Space().x__ angegeben werden. |
| y | Decimal | Absolute Y-Position auf der angegebenen Fläche *space*. |
| offset | Decimal | Relativer Offset von der Mitte, negative Werte verschieben nach links. |
| space | \[x,y] | Fläche, auf der die Elemente platziert werden. Standard ist die Fläche des Sortierkastens 190x130. |

## Beispiele

### Element zentriert

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterHorizontal(width=getCubeSpace().x, space=getPlacementBaseSpace())
    Cube();
```
    
Platziert das Element mittig auf der Null-Linie der Fläche.

<img width="355" alt="CenterHorizontal_1" src="https://user-images.githubusercontent.com/48654609/168496354-43fb5478-c9b2-49ab-bc7d-86e8853d47c7.png">

### Element zentriert mit Y-Position und X-Offset

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterHorizontal(width=getCubeSpace().x, space=getPlacementBaseSpace(), y=10, offset=-5)
    Cube();
```
    
Platziert das Element auf Y-Position 10 und verschiebt von der Mitte um 5 mm nach links.

<img width="355" alt="CenterHorizontal_2" src="https://user-images.githubusercontent.com/48654609/168496447-a969bb19-19b4-4b92-a3f1-9aebba675616.png">
