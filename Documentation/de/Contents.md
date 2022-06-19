# Inhalt

Dies ist die erste Version vom 1. Juni 2022. Der Grundstock für die Konstruktion von Sortierkästen umfasst schon ca. 100 Elemente der grauen Bausteine, die Ende der 1970er Jahre existierten. Als Beispiele wurden die Kästen [ec1-3](../../Original%20Building%20Kits/ec/) sowie [mot1 und mot2](../../Original%20Building%20Kits/mot/) nachgebaut.

Zwei Tutorials [Sortierkästen konstruieren](TutorialSortingBoxes.md) und [Elemente selbst konstruieren](TutorialElements.md) sollen helfen, eigene Beiträge zu ermöglichen.

## Allgemeines
- [Über die Bibliothek](readme.md)
- [Konstruktionsprinzipien](principles.md)
- [Elemente erst im 3D-Druck testen](PrintTests.md)
- [Sortierkästen konstruieren](TutorialSortingBoxes.md)
- [Elemente selbst konstruieren](TutorialElements.md)
- [Elemente für CAD-Software nach STL exportieren](STLExport.md)
- [Beispielkästen und -Inlays](SampleBoxes.md)
- [Glossar](Glossar.md)

## Elemente für Sortierkästen

[Liste nach Fischertechnik-Artikelnummer](PartFinder.md)

## Basisfunktionen und -module

### Module für Grundelemente
- [__Box130__](Base/Box130.md): Importiert einen leeren Sortierkasten 130 x 95 mm als Basis für eigene Entwürfe.
- [__Box190__](Base/Box190.md): Importiert einen leeren Sortierkasten 190 x 130 mm als Basis für eigene Entwürfe.
- [__Box190Inlay__](Base/Box190Inlay.md): Erzeugt eine Grundplatte für Elemente, die in einen Original-Sortierkasten gelegt werden kann.
- [__Box190InlayWeb__](Base/Box190InlayWeb.md): Erzeugt einen kurzen Steg mit Einrast-Mechanismus für [__Box190Inlay__](Base/Box190Inlay.md).
- [__BoxWeb__](Base/BoxWeb.md): Erzeugt einen kurzen Steg an der Innenwand einer Sortierbox.

### Module zur Platzierung von Elementen
- [__Center__](Base/Center.md): Platziert Children-Elemente horizontal und/oder vertikal zentriert.
- [__CenterHorizontal__](Base/CenterHorizontal.md): Platziert Children-Elemente horizontal zentriert.
- [__CenterVertical__](Base/CenterVertical.md): Platziert Children-Elemente vertikal zentriert.
- [__DeployHorizontal__](Base/DeployHorizontal.md): Verteilt Children-Elemente mit gleichem Abstand horizontal.
- [__DeploySame__](Base/DeploySame.md): Verteilt mehrere Kopien des Children-Elements auf die angegebenen Spalten und Zeilen.
- [__DeployVertical__](Base/DeployVertical.md): Verteilt Children-Elemente mit gleichem Abstand vertikal.
- [__Merge__](Base/Merge.md): Fügt Kopien des Children-Elements so aneinander, dass dessen Trennwände zu jeweils einer verschmelzen.
- [__MergeRow__](Base/MergeRow.md): Fügt die Children-Elemente so aneinander, dass dessen Trennwände zu jeweils einer verschmelzen.
- [__Place__](Base/Place.md): Platziert die Children-Elemente auf die angegebene Position (absolut oder ausgerichtet).
- [__RotateFix__](Base/RotateFix.md): Rotiert das Children-Element um 0, 90, 180 oder 270 Grad im Uhrzeigersinn.

### Funktionen zur Koordinatenberechnung
- [__getAlignedX__](Base/getAlignedX.md): Berechnet X-Position für horizontal ausgerichtetes Element.
- [__getAlignedY__](Base/getAlignedY.md): Berechnet Y-Position für vertikal ausgerichtetes Element.
- [__getDepthSum__](Base/getDepthSum.md): Liefert Summe aller Tiefen der angegebenen Flächen.
- [__getIsHorizontal__](Base/getIsHorizontal.md): Liefert true, wenn die angegebene Ausrichtung eine horizontale Trennwand erfordert.
- [__getIsVertical__](Base/getIsVertical.md): Liefert true, wenn die angegebene Ausrichtung eine vertikale Trennwand erfordert.
- [__getMaxDepth__](Base/getMaxDepth.md): Liefert größte Tiefe der angegebenen Flächen.
- [__getMaxWidth__](Base/getMaxWidth.md): Liefert größte Breite der angegebenen Flächen.
- [__getMergedRowWidth__](Base/getMergedRowWidth.md): Liefert die Gesamtbreite einer zusammengefügten Reihe von Frame-basierten Elementen.
- [__getRotatedSpace__](Base/getRotatedSpace.md): Liefert eine Fläche so transformiert, dass die angegebene Drehung angewandt wird.
- [__getWidthSum__](Base/getWidthSum.md): Liefert Summe aller Breiten der angegebenen Flächen.
- [__getX__](Base/getX.md): Liefert eine Elementposition für die gleichmäßige Verteilung über eine Breite.
- [__getY__](Base/getY.md): Liefert eine Elementposition für die gleichmäßige Verteilung über eine Tiefe.

### Funktionen zur Ermittlung von Konstanten
- [__getAxisBottomDiameter__](Base/getAxisBottomDiameter.md): Liefert den Durchmesser für die Basis einer Achse.
- [__getAxisDiameter__](Base/getAxisDiameter.md): Liefert den Durchmesser einer Fischertechnik-Achse.
- [__getAxisTolerance__](Base/getAxisTolerance.md): Liefert den Betrag, der vom Durchmesser einer Fischertechnik-Achse abgezogen wird, wenn Standachsen generiert werden, damit die Fischertechnikteil darauf passen.
- [__getBox130Space__](Base/getBox130Space.md): Liefert die nutzbare Fläche eines Sortierkastens 130 x 95 mm.
- [__getBox190Space__](Base/getBox190Space.md): Liefert die nutzbare Fläche eines Sortierkastens 190 x 130 mm.
- [__getBoxBaseThickness__](Base/getBoxBaseThickness.md): Liefert die Stärke des Bodens eines Sortierkastens.
- [__getBoxUsageHeight__](Base/getBoxUsageHeight.md): Liefert die nutzbare innere Höhe eines Sortierkastens.
- [__getBoxWallThickness__](Base/getBoxWallThickness.md): Liefert die Stärke der Wände eines Sortierkastens.
- [__getBoxWebWidth__](Base/getBoxWebWidth.md): Liefert die Standardlänge eines Stegs für Sortierkästen.
- [__getDividerThickness__](Base/getDividerThickness.md): Liefert die Standardbreite einer Trennwand.
- [__getExcess__](Base/getExcess.md): Liefert den Betrag, um den ein Objekt mit einem verbundenen Objekt verschmilzt.
- [__getFragments__](Base/getFragments.md): Liefert die Anzahl der Fragmente für cylinder-Objekte ($fn).
- [__getHubRingDiameter__](Base/getHubRingDiameter.md): Äußerer Durchmesser des Zylinders für Räder.
- [__getHubRingLevelDiameter__](Base/getHubRingLevelDiameter.md): Äußerer Durchmesser der Zylinderbasis für Räder.
- [__getSmallPartsFrameHeight__](Base/getSmallPartsFrameHeight.md): Liefert die Höhe für Rahmen, die für in Sortierkästen Kleinteile vorgesehen sind.
- [__getStandardEdgeDistance__](Base/getStandardEdgeDistance.md): Liefert den Standard-Abstand für andockbare Rahmen mit Stegen.
- [__getStandardWebDistance__](Base/getStandardWebDistance.md): Liefert den Abstand eines Stegs zur jeweiligen Ecke eines andockbaren Elements.
- [__getStandAxisDiameter__](Base/getStandAxisDiameter.md): Liefert den Durchmesser für Standachsen (z.B. für [__Axis__](ModelBase/Axis.md))
- [__getTolerance__](Base/getTolerance.md): Liefert den Betrag für die Toleranz bei Elementen, damit die Bauteile nach dem Druck in die Elemente passen.
- [__getTubeWallThickness__](Base/getTubeWallThickness.md): Liefert Stärke der Wände eines Element-Zylinders.

## Funktionen und Module für das Konstruieren von Elementen

### Module für einfache Grundformen
- [__AngeledFrame__](ModelBase/AngeledFrame.md): Erzeugt einen um 90° gewinkelten Rahmen.
- [__Axis__](ModelBase/Axis.md): Erzeugt eine stehende Achse.
- [__AxisWithSpace__](ModelBase/AxisWithSpace.md): Erzeugt eine stehende Achse mit einer Grundplatte.
- [__Divider__](ModelBase/Divider.md): Erzeugt einen Trenner innerhalb eines Sortierkastens.
- [__DockableFrame__](ModelBase/DockableFrame.md): Erzeugt einen Rahmen, der an eine Wand angedockt werden kann.
- [__Frame__](ModelBase/Frame.md): Erzeugt einen Rahmen mit optional einzeln offenen Wänden.
- [__FrameBottomCutoff__](Modelbase/FrameBottomCutoff.md): Mit __difference__ in [__Frame__](ModelBase/Frame.md) einen Ausschnitt in die vordere Wand schneiden.
- [__FrameLeftCutoff__](Modelbase/FrameLefttCutoff.md): Mit __difference__ in [__Frame__](ModelBase/Frame.md) einen Ausschnitt in die linke Wand schneiden.
- [__FrameRightCutoff__](Modelbase/FrameRightCutoff.md): Mit __difference__ in [__Frame__](ModelBase/Frame.md) einen Ausschnitt in die rechte Wand schneiden.
- [__FrameTopCutoff__](Modelbase/FrameTopCutoff.md): Mit __difference__ in [__Frame__](ModelBase/Frame.md) einen Ausschnitt in die hintere Wand schneiden.
- [__LeveledAxis__](ModelBase/LeveledAxis.md): Erzeugt eine stehende Achse mit einer stärkeren Achsbasis.
- [__LeveledAxisWithSpace__](ModelBase/LeveledAxisWithSpace.md): Erzeugt eine stehende Achse mit einer stärkeren Achsbasis und einer Grundplatte.
- [__LeveledTube__](ModelBase/LeveledTube.md): Erzeugt eine stehenden hohlen Zylinder mit einer stärkeren Basis.
- [__Space__](ModelBase/Space.md): Erzeugt eine dünne Fläche als Basis für ein Element.
- [__Text__](ModelBase/Text.md): Erzeugt einen reliefartigen Text im Boden des Sortierkastens.
- [__Tube__](ModelBase/Tube.md): Erzeugt eine stehenden hohlen Zylinder.
- [__Wall__](ModelBase/Wall.md): Erzeugt eine Wand.

### Funktionen zur Ermittlung der Größe einfacher Grundformen
- [__getAngeledFrameOuterVolume__](ModelBase/getAngeledFrameOuterVolume.md): Liefert das äußere Gesamtvolumen ("bounding box") eines gewinkelten Rahmens.
- [__getFrameInnerVolume__](ModelBase/getFrameInnerVolume.md): Liefert das innere Volumen eines Rahmens.
- [__getFrameOuterVolume__](ModelBase/getFrameOuterVolume.md): Liefert das äußere Volumen ("bounding box") eines Rahmens.

### Module für komplexe Grundformen
- [__AxisMiddleSupport__](ModelBase/AxisMiddleSupport.md): Erzeugt ein Stützelement für Achsen.
- [__ElevatedFramesWithCutoff__](ModelBase/ElevatedFramesWithCutoff.md): Erzeugt eine Halterung, die im Normalfall für einzelne Achsen verwendet wird.
- [__DockableEdgedFrame__](ModelBase/DockableEdgedFrame.md): Erzeugt einen Rahmen für Bauteile, der optional an bis zu zwei Wänden angedockt werden kann.
- [__FrameAxis__](ModelBase/FrameAxis.md): Erzeugt eine Achshalterung für eine Achse.
- [__FrameBracket__](ModelBase/FrameBracket.md): Erzeugt einen Rahmen für einen Getriebeaufsatz mit oder ohne Schnecke.
- [__FrameFlatPiece__](ModelBase/FrameFlatPiece.md): Erzeugt einen Rahmen für Flachstücke.
- [__FrameRack__](ModelBase/FrameRack.md): Erzeugt einen Rahmen für Zahnstangen.
- [__FrameSpecialFlat__](ModelBase/FrameSpecialFlat.md): Erzeugt einen Rahmen für spezielle Flachbausteine.
- [__HolderBuildingPlate__](ModelBase/HolderBuildingPlate.md): Erzeugt Halter für Bauplatten.
- [__RackBase__](ModelBase/RackBase.md): Erzeugt den inneren Rahmen für Zahnstangen.
- [__RailsBasePlate__](ModelBase/RailsBasePlate.md): Erzeugt Fläche mit Stegen für die Ablage einer Grundplatte.

### Funktionen zur Ermittlung von Werten zu komplexen Grundformen
- [__getAxisMiddleSupportSpace__](ModelBase/getFrameAxisMiddleSupportSpace.md): Liefert die Fläche eines mit [__AxisMiddleSupport__](ModelBase/AxisMiddleSupport.md) erzeugten Stützelements.
- [__getDockableEdgedFrameDepth__](ModelBase/getDockableEdgedFrameDepth.md): Liefert den vertikalen Abstand des angedockten Rahmens für [__DockableEdgedFrame__](ModelBase/DockableEdgedFrame.md).
- [__getDockableEdgedFrameWidth__](ModelBase/getDockableEdgedFrameWidth.md): Liefert den horizontalen Abstand des angedockten Rahmens für [__DockableEdgedFrame__](ModelBase/DockableEdgedFrame.md).
- [__getDockableEdgedFrameSpace__](ModelBase/getDockableEdgedFrameSpace.md): Liefert die Fläche für einen mit [__DockableEdgedFrame__](ModelBase/DockableEdgedFrame.md) erzeugten Rahmen.
- [__getDepthPerPlate__](ModelBase/getDepthPerPlate.md): Liefert die Tiefe (Dicke) einer Bauplatte für [__HolderBuildingPlate__](HolderBuildingPlate.md).
- [__getElevatedFramesWithCutoffSpace__](ModelBase/getElevatedFramesWithCutoffSpace.md): Liefert die Fläche des Elements, das mit dem Modul [__ElevatedFramesWithCutoff__](ElevatedFramesWithCutoff.md) erzeugt wird.
- [__getFrameAxisDepth__](ModelBase/getFrameAxisDepth.md): Liefert die Tiefe der Achshalterungen für [__FrameAxis__](ModelBase/FrameAxis.md).
- [__getFrameAxisHeight__](ModelBase/getFrameAxisHeight.md): Liefert die Höhe der Achshalterungen für [__FrameAxis__](ModelBase/FrameAxis.md).
- [__getFrameAxisSpace__](ModelBase/getFrameAxisSpace.md): Liefert die Fläche einer mit [__FrameAxis__](ModelBase/FrameAxis.md) erzeugte Achshalterung.
- [__getFrameBracketSpace__](ModelBase/getFrameBracketSpace.md): Liefert die Fläche für eine Halterung eines Getriebeaufsatzes.
- [__getFrameBracketWidth__](ModelBase/getFrameBracketWidth.md): Liefert die Breite für eine Halterung eines Getriebeaufsatzes ohne die Achse/Schnecke.
- [__getFrameFlatPieceVolume__](ModelBase/getFrameFlatPieceVolume.md): Liefert das Volumen eines mit [__FrameFlatPiece__](Modelbase/FrameFlatPiece.md) erzeugt wird.
- [__getFrameRackSpace__](ModelBase/getFrameRackSpace.md): Liefert die Fläche eines Rahmens für Zahnstangen.
- [__getHolderBuildingPlateSpace__](ModelBase/getHolderBuildingPlateSpace.md): Liefert die Fläche einer Halterung für Bauplatten.
- [__getRackInnerHeight__](ModelBase/getRackInnerHeight.md): Liefert die innere Höhe der Halterungen für Zahnstangen.
- [__getRailsBasePlateVolume__](ModelBase/getRailsBasePlateVolume.md): Liefert das Volumen des Rahmens für Grundplatten.
