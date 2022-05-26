# Wie konstruiere ich einen Sortierkasten?
Im folgenden Tutorial erfährt man
- was man braucht
- wie man startet
- wie man Elemente platziert
- wie man die Datei für den 3D-Drucker erzeugt

## Was brauche ich?
- Computer
- [OpenSCAD](https://openscad.org/) - gibt's für alle größeren Betriebssysteme und experimentell auch schon über WebAssembly im Browser
- [Kenntnisse](https://openscad.org/documentation.html#tutorial) der SCAD-Sprache
- Download oder Fork auf dem lokalen Computer [dieser Bibliothek](https://github.com/proggi64/fischertechnik-box-foundation)
- 3D-Drucker mit mindestens 20 x 14 cm Druckfläche (oder 3D-Druck-Dienstleister)

## Erste Schritte: Eine kleine Box für den Elektronik-Grundbaustein
Ziel des Tutorials ist der Bau eines 130 x 95 kleinen Sortierkastens, in den der Silberling mitsamt Verbindungsstecker, Drehknopf, zwei Kontrolleuchten und einigen Kleinteilen Platz findet. Der Kasten ist nur halb so groß wie ein Standardeinsatz im Fischertechnik-Kasten 1000. Wenn man den stapeln will, hat man daneben noch Platz für einen zweiten.

![h4 G](../images/h4%20G.png)

Falls man sein Ergebnis hier auf GitHub veröffentlichen will: Der Platz für Eigenentwürfe ist im Ordner __Building Kits__ vorgesehen. Die relativen Pfade bei den __use__-Anweisungen gehen davon aus, dass die Dateien dort in einem weiteren Unterverzeichnis stehen. Das Beispiel hier existiert bereits im Unterverzeichnis __hobby__ als __h4 GB.scad__.

### Neue SCAD.Datei
Wir legen die SCAD-Datei an und speichern sie.

- OpenSCAD starten
- __Datei__ | __Neue Datei__
- Optional: Kommentarzeilen, die die Box identifizieren

```
// Box 130x95
// h4 G
// Elektronik Grundbeistein
// 39581
```

- __Datei__ | __Datei speichern__

![Datei speichern](../images/tutSave.png))

Erst nach dem Speichern können die Pfade der noch folgenden __use__-Anweisungen aufgelöst werden, damit wir ein Vorschaubild unseres Kastens sehen können.

Wenn wir die Datei wie hier im Beispiel innerhalb der Pfadstruktur der Bibliothek anlegen (hier __tutorial__), bauen wir automatisch eine Kopplung an GitHub auf, d.h. wir können unser Beispiel auch ins Git pushen, falls wir einen Fork statt eines Downloads verwenden. Wem das zu kompliziert ist, dem empfehle ich einfach die Bibliothek per Download zu holen.

### Der Basiskasten
Wir legen den Basiskasten 130 x 95 an.

- per __use__ Base/Boxes.scad importieren
- [__Box130__](Base/Box130.md) aufrufen, um diesen Grundkasten als Element zu verwenden

```
use <../../Base/Boxes.scad>

Box130();
```

Die leere Box wird so platziert, dass die Oberfläche des Bodens exakt auf Höhe 0 liegt. Der verwendbare Bereich liegt an X/Y-Position 0,0, so dass man die Wände bi der positionierung nicht berücksichtigen muss.

![Box 130](../images/tutBox130.png))

### Für die Kleinteile
Wir erzeugen eine Trennwand für den Bereich, in den später die Kabel, Kondensator und der Widerstand Platz finden.

- per __use__ ModelBase/Simple.scad importieren
- mit [__Divider__](ModelBase/Divider.md) die Trennwand erzeugen

```
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

Box130();

boxSpace=getBox130Space();
dividerWidth = 20;

Divider(dividerWidth, boxSpace=boxSpace);
```

![Divider](../images/tutDivider.png))

Zumeist ist es eine gute Idee, konstante Werte Variablen zuzuweisen. Wir brauchen diese später noch an anderen Stellen, deswegen werden hier *boxSpace* und *dividerWidth* zugewiesen, bevor sie __Divider__ übergeben werden.

Zwei Anmerkungen zu SCAD:

"Variablen" sind nicht variabel. Sie können nicht wie in den prozeduralen Sprachen Java oder C verändert werden. Stattdessen bekommen sie den zuletzt zugewiesenen Wert, und der gilt auch in allen Zeilen desselben Gültigkeitsbereichs zuvor. Wenn in Zeile 10 x=5 steht und in Zeile 20 x=10, dann hat x in Zeile 5 schon den Wert 10. Eine Warnung in der Konsole weist zumindest auf die überschreibende Zuweisung hin. Wenn man Variablen verändern will, muss man die __let__-Anweisung verwenden.

Optionale Parameter kann man durch Angabe des Parameternamens beim Aufruf setzen. Das passiert im Beispiel, wo der Name des optionalen Parameters *boxSpace* zufällig dem der Variablen *boxSpace* entspricht. Was was ist, erkennt SCAD am Kontext.

### Für den Silberling
Wir erzeugen einen an zwei Wände angedockten Rahmen für den Silberlink rechts vorne in der Ecke.

- per __use__ Elements/FrameElectronicBlock.scad importieren
- per __use__ Base/Placement.scad importieren
- per __include__ Base/PlacementOptions.scad importieren
- Aufruf von [__FrameElectronicBlock__](Elements/FrameElectronicBlock.md) mit den richtigen Werten
- Platzieren mit dem [__Place__](Base/Place.md)-Modul

```
use <../../Base/Boxes.scad>
use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>
use <../../Elements/FrameElectronicBlock.scad>

include <../../Base/PlacementOptions.scad>

Box130();

boxSpace=getBox130Space();
dividerWidth = 20;
electronicBlockSpace = getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom);

Divider(dividerWidth, boxSpace=boxSpace);

Place(alignX=AlignRight, alignY=AlignBottom, 
    elementSpace=electronicBlockSpace,
    boxSpace=getBox130Space())
    FrameElectronicBlock(alignX=AlignRight, alignY=AlignBottom);
```

![FrameElectronicBlock](../images/tutElectronicBlock.png))

Placement.scad enthält das [__Place__](Base/Place.md)-Modul. Das kann u.a. Elemente auf Flächen ausrichten. Das verwenden wir hier, um das Element [__FrameElectronicBlock__](Elements/FrameElectronicBlock.md) in der vorderen rechten Ecke zu verankern.

Dafür benötigt __Place__ die Fläche, die das Element hat (*elementSpace*), und die Fläche, auf der ausgerichtet wird ([__getBox130Space__](Base/getBox130Space.md)). In OpenSCAD kann man das nicht über das Element ermitteln, sondern muss es explizit in einer separaten Funktion zur Verfügung stellt. jedes Element der Bibliothek hat dafür die Funktion mit den Namensschema __get*ElementName*Space()__, wobei man *ElementName* durch den tatsächlichen namend es Elements ersetzen muss. Hier verwenden wir __getframeElectronicBlockSpace()__.

Damit die Funktion __getframeElectronicBlockSpace()__ dies auch korrekt errechnen kann, benötigt es die notwendigen Parameter. Die meisten Element haben keine Parameter, so das man dort auch der Funktion keine übergeben muss. Hier verändert sich aber der Rahmen durch die Angabe, an welche Seiten angedockt werden soll, und dadurch verändert sich auch die Fläche des Elements.

Die Parameter *xAlign* und *yAlign* sind optional. Wenn der Rahmen nicht angedockt wird, fallen beide weg. Da wir hier an zwei Seiten docken, brauchen wir aber beide. Es gibt einige Elemente, die auch durch Andocken ihre Gestalt ändern, und bei allen werden dieselben Parameter verwendet. Damit man sich keine Zahlen merken muss, wurden in der Datei __Base/PlacementOptions.scad__ Variablen mit sprechenden namen definiert, die man hier als Werte für die Variablen übergeben kann. Diese Datei muss als einzige per __include__ eingebunden werden, da __use__ keine Variablen, sondern nur Funktionen und Module importiert.

Das Ergebnis: Der Rahmen für den Silberling sieht so aus, wie er auch in den ec-Kästen vorkommt. Es werden Stege zu den Wänden generiert, die den Abstand sicherstellen. Die 

### Elemente für die Spezialteile

### Sinnvoll platzieren

### STL-Datei erzeugen