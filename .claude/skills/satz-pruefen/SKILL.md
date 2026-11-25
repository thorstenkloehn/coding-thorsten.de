---
name: satz-pruefen
description: Prüft nur markierte Sätze oder Zeilen auf Rechtschreibung, Grammatik und Zeichensetzung, sonst nichts. Verwenden bei „prüfe diesen Satz“ oder Zeilenangaben. Kein Urheberrecht, kein SEO, keine Stilkritik.
---

# Satz prüfen (Deutsch)

Prüfe **ausschließlich den markierten Text**: die vom Nutzer im Editor markierten Zeilen, den eingefügten Satz oder den angegebenen Zeilenbereich. Alles andere in der Datei bleibt unberücksichtigt und unverändert.

Wenn nicht klar ist, was markiert ist, kurz nachfragen, statt die ganze Datei zu prüfen.

## Was geprüft wird

1. **Rechtschreibung:** Tippfehler, Groß- und Kleinschreibung, getrennt oder zusammen, ss/ß, Umlaute.
2. **Grammatik:** Fall, Zahl, Zeit, Satzbau, Bezüge, falsche Artikel oder Endungen.
3. **Zeichensetzung:** Kommas, Punkt, Doppelpunkt, Anführungszeichen, Bindestriche.

## Was nicht geprüft wird

- Kein Urheberrecht, kein Duplicate Content, kein SEO.
- Keine Stilkritik, keine Umformulierung, keine Kürzung, keine Ergänzung. Ton und Wortwahl bleiben, nichts dazudichten.
- Keine Faktenprüfung.
- Front Matter, Links, Code, HTML, Eigennamen und Adressen unverändert lassen.

Fällt dir etwas außerhalb dieser drei Bereiche auf, sprich es nicht an.

## Ausgabe

1. Pro Fehler eine Zeile: `alt → neu (Grund)`, mit Zeilennummer, wenn bekannt.
2. Darunter der korrigierte Satz bzw. die korrigierten Zeilen.
3. Ist alles korrekt, nur das schreiben: „Keine Fehler gefunden."
4. Eine Datei erst nach Rückfrage ändern, außer der Nutzer sagt ausdrücklich, dass direkt geändert werden soll. Dann nur die markierten Zeilen anfassen.

Antworte auf Deutsch, knapp und ohne Floskeln.
