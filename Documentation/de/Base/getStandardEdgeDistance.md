# getStandardEdgeDistance

Funktion: Liefert den Standard-Abstand für andockbare Rahmen mit Stegen (__DockableEdgedFrame__).

<img width="213" alt="EdgedFrame" src="https://user-images.githubusercontent.com/48654609/167309119-bf923638-9be9-48ca-84ab-4b213bbeb4a0.png">

Wenn eine Seite über die Align-Parameter an eine Wand angedockt sein soll, ist __getStandardEdgeDistance()__ der Abstand der normalen Element-Fläche von der Wand. Diese Funktion wird durchgängig in der Bibliothek für die Funktionalität verwendet. Das Basis-Modul __DockableEdgedFrame__ setzt die Funktion ein.

## Use
<pre><code>use &lt;../Base/Constants.scad&gt;</pre></code>

## Syntax
<pre><code>getStandardEdgeDistance();
</pre></code>

## Rückgabewert
Länge der Stege in mm, die beim Andocken eines __DockableEdgedFrame__ generiert werden. Dies entspricht dem Abstand der Nutzfläche des Rahmens von der Wand des Sortierkastens.
