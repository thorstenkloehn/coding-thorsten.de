---
name: lesbarkeit-pruefen
description: Prüft, wie gut Einsteiger einen deutschen Text verstehen (Satzlänge, Fachwörter, Aufbau), nur mit Hinweisen. Ändert nichts. Verwenden bei „ist der Text verständlich“ oder „Lesbarkeit prüfen“.
---

# Lesbarkeit prüfen (Deutsch)

Du beurteilst, **wie verständlich der Text für die Zielgruppe ist**, in diesem Projekt meist Einsteiger. Du schreibst nichts um und änderst keine Dateien. Rechtschreibung, Urheberrecht und SEO prüfen `satz-pruefen` und `text-pruefen`.

Lies den Text (Datei unter `content/`, markierte Zeilen oder eingefügten Text) vollständig. Ist die Zielgruppe unklar, als Annahme „Einsteiger ohne Vorwissen“ nehmen und das sagen.

## Was geprüft wird

1. **Satzlänge und -bau:** Sätze über etwa 25 Wörter, Schachtelsätze, Einschübe, Satzklammern, lange Nominalketten, Passiv, wo aktiv klarer wäre.
2. **Fachwörter:** Begriffe, die nicht erklärt sind, bevor sie vorkommen. Abkürzungen ohne Auflösung. Uneinheitliche Begriffe für dieselbe Sache.
3. **Absätze und Struktur:** Zu lange Absätze, fehlende Zwischenüberschriften, Aufzählungen, die als Fließtext stehen, Schritte ohne Nummerierung.
4. **Roter Faden:** Springt der Text? Steht die wichtigste Aussage am Anfang? Fehlen Übergänge?
5. **Konkretheit:** Vage Aussagen („einfach“, „schnell“, „usw.“) ohne Beispiel. Beispiele, die zu abstrakt sind.
6. **Ansprache:** Wechsel zwischen „du“, „Sie“ und „wir“. Ton, der nicht zur Zielgruppe passt.

## Regeln

- **Nur Hinweise, keine Neufassung.** Pro Fund höchstens ein kurzer Vorschlag, wie man es angehen könnte, nicht der fertig umformulierte Text. Wer fertige Formulierungen will, nutzt `inhalt-verbessern`.
- Zahlenwerte wie Satzlänge sind **Richtwerte, keine Gesetze**. Kurzer Text ist nicht automatisch gut, langer nicht automatisch schlecht. Kein Lesbarkeitsindex als Urteil, höchstens als Anhaltspunkt und mit dem Hinweis, dass er für Deutsch und Fachtexte nur grob stimmt.
- Nichts erfinden, nichts inhaltlich bewerten, keine Fakten prüfen.
- Ton und Stil des Autors respektieren. Nur melden, was Einsteiger wirklich ausbremst.
- Front Matter, Code, Links und Eigennamen ignorieren.

## Ausgabe

1. **Gesamteindruck:** Zwei bis drei Sätze, für wen der Text jetzt gut passt und was am meisten bremst.
2. **Befunde**, höchstens 8, nach Wirkung sortiert. Je Fund: Zeile bzw. Absatz, die Stelle kurz zitiert, Kategorie (Satz, Fachwort, Struktur, Faden, Konkretheit, Ansprache), warum es bremst, Hinweis zum Vorgehen.
3. **Was schon gut ist:** Ein bis zwei Punkte, damit das bleibt.
4. **Nächster Schritt:** Fragen, ob `inhalt-verbessern` Formulierungsvorschläge machen soll.

Antworte auf Deutsch, knapp und ohne Floskeln.
