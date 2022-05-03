# Fischertechnik Konstruktionsbibliothek für Sortierkästen mit OpenSCAD
Die Bibliothek bietet eine sich kontinuierlich erweiternde Sammlung an parametrisierten Sortierlementen, Verteilungs- und Platzierfunktionen, sowie Basis-Sortierkästen für das Fischertechnik-Baukastensystem. The Kästen sind so entworfen, dass sie sich mit 3D-Druckern selbst herstellen lassen.

Die Bibliothek wurde inspiriert durch die Kunstoff-Sortierkästen der Fischertechnik-Baukästen der 1970er bis Anfang 1980er Jahre. Einige Beispielkästen im Verzeichnis *Original Building Kits* sind annähernd identisch mit den Originalkästen.

<img width="429" alt="ec2" src="https://user-images.githubusercontent.com/48654609/166326370-d41d503e-4cff-4b6c-8358-93feec0d171e.png">

Das Ziele dieser Bibliothek sind es die Konstruktion der Sortierkästen zu vereinfachen und eine Alternative zur CAD-Programmen zu bieten. Dennoch die Elemente auch in CAD-Programmen verwendet werden, wenn man sie einzeln als STL-Dateien exportiert.

Die Bibliothek teil sich in folgende Gruppen:
- Base
- ModelBase
- Elements
- Test
- Original Building Kits
- Building Kits

## Base
Enthält die Basisfunktionalität der Bibliothek:
- Alignment.scad
- Boxes.scad
- Constants.scad
- Deployment.scad
- Placement.scad
- PlacementOptions.scad
- Rotation.scad

Im Base-Verzeichnis finden sich auch die STL-Dateien mit den Leerboxen 190x130 und 130x95, die als Basis zur Konstruktion verwendet werden.

## ModelBase
Enthält einfache und komplexere parametrisierbare Basiselemente, mit denen die Elemente für spezifische Bauteile erstellt werden.

## Elements
Enthält Elemente für spezifische Fischertechnik-Bauteile, einige von ihnen parametrisierbar. Alle sind auch Fischertechnik-Teilenummern zugeordnet, die in den Quelldateien als Kommentare vermerkt sind.

## Test
Enthält Testdateien für alle Module, die Funktionalität und Elemente demonstrieren.

## Original Building Kits
Enthält Beispiele von nachgebauten Original-Sortierkästen aus den 1970er Jahren zur Demonstration, wie Kästen konstruiert werden können.

## Building Kits
Enthält selbskonstruierte Sortierkästen für Baukästen ab den 1980er Jahren. Diese sind komplette Neuentwürfe.
