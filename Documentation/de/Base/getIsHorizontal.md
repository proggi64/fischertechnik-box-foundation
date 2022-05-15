# getIsHorizontal

Liefert __true__, wenn die angegebene Ausrichtung eine horizontale Trennwand erfordert. __getIsHorizontal__ wird vom Modul __Divider__ verwendet.

## Use
<pre><code>use &lt;../Base/Placement.scad&gt
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>getIsHorizontal(
  align);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| align | Wenn __AlignBottom__ oder __AlignTop__ wird __true__ geliefert; sonst __false__. |

## Rückgabewert
__true__ wenn die Ausrichtung in *align* eine horizontale Trennwand erfordert; sonst __false__.
