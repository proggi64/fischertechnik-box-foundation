# CenterHorizontal

Platziert Children-Elemente horizontal zentriert.

Die Breite des zu platzierenden Elements (*width*), sowie die Fläche, in welcher zentriert platziert werden soll (*space*), können als optionale Parameter angegeben werden. Normalerweise muss *elementSpace* für alle Elemente angegeben werden. Ausnahme sind Elemente, deren Ursprungspunkt selbst mittig ist, z.B. __cylinder__ mit *center* = __true__.

*space* hat als Standardwert die Fläche des Sortierkastens 190x130, so dass Elemente mittig in der Box zentriert werden. Die Fläche *space* kann aber abweichend davon auch explizit angegeben werden, so dass Elemente auf beliebigen Flächen zentriert werden können. __Center__ verwendet das __Place__-Modul mit den entsprechenden Standardwerten für dessen Parameter.

## Use
<pre><code>use &lt;../Base/Placement.scad&gt;</pre></code>

## Syntax
<pre><code>CenterHorizontal(
  width=0, 
  y=0, 
  offset=0, 
  space=getBox190Space())
  <i>children</i>
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| width | Breite des Elements, das platziert werden soll. Dies kann z.B. durch __get*ElementName*Space().x__ angegeben werden. |
| y | Absolute Y-Position auf der angegebenen Fläche *space*. |
| offset | Relativer Offset von der Mitte, negative Werte verschieben nach links. |
| space | Fläche, auf der die Elemente platziert werden. Standard ist die Fläche des Sortierkastens 190x130. |

## Beispiele

### Element zentriert
