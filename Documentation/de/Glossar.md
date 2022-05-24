# Glossar

| Begriff | Bedeutung |
| ------ | ------  |
| __Alignment__ | Fasst alle Ausrichtungsmodule und -funktionen zusammen, mit denen *Elemente* an Rändern ausgerichtet oder zentriert werden können. |
| __Axis__ | Stehende Achse als Aufnahmeelement für Naben, Achskupplungen oder andere Bauteile, die mit Achsen verbunden werden. Alle *Elemente*, die als Basis eine Achse haben, bekommen im Modulnamen das Präfix *Axis*. |
| __Bottom__ | Bezeichnet den vorderen Bereich von Elementen oder Boxen, z.B. bei __AlignBottom__. |
| __Center__ | Zentrieren von Elementen auf Strecken oder Flächen. |
| __Combo__  | Namens-Präfix für Kombinationen von gruppierten Elementen, die ein größeres Element bilden. |
| __Cylinder__ | Stehende Zylinder als Aufnahmeelement für Reifen oder andere Bauteile, die mit Naben oder anderen rundenBauelementen verbunden werden. Alle *Elemente*, die als Basis einen Zylinder haben, bekommen im Modulnamen das Präfix *Cylinder*. |
| __Deploy__ | Automatisches Verteilen gleicher oder verschiedener Elemente auf Strecken oder Flächen. |
| __Deployment__ | Fasst alle Module und Funktionen zusammen, mit denen mehrere Elemente gleichmäßig über Strecken oder Flächen verteilt werden können. |
| __Depth__ | Strecken auf der Y-Achse ("Tiefe"). |
| __Divider__ | Bezeichner für Trennwand. |
| __Element__ | 3D-Konstrukt, welches den Platz für einzelne oder mehrere Bauteile innerhalb der Sortierbox definiert. Einige können über Parameter modifiziert werden, z.B. um die Anzahl der Teile anzugeben. |
| __Frame__ | Rahmen für Bauteile, die im einfachen Fall *Element* sein können. Alle *Elemente*, die als Basis einen Rahmen haben, bekommen im Modulnamen das Präfix *Frame*. Die Rahmen bestehen aus Wänden, deren Standardstärke über die in *Constants.scad* definierte Funktion *getDividerThickness()* abgerufen werden kann. Das gleichname __Frame__-Modul bekommt als Parameter die Raumgröße des Fischertechnik-Teils und addiert für diesen noch die Standard-Toleranz in x- und y-Richtung (aus *Constants.scad* die Funktion *getTolerance()*). |
| __get__ | Namens-Präfix für alle Funktionen (__function__). |
| __Height__ | Strecken auf der Z-Achse. |
| __Holder__ | Halterung für Bauteile, die z.B. für Achsen oder Naben verwendet werden. Diese haben keinen *Frame* als Basis, sondern andere Grundformen. Diese Elemente bekommen das Präfix *Holder* im Modulnamen. |
| __Horizontal__ | Alles, was auf der X-Achse liegt. |
| __Placement__ | Fasst alle Platzierungs-Module zusammen, mit denen Elemente platziert und ausgerichtet werden können. |
| __Rotation__ | Fasst alle Module zusammen, mit denen Element rotiert werden können. Dabei wird jeweils die neue untere rechte Ecke an der urspünglichen Position der alten platziert. Bei rotierten Elemente, die an Rändern ausgerichtet sind, bleibt die Ausrichtung erwartungskonform, als wenn das Element auch urspünglich die Drehung hatte. |
| __Space__ | Fläche mit x/y-Ausdehnung. In der SCAD-Datei jedes *Elements* ist eine Funktion namens get*ElementName*Space() definiert, welche die Ausdehnung des Elements liefert. Da OpenSCAD eine funktionale Sprache ist und Objekte mit Methoden und Eigenschaften nicht vorgesehen sind, können diese Daten nicht über die 3D-Objekte abgerufen werden, sondern müssen separat als Funktion über Namenskonvention definiert werden. Flächen sind in OpenSCAD Listen aus mindestens zwei Werten \[x,y\]. Viele der Space-Funktionen liefern aber auch gleich den Z-Wert als dritten Wert mit. |
| __Top__ | Bezeichnet den hinteren Bereich von Elementen oder Boxen, z.B. bei __AlignTop__. |
| __Vertikal__ | Alles, was auf der Y-Achse liegt. |
| __Volume__ | Volumen mit x/y/z-Ausdehnung. Diese werden als Listen in OpenSCAD angegeben \[x,y,z\]. |
| __Width__ | Strecken auf der X-Achse ("Breite"). |
