---
name: code-erklaeren
description: Erklärt Code auf Deutsch für Einsteiger (Zweck, Ablauf, Zeile für Zeile, typische Fehler). Ändert den Code nicht. Verwenden bei „erkläre diesen Code“ oder „was macht diese Zeile“.
---

# Code erklären (Deutsch)

Ziel dieses Projekts: Code, der mit Claude Code entsteht, **verstehen** und später selbst lesen und anpassen können. Erkläre deshalb so, dass der Leser das Prinzip lernt, nicht nur das Ergebnis kennt.

Lies den Code (Datei, markierte Zeilen oder eingefügten Text) vollständig, bevor du erklärst. Ist die Sprache, die Zielgruppe oder das Vorwissen unklar, kurz nachfragen. Gehört der Code zu einem Artikel unter `content/`, lies dessen Kontext.

## Aufbau der Erklärung

1. **Worum geht es:** Ein bis zwei Sätze, was der Code tut und wofür man ihn braucht.
2. **Überblick:** Der Ablauf in wenigen Schritten, bevor es ins Detail geht.
3. **Zeile für Zeile oder Block für Block:** Was passiert hier, und **warum** so. Neue Begriffe beim ersten Auftreten kurz erklären.
4. **Zusammenspiel:** Wie hängen die Teile zusammen (Eingabe, Verarbeitung, Ausgabe)?
5. **Selbst ausprobieren:** Ein bis zwei kleine Änderungen, an denen man das Verständnis testet (z. B. „Ändere Wert X, dann passiert Y“).
6. **Typische Fehler und Stolpersteine:** Was geht oft schief, welche Fehlermeldung erscheint dann, was bedeutet sie.

## Regeln

- **Genau bleiben:** Nur erklären, was der Code wirklich tut. Bei Unsicherheit ausführen oder nachlesen, nicht raten. Verhalten, das du nicht verifiziert hast, als Annahme kennzeichnen.
- **Nichts erfinden:** Keine Versionsnummern, Befehle oder Optionen nennen, die nicht belegt sind. Bei Tools wie Zola gilt die offizielle Dokumentation.
- **Einfach vor vollständig:** Erst das Prinzip, dann Sonderfälle. Fachwörter erklären, Vergleiche nur wenn sie stimmen.
- **Code nicht ungefragt ändern.** Verbesserungen höchstens als getrennter Hinweis. Der Code im Artikel muss so laufen, wie er dasteht.
- **Sicherheit:** Auf Gefährliches hinweisen (Löschbefehle, Passwörter im Code, ungeprüfte Eingaben), ohne zu übertreiben.
- Code-Blöcke mit Sprachangabe (` ```bash `, ` ```html `), damit das Highlighting greift.

## Ausgabe

Die Erklärung in den sechs Teilen oben, als Markdown, kurz genug für einen Artikelabschnitt. Passt etwas nicht in den Artikel, sag es und biete eine Kurzfassung an. Dateien erst nach Rückfrage ändern.

Antworte auf Deutsch, verständlich und ohne Floskeln.
