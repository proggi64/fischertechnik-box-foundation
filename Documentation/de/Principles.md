# Konstruktionsprinzipien

Für die Konstruktion der Bibliothek wurden einige Prinzipien festgelegt, die beim weiteren Ausbau beachtet werden sollten, die aber auch wertvoll für den Einsatz der Bibliothek sind.

## Ziel 3D-Druck

Der gesamte Code ist darauf ausgerichtet, dass die 3D-Druck-Ergebnisse verwendbare Sortierboxen produzieren.

- Sinnvolle Toleranzen für alle Elemente (Constants.scad - __getTolerance()__), damit die Teile in die Elemente passen
- Saubere Verschmelzung von 3D-Elementen und Box (Constants.scad - __getExcess()__), um ungewollte Luftspalte zu vermeiden
- Druckbare Wandstärken, die hinreichend stabil bleiben sollten (Constants.scad - __getDividerThickness()__)

Die Bibliothek geht davon aus, dass ein 3D-Drucker mit einer 0,4 mm-Extruderdüse und einer Genauigkeit von 0,2 mm eingesetzt wird. Das Bauvolumen muss für die Sortierbox 190 x 130 ca. 20 x 14 x 4 cm groß sein.

## Elemente
Elemente sind die Konstrukte, die in der Sortierbox zur Aufnahme von ein oder mehreren Bauelementen platziert werden. Sie sind i.d.R. speziell für bestimmte Bauteile zugeschnitten. Für Kleinteile gibt es auch einfache parametrisierbare Kastenformen. Die passenden Elemente können über ihre Artikelnummer gefunden werden.

- Jedes Element hat eine eigene SCAD-Datei, deren Dateiname dem Namen des *module* entspricht.
- Jedes Element hat ein *module*, was das Element darstellt
- Jedes Element hat eine Funktion namen __get*ElementName*Space()__, welche den exakten Platzbedarf des Elements in der Box als x/y-Liste liefert.
- Manche Element benötigen Parameter, z.B. für die Anzahl der Bauteile, die sie fassen sollen
- Die __get*ElementName*Space()__-Funktionen benötigen i.d.R. dieselben Parameter wie das *module*.

Beispiel Getriebeschnecke 31045 für den 6V-Motor:

- Datei: *Elements/FrameBracketWithWorm.scad*
- Module: __FrameBracketWithWorm()__
- Function: __getFrameBracketWithWormSpace()__

Alle Elemente sind so konstruiert, dass sie bei der Platzierung in den Sortierkasten mit deren Boden verschmelzen. Der Betrag dieser Verschmelzung wird durch die in *Constants.scad* festgelegte Funktion __getExcess()__ bestimmt. Jedes Element hat eine Basisfläche der __get*ElementName*Space()__-Größe in dieser dünnen Stärke, die beim Platzieren im Boden des Sortierkastens verschwindet.

## Andockbare Elemente

Einige Elemente sind so entworfen, dass sie an eine oder zwei Wände der Box angedockt werden können. Diese Elemente haben i.d.R. Teile, die mit der Wand der Box beim Platzieren (in Verbindung mit dem Alignment) verschmolzen werden. Dafür ragen diese Teile über die jeweilige Nullposition hinaus, so dass sie in die Wand der Box integriert werden. Beispiele sind die Elemente für die Silberlinge (__FrameElectronicBlock__). Welche Seiten an die Wände gedockt werden, wird i.d.R. über entsprechende Parameter der Module gesteuert.

## Sortierboxen

Die Sortierkästen werden als STL-Dateien eingebunden. Sie wurden mit einem CAD-Programm entworfen und können mit den Original-Kästen von Fischertechnik gestapelt werden. Bei der Platzierung der Elemente ist die z-Nullinie exakt der obere Rand des Bodens des Sortierkastens. Die Position 0,0 ist exakt die Ecke der nutzbaren Innenfläche der Box.

Die Elemente werden, wie schon erwähnt, um den Betrag von __getExcess()__ in den Boden versenkt.

## Ausrichtung

Die Bibliothek stell eine Reihe von Platzierungs- und Ausrichtungsfunktionen zur Verfügung, die bei der Konstruktion von Sortierboxen nützlich sind.

## Baukastenprinzip kombinierbar mit individuellen Elementen

Vorgefertigte Elemente und das individuelle Programmieren mit OpenSCAD-Code sollen beliebig kombinierbar sein. Die Funktionen und Module aus dem *Base*-Verzeichnis sollen auch bei der individuellen Gestaltung der Sortierkästen helfen. Beispiele für solche Kombinationen sind die Nachbauten der Originalkästen, z.B. der mot2.

## Tests als Beispiel

Im Verzeichnis *Test* befinden sich in entsprechenden Unterverzeichnissen jeweils Quellcodes mit Demonstrationen der Module, Funktionen und aller Elemente. Jedes Element und jedes Modul hat einen separate Testdatei. Dies sind so aufgebaut, dass sie gleichzeitig als manueller Test und Beispiel dienen.

- Test/Base: *Gruppenname*Test*Module*.scad oder *Gruppenname*Test*Function*.scad
- Test/ModelBase: SimpleTest*Module*.scad oder ComplexTest*Module*.scad
- Test/Elements: Test*Elementname*.scad

## Weitere Prinzipien

- Redundanzen bei Code und Konstanten werden vermieden, um an zentralen Stellen Anpassungen zu ermöglichen
- Namen sind über alle Quellcodes konsistent
- Sinnvolle Standardwerte für Parameter sollen den Einsatz vereinfachen 

