---
name: link-pruefen
description: Prüft für die ganze Zola-Seite interne und externe Links auf Erreichbarkeit (zola check, Anker, Weiterleitungen). Ändert nichts. Verwenden bei „sind alle Links noch erreichbar“ oder „tote Links finden“.
---

# Links der ganzen Seite prüfen

Du prüfst, ob alle Links der Seite funktionieren. Du **änderst nichts**, außer der Nutzer sagt es ausdrücklich. Links zu neuen Quellen vorschlagen oder einzelne Artikel durchgehen macht `querweise`.

## Vorgehen

1. **Interne Links und Anker:** Im Projektordner `zola check` ausführen. Fehler wörtlich wiedergeben, mit Datei und Ziel.
2. **Externe Links einsammeln:** Alle `http://`- und `https://`-Links in `content/`, `templates/` und `zola.toml` auflisten (z. B. mit `grep -rEo 'https?://[^ )"<>]+'`). Doppelte zusammenfassen und je Link die Fundstelle merken.
3. **Erreichbarkeit prüfen:** Je Link eine Anfrage mit `curl -sIL -o /dev/null -w '%{http_code} %{url_effective}' --max-time 10 <URL>`. Bei Antwort 405 oder 403 einmal mit `curl -sL` (GET) wiederholen. Nicht mehr als wenige Anfragen gleichzeitig und keine Zugangsdaten mitsenden.
4. **Bewerten:**
   - `2xx`: OK
   - `3xx` mit anderem Endziel (z. B. `http` → `https`, neue Adresse): Warnung, neue Adresse nennen
   - `404`, `410`, DNS-Fehler: Fehler (tot)
   - `403`, `429`, Timeout: unklar, im Browser nachprüfen lassen, nicht als tot melden
5. **Auffälligkeiten:** Links ohne Beschreibung („hier klicken“), `localhost`-Adressen, `http://` statt `https://`, Links mit Tracking-Parametern. Nur nennen, nicht bewerten.

## Regeln

- Nichts behaupten, was nicht geprüft wurde. Nicht geprüfte Links (z. B. wegen fehlender Verbindung) als „nicht geprüft“ nennen.
- Keine Anfragen an Adressen im lokalen Netz oder an `localhost`.
- Keine Links ändern oder entfernen, keine Ersatzquellen erfinden. Für Ersatz auf `querweise` verweisen.
- Nicht committen oder pushen.

## Ausgabe

1. Ergebnis von `zola check` (OK oder Fehlerliste)
2. Tabelle der externen Links, die nicht OK sind: Link, Status, Datei und Zeile, empfohlene Maßnahme
3. Eine Zeile: Anzahl geprüft, OK, Warnungen, Fehler, nicht geprüft
4. Hinweis, dass Änderungen nur auf Wunsch erfolgen, und für neue Quellen `querweise`

Antworte auf Deutsch, knapp und ohne Floskeln.
