# Center

Platziert Children-Elemente horizontal und/oder vertikal zentriert.

Die Fläche des zu platzierenden Elements (*elementSpace*), sowie die Fläche, in welcher zentriert platziert werden soll (*space*), können als optionale Parameter angegeben werden. Normalerweise muss *elementSpace* für alle Elemente angegeben werden. Ausnahme sind Elemente, deren Ursprungspunkt selbst mittig ist, z.B. __cylinder__ mit *center* = __true__.

*space* hat als Standardwert die Fläche des Sortierkastens 190x130, so dass Elemente mittig in der Box zentriert werden. Die Fläche *space* kann aber abweichend davon auch explizit angegeben werden, so dass Elemente auf beliebigen Flächen zentriert werden können. __Center__ verwendet das [__Place__](Place.md)-Modul mit den entsprechenden Standardwerten für dessen Parameter.

## Use
```
use <../Base/Placement.scad>
```

## Syntax
```
Center(
  space=getBox190Space(), 
  elementSpace=[0,0])
  <i>children</i>
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x,y] | Fläche, auf der die Elemente platziert werden. Standard ist die Fläche des Sortierkastens 190x130. |
| elementSpace | \[x,y] | Fläche des zu platzierenden Elements. Hier wird normalerweise __get*ElementName*Space()__ verwendet. Ohne Angabe wird der Ursprungspunkt des Elements platziert. |

## Beispiele

### Element zentriert

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

Center(getPlacementBaseSpace(), getCubeSpace())
  Cube();
```
 
Hier wird als Fläche, auf der zentriert wird, die Fläche von __PlacementBase__ angegeben. __PlacementBase__ ist in *TestHelper.scad* definiert und soll als grüne Untergrundfläche die relative Positionierung von Elementen auf einer Fläche verdeutlichen.

<img width="355" alt="Center_1" src="https://user-images.githubusercontent.com/48654609/168495022-b54f6bd1-becf-4340-abf5-879ec1dc89b0.png">

### Nullpunkt des Elements zentriert

Lässt man die Größenangabe des Elements (*elementSpace*) weg, wird eine Ausdehnung von 0/0 angenommen. Das platziert den Ursprung des Elements zentriert. Der Ursprung ist bei allen Elementen in der linken unteren Ecke des Elements.

```
use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

Center(getPlacementBaseSpace())
  Cube();
```

<img width="355" alt="Center_2" src="https://user-images.githubusercontent.com/48654609/168495102-3c64cc7e-d257-48c2-977d-ec3a87d4841e.png">

