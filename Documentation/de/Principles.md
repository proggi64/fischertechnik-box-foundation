# Konstruktionsprinzipien

Für die Konstruktion der Bibliothek wurden einige Prinzipien festgelegt, die beim weiteren Ausbau beachtet werden sollten, die aber auch wertvoll für den Einsatz sind.

## Ziel 3D-Druck

Der gesamte Code ist darauf ausgerichtet, dass die 3D-Druck-Ergebnisse verwendbare Sortierboxen produzieren.

- Sinnvolle Toleranzen für alle Elemente (Constants.scad - getTolerance()), damit die Teile in die Elemente passen
- Saubere Verschmelzung von 3D-Elementen und Box (Constants.scad - getExcess()), um ungewollte Luftspalte zu vermeiden
- Druckbare Wandstärken, die hinreichend stabil bleiben sollten

## Elemente

- Jedes Element hat eine eigene SCAD-Datei, deren Dateiname dem Namen des *module* entspricht.
- Jedes Element hat ein *module*, was das Element darstellt
- Jedes Element hat eine Funktion namen __get*ElementName*Space()__, welche den exakten Platzbedarf des Elements in der Box als x/y-Liste liefert.
- Manche Element benötigen Parameter, z.B. für die Anzahl der Bauteile, die sie fassen sollen
- Die __get*ElementName*Space()__-Funktionen benötigen i.d.R. dieselben Parameter wie das *module*.

Beispiel Getriebeschnecke 31045 für den 6V-Motor:

- Datei: *Elements/FrameBracketWithWorm.scad*
- Module: __FrameBracketWithWorm()__
- Function: __getFrameBracketWithWormSpace()__

Alle Elemente sind so konstruiert, dass sie bei der Platzierung in die Sortierbox mit deren Boden verschmelzen. Der Betrag dieser Verschmelzung wird durch die in *Constants.scad* festgelegte Funktion __getExcess()__ bestimmt. Jedes Element hat eine automatisch addierte Basis in dieser Stärke, so dass (trotz des geringen Betrags) die Höhe exakt den Vorgaben entspricht.

## Sortierboxen

Die Sortierboxen werden als STL-Dateien eingebunden. Sie wurden mit einem CAD-Programm entworfen und können mit den Original-Boxen von Fischertechnik gestapelt werden. Bei der Platzierung der Elemente ist die z-Nullinie exakt der obere Rand des Bodens der Box. Die Position 0,0 ist exakt die Ecke der nutzbaren Innenfläche der Box.

Die Elemente werden, wie schon erwähnt, um den Betrag von __getExcess()__ in den Boden versenkt.

## Andockbare Elemente

Einige Elemente sind so entworfen, dass sie an eine oder zwei Wände der Box angedockt werden können. Diese Elemente haben i.d.R. Teile, die mit der Wand der Box beim platzieren verschmolzen werden. Dafür ragen diese Teile über die jeweilige Nullposition hinaus, so dass sie in die Wand der Box integriert werden. Beispiele sind die Elemente für die Silberlinge (__FrameElectronicBlock__).

## Ausrichtung

Die Bibliothek stell eine Reihe von Platzierungs- und Ausrichtungsfunktionen zur Verfügung, die bei der Konstruktion von Sortierboxen nützlich sind.
