# Elemente mit 3D-Drucker testen

Bevor neue Elemente in Sortierkästen integriert eingebaut werden, sollten sie erst in einem realen Druck getestet werden. Ein Fehlversuch für eine ganze Box ist leider ziemlich teuer. Wenn dann der Kasten weggeworfen werden muss, weil eines der Teile nicht in das verwendete Element passt, ist das ärgerlich und für die Umwelt schlimmer, als wenn nur ein einzelnes Test-Element verdruckt wird.

## Ordner Test/Print

Die mit [__Space__](ModelBase/Space.md) unterlegten Teile sind einzeln nicht druckfähig, weil die Schicht, die in den Boden versenkt wird, zu dünn ist. Um eine druckbare Basis zu bekommen, wurde im Ordner Test/Print das Modul __TestPrint.scad__ zur Verfügung gestellt.

Für jedes Element aus dem Ordner __Elements__ gibt es ein __TestPrint__-Skript mit dem Namensschema __TestPrint*ElementName*.scad__, das für parameterlose Elemente vollständig mit dem VS-Code-Snippet *3dpt* generiert werden kann. Hier der Test für [__AxisCoupling__](Elements/AxisCoupling.md):

```
// 3D Print Test
// AxisCoupling

use <../TestPrint.scad>
use <../../Elements/AxisCoupling.scad>

TestPrint(getAxisCouplingSpace())
    AxisCoupling();
```

## TestPrint
__TestPrint__ erstellt eine Basisfläche in druckbarer, aber sehr dünner Stärke, deren Oberfläche auf der 0-Linie der Z-Position liegt, wie auch die der Stortierkästen. Die Element-__children__ des Moduls werden dadurch mit der Fläche verschmolzen. Es wird quasi der Sortierkasten simuliert. Fläche und das Element werden dann noch um die Bodenstärke angehoben, so dass das resultierende 3D-Objekt an der Position 0,0,0 als STL-Datei exportiert werden kann.

### Syntax
```
TestPrint(
    space)
    {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x,y] | Breite und Tiefe der druckbaren Fläche. In den meisten Fällen dürfte das der Fläche entsprechen, die von __get*ElementName*Space()__ für das zu druckende Element geliefert wird. |

