# ElevatedFramesWithCutoff

Erzeugt eine Halterung, die im Normalfall für einzelne Achsen verwendet wird.

<img width="344" alt="TestFrameAxis50" src="https://user-images.githubusercontent.com/48654609/168169890-a92315c3-b7fe-403c-9321-2d452dd33042.png">

Die Halterung besteht aus zwei Rahmen an den Enden, jeweils mit einer Aussparung für das jeweilige Ende des Bauteils. Die Aussparung ist in der Standardeinstellung durch eine Wand abgeschlossen. Über Parameter können diese Abschlusswände auch weggelassen werden. Das Modul __ElevatedFramesWithCutoff__ wird vom ModelBase-Modul __FrameAxis__ verwendet. __FrameAxis__ verwendet für einige der hier aufgeführten Parameter Standardwerte, u.a. die Achsdurchmesser und eine konstante Höhe der Halterungen.

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;</pre></code>

## Syntax
<pre><code>ElevatedFramesWithCutoff(
  volume, 
  depth,
  height, 
  bearingLength, 
  cutThrough=false);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| volume | Volumen des Bauelements, welches in dem Rahmen passen soll. Für eine Achse ist die die Achslänge als X-Wert, und der Durchmesser für Tiefe und Höhe. |
| depth | Jeweilige Tiefe der beiden Halterungsrahmen. Der Ausschnitt wird dann mittig in der notwendigen Breite für *volume.y* gesetzt. *depth* gibt also an, wie viel noch neben dem Ausschnitt an Wandlänge stehen bleibt und sollte ein wenig mehr als den Achsdurchmesser betragen. |
| height | Jeweilige Höhe der beiden Halterungsrahmen. |
| bearingLenght | Jeweilige Länge der beiden Halterungsrahmen. Bei Achsen sollte diese weniger als die Hälfte der Achslänge betragen. |
| cutThrough | __true__, wenn die Wand am Ende der beiden Halterungen weggelassen werden soll. |
