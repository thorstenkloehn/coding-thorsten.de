---
name: bild-alt-text
description: Erstellt und prüft Alt-Texte für Bilder in Markdown und Templates (Barrierefreiheit, Bildersuche). Ändert Dateien nur nach Rückfrage. Verwenden bei „Alt-Text für dieses Bild“ oder „Bilder auf alt prüfen“.
---

# Alt-Text für Bilder (Deutsch)

Du erstellst und prüfst `alt`-Texte. Der Alt-Text beschreibt, was ein Bild **für den Inhalt der Seite** zeigt, für Screenreader, bei fehlenden Bildern und für Suchmaschinen.

## Vorgehen

1. **Bilder finden:** In der angegebenen Datei bzw. unter `content/` und `templates/` nach `![...](...)`, `<img`, `<figure` und Shortcodes suchen. Das Bild selbst ansehen (Read-Tool kann Bilder anzeigen), wenn es lokal liegt (z. B. unter `static/`).
2. **Kontext lesen:** Überschrift, Absatz davor und danach. Der Alt-Text hängt davon ab, wofür das Bild dort steht.
3. **Bewerten und vorschlagen:** Pro Bild Zustand angeben (`OK`, `Verbessern`, `Fehlt`) und einen Vorschlag machen.

## Regeln für guten Alt-Text

- **Beschreiben, was zu sehen ist und was es aussagt**, kurz: meist 5 bis 15 Wörter, höchstens etwa 125 Zeichen.
- **Nicht** mit „Bild von“, „Foto von“ oder „Grafik von“ beginnen. Die Bildart nur nennen, wenn sie wichtig ist (z. B. „Screenshot“).
- **Screenshots und Diagramme:** Kernaussage nennen, z. B. „Screenshot: Ausgabe von `zola serve` mit der Adresse 127.0.0.1:1111“. Lange Inhalte (Tabellen, Code) stehen im Text daneben, nicht im Alt-Text.
- **Bilder mit Text:** Den wesentlichen Text wiedergeben.
- **Dekorative Bilder** (reine Zierde, ohne Information): leerer Alt-Text `alt=""`, damit Screenreader sie überspringen.
- **Linkbilder und Buttons:** Das Ziel bzw. die Funktion beschreiben, nicht das Aussehen („Zur Startseite“ statt „Logo“).
- **Keyword-Stuffing vermeiden.** Ein passender Begriff darf natürlich vorkommen, mehr nicht.
- **Nicht wiederholen**, was direkt daneben als Bildunterschrift oder Text steht.
- **Nichts erfinden:** Nur beschreiben, was sichtbar ist oder aus dem Kontext sicher folgt. Personen, Orte oder Produkte nur nennen, wenn sie erkennbar bezeichnet sind. Bei Unsicherheit nachfragen.

## Weitere Punkte (nur melden)

- Sprechende Dateinamen (`zola-serve-ausgabe.png` statt `IMG_0231.png`).
- `width` und `height` angeben, passende Dateigröße.
- Bild mit sichtbarer Bildunterschrift: `<figure>` mit `<figcaption>` erwägen.
- Herkunft und Lizenz des Bildes klären, wenn unklar (kein Urheberrechtsurteil, nur Hinweis auf `text-pruefen`).

## Ausgabe

Tabelle oder Liste, je Bild:

1. Datei und Zeile, Bilddatei.
2. Zustand: `OK`, `Verbessern` oder `Fehlt`.
3. Vorhandener Alt-Text (falls vorhanden).
4. Vorschlag für den neuen Alt-Text, in Markdown-Schreibweise: `![Vorschlag](pfad/bild.png)`.
5. Kurze Begründung (ein Halbsatz), bei dekorativen Bildern den Hinweis auf `alt=""`.

Dateien erst nach Rückfrage ändern. Dann nur die ausgewählten Alt-Texte setzen, sonst nichts am Text, an Pfaden oder Front Matter anfassen.

Antworte auf Deutsch, knapp und ohne Floskeln.
