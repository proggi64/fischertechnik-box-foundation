# FrameAxis

Erzeugt eine Achshalterung für eine Achse mit der angegebenen Länge.

<img width="344" alt="TestFrameAxis50" src="https://user-images.githubusercontent.com/48654609/168169890-a92315c3-b7fe-403c-9321-2d452dd33042.png">

Die Halterung besteht aus zwei Rahmen an den Enden, jeweils mit einer Aussparung für das jeweilige Ende des Bauteils. Die Aussparung ist in der Standardeinstellung durch eine Wand abgeschlossen. Über den Parameter *cutThrough* können diese Abschlusswände auch weggelassen werden.

__FrameAxis__ verwendet as Modul __ElevatedFramesWithCutoff__ mit einer Reihe von Konstanten Parametern, die für die 4 mm Achsen passen.

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;</pre></code>

## Syntax
<pre><code>FrameAxis(
  length, 
  cutThrough=false);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| length | Länge der Achse. |
| cutThrough | __true__, wenn die Wand am Ende der beiden Halterungen weggelassen werden soll. |
