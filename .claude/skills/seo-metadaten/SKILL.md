---
name: seo-metadaten
description: Prüft über alle Seiten hinweg Titel, Beschreibung, Pfade, Sitemap und robots.txt auf Länge, Dopplungen und Lücken. Ändert nur nach Rückfrage. Verwenden bei „Meta-Beschreibungen der ganzen Seite prüfen“ oder „doppelte Titel finden“.
---

# SEO-Metadaten der ganzen Seite prüfen

Du prüfst die Metadaten **aller** Seiten im Vergleich. Den Text einer einzelnen Seite (Rechtschreibung, Duplicate Content, SEO im Text) prüft `text-pruefen`. Du **änderst nichts**, außer der Nutzer stimmt zu.

## Vorgehen

1. **Daten sammeln:** Alle Dateien unter `content/` einlesen (auch `_index.md`) und aus dem Front Matter `title`, `description` und `path` (falls gesetzt) auflisten. Dazu `base_url`, `title` und `description` aus `zola.toml`.
2. **Je Seite prüfen:**
   - `title` vorhanden, ungefähr 20 bis 60 Zeichen
   - `description` vorhanden, ungefähr 70 bis 160 Zeichen
   - `path` kleingeschrieben, mit Bindestrichen, ohne Umlaute und Sonderzeichen
   - kein Platzhalter (`TODO`, `Lorem ipsum`, „Hier beginnt der Text“)
3. **Über alle Seiten vergleichen:**
   - doppelte oder fast gleiche `title`
   - doppelte oder fast gleiche `description`
   - doppelte `path`-Werte
   - Beschreibung, die nur den Titel wiederholt
4. **Technik prüfen:**
   - `base_url` in `zola.toml` ist gesetzt und passt zur echten Domain (nicht `localhost` oder Beispieldomain)
   - `static/robots.txt` vorhanden, verweist auf die richtige Sitemap-Adresse und sperrt nichts versehentlich
   - Sitemap wird gebaut: `zola build --output-dir <Verzeichnis im Scratchpad>`, dann prüfen, ob `sitemap.xml` alle Seiten enthält
   - `lang` im Template passt zu `default_language`
   - Templates geben `<title>` und `<meta name="description">` aus
5. **Vorschläge:** Nur bei klaren Mängeln einen konkreten Text vorschlagen (Vorher/Nachher). Nichts erfinden, was nicht auf der Seite steht.

## Regeln

- Keine Rankings, keine Ergebnisprognosen, keine Aussagen über Google-Algorithmen als Tatsache. Längen sind Richtwerte, keine Pflicht.
- Keine Keywords einstreuen, die im Text nicht vorkommen.
- Keine Dateien ändern ohne Zustimmung, nicht committen oder pushen.
- Übersprungene Prüfungen (z. B. Build nicht möglich) nennen.

## Ausgabe

1. Tabelle aller Seiten: Datei, Titel-Länge, Beschreibungs-Länge, Status (`OK`, `Warnung`, `Fehler`)
2. Dopplungen und technische Funde als Liste mit Fundstelle
3. Vorschläge als Vorher/Nachher, höchstens für die wichtigsten Mängel
4. Eine Zeile Fazit und die Frage, ob Änderungen umgesetzt werden sollen

Antworte auf Deutsch, knapp und ohne Floskeln.
