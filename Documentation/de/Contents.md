# Inhalt

## Allgemeines
- [Über die Bibliothek](readme.md)
- [Konstruktionsprinzipien](principles.md)
- [Glossar](Glossar.md)

## Basisfunktionen und -module

### Module für Grundelemente
- [__Box130__](Base/Box130.md): Importiert einen leeren Sortierkasten 130 x 95 mm als Basis für eigene Entwürfe
- [__Box190__](Base/Box190.md): Importiert einen leeren Sortierkasten 190 x 130 mm als Basis für eigene Entwürfe
- [__BoxWeb__](Base/BoxWeb.md): Erzeugt einen kurzen Steg an der Innenwand einer Sortierbox

### Module zur Platzierung von Elementen
- [__Center__](Base/Center.md): Platziert Children-Elemente horizontal und/oder vertikal zentriert.
- [__CenterHorizontal__](Base/CenterHorizontal.md): Platziert Children-Elemente horizontal zentriert.
- [__CenterVertical__](Base/CenterVertical.md): Platziert Children-Elemente vertikal zentriert.
- [__DeployHorizontal__](Base/DeployHorizontal.md): Verteilt Children-Elemente mit gleichem Abstand horizontal.
- [__DeployVertical__](Base/DeployVertical.md): Verteilt Children-Elemente mit gleichem Abstand vertikal.
- [__Place__](Base/Place.md): Platziert die Children-Elemente auf die angegebene Position (absolut oder ausgerichtet).

### Funktionen zur Koordinatenberechnung
- [__getAlignedX__](Base/getAlignedX.md): Berechnet X-Position für horizontal ausgerichtetes Element
- [__getAlignedY__](Base/getAlignedY.md): Berechnet Y-Position für vertikal ausgerichtetes Element
- [__getDepthSum__](Base/getDepthSum.md): Liefert Summe aller Tiefen der angegebenen Flächen
- [__getIsHorizontal__](Base/getIsHorizontal.md): Liefert true, wenn die angegebene Ausrichtung eine horizontale Trennwand erfordert
- [__getIsVertical__](Base/getIsVertical.md): Liefert true, wenn die angegebene Ausrichtung eine vertikale Trennwand erfordert
- [__getMaxDepth__](Base/getMaxDepth.md): Liefert größte Tiefe der angegebenen Flächen
- [__getMaxWidth__](Base/getMaxWidth.md): Liefert größte Breite der angegebenen Flächen
- [__getMergedRowWidth__](Base/getMergedRowWidth.md): Liefert die Gesamtbreite einer zusammengefügten Reihe von Frame-basierten Elementen
- [__getRotatedSpace__](Base/getRotatedSpace.md): Liefert eine Fläche so transformiert, dass die angegebene Drehung angewandt wird
- [__getWidthSum__](Base/getWidthSum.md): Liefert Summe aller Breiten der angegebenen Flächen
- [__getX__](Base/getX.md): Liefert eine Elementposition für die gleichmäßige Verteilung über eine Breite
- [__getY__](Base/getY.md): Liefert eine Elementposition für die gleichmäßige Verteilung über eine Tiefe

### Funktionen zur Ermittlung von Konstanten
- [__getAxisBottomDiameter__](Base/getAxisBottomDiameter.md): Liefert den Durchmesser für die Basis einer Achse
- [__getAxisDiameter__](Base/getAxisDiameter.md): Liefert den Durchmesser einer Fischertechnik-Achse
- [__getBox130Space__](Base/getBox130Space.md): Liefert die nutzbare Fläche eines Sortierkastens 130 x 95 mm
- [__getBox190Space__](Base/getBox190Space.md): Liefert die nutzbare Fläche eines Sortierkastens 190 x 130 mm
- [__getBoxBaseThickness__](Base/getBoxBaseThickness.md): Liefert die Stärke des Bodens eines Sortierkastens
- [__getBoxUsageHeight__](Base/getBoxUsageHeight.md): Liefert die nutzbare innere Höhe eines Sortierkastens
- [__getBoxWallThickness__](Base/getBoxWallThickness.md): Liefert die Stärke der Wände eines Sortierkastens
- [__getBoxWebWidth__](Base/getBoxWebWidth.md): Liefert die Standardlänge eines Stegs für Sortierkästen
- [__getDividerThickness__](Base/getDividerThickness.md): Liefert die Standardbreite einer Trennwand
- [__getExcess__](Base/getExcess.md): Liefert den Betrag, um den ein Objekt mit einem verbundenen Objekt verschmilzt
- [__getFragments__](Base/getFragments.md): Liefert die Anzahl der Fragmente für cylinder-Objekte ($fn)
- [__getSmallPartsFrameHeight__](Base/getSmallPartsFrameHeight.md): Liefert die Höhe für Rahmen, die für in Sortierkästen Kleinteile vorgesehen sind
- [__getStandardEdgeDistance__](Base/getStandardEdgeDistance.md): Liefert den Standard-Abstand für andockbare Rahmen mit Stegen
- [__getStandardWebDistance__](Base/getStandardWebDistance.md): Liefert den Abstand eines Stegs zur jeweiligen Ecke eines andockbaren Elements
- [__getTolerance__](Base/getTolerance.md): Liefert den Betrag für die Toleranz bei Elementen, damit die Bauteile nach dem Druck in die Elemente passen
- [__getTubeWallThickness__](Base/getTubeWallThickness.md): Liefert Stärke der Wände eines Element-Zylinders
