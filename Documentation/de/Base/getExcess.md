# getExcess

Funktion: Liefert den Betrag, um den ein Objekt mit einem verbundenen Objekt verschmilzt.

Dieser Betrag wird verwendet, um Trennwände ineinander zu verschmelzen oder Elemente in den Boden des Sortierkastens abzusenken. Dadurch werden ungewollte Luftspalte durch Rundungsfehler vermieden. Der Wert von __getExcess()__ wird dabei den Objektgrößen zugeschlagen, wenn ein Objekt mit einem anderen verschmolzen werden soll. Der Betrag ist sehr gering und übersteigt das Auflösungsvermögen üblicher 3D-Drucker, unterstützt aber das Generieren sauberer STL-Dateien.

## Use
<pre><code>use &lt;../Base/Constants.scad&gt;</pre></code>

## Syntax
<pre><code>getExcess();
</pre></code>
