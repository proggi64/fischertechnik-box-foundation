# Frame

Erzeugt einen Rahmen mit optional einzeln offenen Wänden.

Der Rahmen besteht aus dem Boden ([__Space__](Space.md)) und bis zu vier Wänden. Standard sind Wände an allen vier Seiten. Über boolsche Parameter können die einzelnen Wände ausgeschaltet werden.

__Frame__ ist die Grundlage für eine Vielzahl von Elementen.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
Frame(
  volume, 
  tolerance=getTolerance(), 
  openLeft=false, 
  openRight=false, 
  openTop=false, 
  openBottom=false);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des Inneraums. Auf Lämge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. |
| tolerance | Decimal | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen eaxakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |
| openLeft | Boolean | Wenn __true__, dann wird die linke Wand weggelassen. Die Fläche wird dadurch nicht verkleinert, d.h. die Breite der Wand wird weiterhin von der Grundfläche benötigt. |
| openRight | Boolean | Wenn __true__, dann wird die rechte Wand weggelassen. Die Fläche wird dadurch nicht verkleinert, d.h. die Breite der Wand wird weiterhin von der Grundfläche benötigt. |
| openTop | Boolean | Wenn __true__, dann wird die hintere Wand weggelassen. Die Fläche wird dadurch nicht verkleinert, d.h. die Breite der Wand wird weiterhin von der Grundfläche benötigt. |
| openBottom | Boolean | Wenn __true__, dann wird die vordere Wand weggelassen. Die Fläche wird dadurch nicht verkleinert, d.h. die Breite der Wand wird weiterhin von der Grundfläche benötigt. |

## Beispiel

```
use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

// With tolerance
translate([-getDividerThickness(), -getDividerThickness(), 0])
    Frame([10,10,10]);

// No tolerance
translate([20-getDividerThickness(), -getDividerThickness(), 0])
    Frame([10,10,10], 0);
    
// No tolerance
translate([40-getDividerThickness(), -getDividerThickness(), 0])
    Frame([45,30,15], 0);
    
// With tolerance
translate([100-getDividerThickness(), -getDividerThickness(), 0])
    Frame([45,30,15]);

// One Wall deleted    
translate([-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true);

translate([20-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openRight=true);

translate([40-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openTop=true);

translate([60-getDividerThickness(), 40-getDividerThickness(), 0])
    Frame([10,10,10], openBottom=true);
    
// Multiple walls deleted
translate([-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true, openTop=true);

translate([20-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openRight=true, openBottom=true);

translate([40-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openLeft=true, openRight=true);

translate([60-getDividerThickness(), 60-getDividerThickness(), 0])
    Frame([10,10,10], openTop=true, openBottom=true);
```

Einige geschlossene und offene Rahmen, mit und ohne Toleranz.

<img width="317" alt="Frame_2" src="https://user-images.githubusercontent.com/48654609/169053673-e71eeddd-ae88-421a-b823-02a6b9676fdd.png">
