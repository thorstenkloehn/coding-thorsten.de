---
name: veroeffentlichen
description: Prüft vor dem Push, ob die Zola-Seite fehlerfrei baut (zola check, Build, Front Matter, Menü, robots.txt). Committet und pusht nur nach Rückfrage. Verwenden bei „kann ich veröffentlichen“ oder „vor dem Push prüfen“.
---

# Vor der Veröffentlichung prüfen

Du prüfst, ob die Seite so bedenkenlos auf `main` gepusht werden kann. Du **änderst nichts und pushst nichts**, außer der Nutzer sagt es ausdrücklich.

## Schritte

1. **Stand ansehen:** `git status` und `git diff --stat`. Gibt es uneingecheckte oder unbekannte Änderungen? Nennen, nicht anfassen.
2. **Prüfen:** Im Projektordner `zola check` ausführen. Findet es Fehler, wörtlich wiedergeben und die Ursache benennen (z. B. interner Link auf gelöschte Seite).
3. **Bauen:** `zola build --output-dir <Verzeichnis im Scratchpad>`, damit `public/` nicht überschrieben wird. Warnungen und Fehler zusammenfassen.
4. **Front Matter** jeder geänderten oder neuen Datei unter `content/`:
   - `title` vorhanden und einzigartig
   - `description` vorhanden, ungefähr 70 bis 160 Zeichen
   - `path` kleingeschrieben, mit Bindestrich, ohne Umlaute
   - kein Platzhaltertext (`TODO`, `Lorem ipsum`)
5. **Menü und Verlinkung:** Stehen alle Seiten in `zola.toml` unter `extra.menu`, die dort stehen sollen, und gibt es Menüeinträge ohne Seite? Gibt es Seiten ohne interne Verlinkung?
6. **Technik:** `base_url` in `zola.toml` zeigt auf die echte Domain, `robots.txt` liegt unter `static/`, `public/` steht in `.gitignore`.
7. **Bilder:** Gibt es Bilder ohne Alt-Text? Dann `bild-alt-text` empfehlen.
8. **Dauerhaftes lokal ansehen (optional):** Auf Wunsch `zola serve` starten, Startseite und geänderte Seiten per `curl` auf HTTP 200 prüfen und den Server danach beenden.

## Was hier nicht passiert

- Kein Rechtschreib-, Urheberrechts- oder SEO-Check der Texte. Dafür `text-pruefen` empfehlen, wenn Texte neu oder geändert sind.
- Kein Urteil über Rechtstexte (Impressum, Datenschutz). Nur technisch prüfen, ob die Seiten vorhanden und verlinkt sind.
- Kein `git push --force`, kein Überschreiben fremder Änderungen.

## Ausgabe

Eine kurze Liste mit `OK`, `Warnung` oder `Fehler` je Schritt. Danach ein Fazit in einem Satz: **bereit zur Veröffentlichung** oder **noch nicht**, mit den Punkten, die vorher zu beheben sind. Fehlerhafte Ergebnisse nie beschönigen, übersprungene Schritte nennen.

Am Ende fragen, ob committet und gepusht werden soll. Commit und Push erst nach ausdrücklicher Zustimmung, mit kurzer deutscher Commit-Nachricht.

Antworte auf Deutsch, knapp und ohne Floskeln.
