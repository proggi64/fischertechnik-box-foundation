# CenterVertical

Platziert Children-Elemente vertikal zentriert.

Die Tiefe des zu platzierenden Elements (*depth*), sowie die Fläche, in welcher zentriert platziert werden soll (*space*), können als optionale Parameter angegeben werden. Normalerweise muss *elementSpace* für alle Elemente angegeben werden. Ausnahme sind Elemente, deren Ursprungspunkt selbst mittig ist, z.B. __cylinder__ mit *center* = __true__.

*space* hat als Standardwert die Fläche des Sortierkastens 190x130, so dass Elemente mittig in der Box zentriert werden. Die Fläche *space* kann aber abweichend davon auch explizit angegeben werden, so dass Elemente auf beliebigen Flächen zentriert werden können. __CenterVertical__ verwendet das [__Place__](Place.md)-Modul mit den entsprechenden Standardwerten für dessen Parameter.

## Use
```
use <../Base/Placement.scad>
```

## Syntax
```
CenterVertical(
  depth=0, 
  x=0, 
  offset=0, 
  space=getBox190Space())
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| depth | Decimal | Tiefe des Elements, das platziert werden soll. Dies kann z.B. durch __get*ElementName*Space().y__ angegeben werden. |
| x | Decimal | Absolute X-Position auf der angegebenen Fläche *space*. |
| offset | Decimal | Relativer Offset von der Mitte, negative Werte verschieben nach unten. |
| space | \[x,y] | Fläche, auf der die Elemente platziert werden. Standard ist die Fläche des Sortierkastens 190x130. |

## Beispiele

### Element zentriert

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterVertical(depth=getCubeSpace().y, space=getPlacementBaseSpace())
    Cube();
```
    
Platziert das Element mittig auf der Null-Linie der Fläche.

<img width="355" alt="CenterVertical_1" src="https://user-images.githubusercontent.com/48654609/168496779-6793f1e1-c684-47d3-aa94-79ee3210b102.png">

### Element zentriert mit X-Position und Y-Offset

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterVertical(width=getCubeSpace().y, space=getPlacementBaseSpace(), x=10, offset=-5)
    Cube();
```
    
Platziert das Element auf X-Position 10 und verschiebt von der Mitte um 5 mm nach unten.

<img width="355" alt="CenterVertical_2" src="https://user-images.githubusercontent.com/48654609/168496841-896cf440-cdb0-4fc9-920a-fe9bfd229adf.png">
