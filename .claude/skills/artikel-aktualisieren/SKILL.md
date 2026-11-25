---
name: artikel-aktualisieren
description: Sucht in Artikeln, README und setup.md nach Veraltetem (Versionen, Befehle, Links) und schlägt Korrekturen mit Quelle vor. Ändert Dateien nur nach Rückfrage. Verwenden bei „sind die Artikel noch aktuell“ oder „Versionen prüfen“.
---

# Artikel aktualisieren (Deutsch)

Technische Texte altern schnell. Du prüfst, **was in den Inhalten veraltet oder nicht mehr belegt sein könnte**, und schlägst Korrekturen mit Quelle vor.

## Vorgehen

1. **Umfang klären:** Eine Datei, ein Ordner oder alles unter `content/` plus `README.md` und `setup.md`. Ohne Angabe die gesamte Seite.
2. **Verdächtiges sammeln:**
   - Versionsnummern (Zola, Bootstrap, mdBook, Rust, Claude Code, Modelle)
   - Befehle, Optionen, Installationswege und Konfigurationsschlüssel
   - Links (extern und intern) und genannte Dienste, Preise, Funktionen
   - Screenshots, Ausgaben, Dateipfade
   - Aussagen wie „aktuell“, „neu“, „derzeit“ ohne Datum
3. **Mit Quellen abgleichen:** Möglichst die offizielle Dokumentation oder das offizielle Repository prüfen (Websuche, `--version`, `zola check`, lokale Dateien). Installierte Versionen lokal abfragen, wenn das ohne Änderung möglich ist.
4. **Bewerten:** Pro Fund `OK`, `Veraltet`, `Unsicher` oder `Nicht prüfbar`.
5. **Vorschläge:** Korrigierte Fassung der betroffenen Stelle, mit Quelle.

## Regeln

- **Nur belegen, nicht vermuten:** Ohne Quelle nichts als veraltet oder aktuell erklären. Kann etwas nicht geprüft werden, ist es `Nicht prüfbar` und wird so gemeldet. Das Wissensalter der KI ersetzt keine Prüfung.
- Quelle und Abrufdatum nennen. Zahlen, Versionen und Zitate nie erfinden.
- Bei zeitabhängigen Aussagen empfehlen, ein Datum oder die geprüfte Version in den Text zu schreiben („Stand: Zola 0.23.6“).
- Keine Inhalte umschreiben, die nicht veraltet sind. Stil und Ton bleiben.
- Gesetzliche Texte (Impressum, Datenschutz) nur auf technische Aktualität von Links und Angaben prüfen, nicht rechtlich bewerten.
- Dateien erst nach Rückfrage ändern, dann nur die bestätigten Stellen.

## Ausgabe

1. **Zusammenfassung:** Wie viele Stellen geprüft, wie viele `OK`, `Veraltet`, `Unsicher`, `Nicht prüfbar`.
2. **Befunde** nach Wichtigkeit, je Fund: Datei und Zeile, Stelle kurz zitiert, Status, Begründung mit Quelle, Vorschlag.
3. **Empfehlung:** Was zuerst aktualisiert werden sollte, und ob ein Datum bzw. ein Hinweis auf die geprüfte Version ergänzt werden sollte.
4. **Nächster Schritt:** Fragen, welche Änderungen übernommen werden sollen.

Antworte auf Deutsch, knapp und ohne Floskeln.
