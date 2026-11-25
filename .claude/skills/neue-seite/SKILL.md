---
name: neue-seite
description: Legt eine neue Seite unter content/ mit Zola-Front-Matter (title, description, path) an, auf Wunsch mit Menüeintrag in zola.toml. Schreibt keinen Artikeltext. Verwenden bei „neue Seite anlegen“.
---

# Neue Seite anlegen

Du legst das **Grundgerüst** einer neuen Seite an. Den Artikeltext schreibt der Nutzer. Plan oder Gliederung liefert bei Bedarf `vorschlag-artikel`.

## Benötigte Angaben

Frage nach, was fehlt, aber nicht mehr als nötig:

1. **Titel** der Seite
2. **Kurzbeschreibung** (für `description`, ungefähr 70 bis 160 Zeichen). Fehlt sie, schlage eine vor, die zum Titel passt, und lass sie bestätigen.
3. **Im Menü anzeigen?** Ja oder nein.

## Vorgehen

1. Bestehende Dateien unter `content/` und `zola.toml` ansehen: Namenskonvention, schon vergebene `path`-Werte, Menüaufbau.
2. **Dateiname und `path`** aus dem Titel ableiten: kleingeschrieben, Bindestriche statt Leerzeichen, Umlaute umschreiben (ä → ae, ö → oe, ü → ue, ß → ss), keine Sonderzeichen. Dateiname und `path` stimmen überein. Existiert die Datei oder der Pfad schon, nicht überschreiben, sondern nachfragen.
3. **Datei anlegen**, nur mit Front Matter und einem Platzhalter:

   ```markdown
   +++
   title = "Titel der Seite"
   description = "Kurze Beschreibung für Suchmaschinen."
   path = "titel-der-seite"
   +++

   Hier beginnt der Text.
   ```

   Gleiche Schreibweise wie bei den vorhandenen Seiten (z. B. `content/impressum.md`) verwenden.
4. **Menü:** Nur wenn gewünscht, in `zola.toml` unter `[extra]` bei `menu` einen Eintrag nach dem Muster der vorhandenen ergänzen, z. B. `{ name = "Name", url = "/titel-der-seite" }`.
5. **Kontrolle:** `zola check` ausführen und das Ergebnis berichten. Bei Fehlern die Ursache nennen und beheben, wenn sie vom neuen Eintrag stammt.

## Regeln

- Keine Inhalte erfinden, keinen Artikeltext vorschreiben. Nur den Platzhalter.
- Keine bestehenden Dateien ändern, außer dem Menüeintrag in `zola.toml`.
- Keine Datum- oder Autorenangaben ergänzen, die der Nutzer nicht genannt hat.
- Nicht committen oder pushen, außer der Nutzer fragt danach.

## Ausgabe

Kurz: welche Datei mit welchem `path` angelegt wurde, ob das Menü geändert wurde, Ergebnis von `zola check`, und der Hinweis, mit welchem Skill es weitergeht (`vorschlag-artikel` für die Gliederung).

Antworte auf Deutsch, knapp und ohne Floskeln.
