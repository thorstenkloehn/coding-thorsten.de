---
name: querweise
description: Schlägt für einen Artikel hochwertige externe Links auf seriöse Quellen vor (Belege, Zusatzinfos) und prüft vorhandene Links. Ändert Dateien nur nach Rückfrage. Verwenden bei „Querverweise“ oder „Quellen verlinken“.
---

# Querverweise auf seriöse Quellen (Deutsch)

Lies den Artikel (Datei unter `content/`, markierte Zeilen oder eingefügten Text) und finde Stellen, an denen ein externer Link eine Aussage belegt oder dem Leser echten Mehrwert bietet. Google wertet Verweise auf seriöse Quellen als Hinweis, dass ein Text gut recherchiert ist. Garantieren lässt sich daraus kein Ranking.

Sind Thema oder Datei unklar, kurz nachfragen.

## Regeln

- **Nur seriöse Ziele:** Bevorzugt offizielle Dokumentation und Projektseiten (z. B. Zola, Bootstrap, Git, Rust, Anthropic), Standards und Behörden, Hochschulen, anerkannte Fachmedien. Nie auf Spam, unsichere (kein HTTPS), dubiose oder Affiliate-Seiten verlinken, das fällt auf die eigene Seite zurück.
- **Sparsam:** Nur dort, wo ein Link eine Aussage belegt oder sinnvolle Zusatzinfos liefert. Nicht in jedem zweiten Satz. Richtwert: höchstens 2 bis 5 externe Links pro Artikel, je nach Länge.
- **Nichts erfinden:** Jede URL muss tatsächlich existieren und die Aussage stützen. Per Websuche oder Abruf prüfen (Seite erreichbar, Inhalt passt, aktuell). Ohne Suchwerkzeug das klar sagen und die Links als ungeprüft kennzeichnen. URLs nie aus dem Gedächtnis raten.
- **Mehrwert vor Anzahl:** Pro Link angeben, welche Aussage er belegt oder was er ergänzt. Kein Link nur um des Links willen.
- **Aussagekräftiger Linktext:** Beschreibt das Ziel („Zola-Dokumentation zu Templates“), nicht „hier klicken“.
- **Attribut richtig wählen:** Normale redaktionelle Empfehlung = normaler Link, ohne `nofollow`. `rel="sponsored"` nur bei bezahlter Werbung oder Affiliate, `rel="ugc"` nur bei unverifizierten Nutzerinhalten (z. B. Kommentare).
- **Keine Inhalte ändern:** Keine neuen Fakten, keine umgeschriebenen Absätze. Nur Links und, wo nötig, ein kurzer Ankertext.
- **Interne Links** gehören nicht hierher, nur kurz erwähnen, wenn eine Seite unter `content/` passt.

## Vorgehen

1. Artikel lesen, Aussagen markieren, die einen Beleg oder eine Vertiefung brauchen (Versionen, Befehle, Definitionen, Zahlen, Fachbegriffe).
2. Für jede passende Stelle eine seriöse Quelle suchen und prüfen.
3. Vorhandene externe Links prüfen: erreichbar, seriös, passend, richtiges Attribut. Defekte oder fragwürdige melden.
4. Vorschläge ausgeben, danach fragen, ob sie eingebaut werden sollen. Erst nach Zustimmung die Datei ändern.

## Ausgabe

Eine Liste, nach Wichtigkeit sortiert. Je Vorschlag:

1. **Stelle:** Überschrift oder Satzanfang, an dem der Link steht.
2. **Link:** URL und vorgeschlagener Linktext (als Markdown `[Text](URL)`).
3. **Zweck:** Welche Aussage wird belegt oder ergänzt.
4. **Quelle:** Wer betreibt die Seite, warum seriös, Stand der Prüfung.
5. **Attribut:** normal, `sponsored` oder `ugc`, mit Grund, falls nicht normal.

Dazu getrennt: bestehende Links mit Befund (`OK`, `Verbessern`, `Defekt`). Wenn kein Link nötig ist, das klar sagen.

Antworte auf Deutsch, knapp und ohne Floskeln.

## Anzeige auf der Seite

Die freigegebenen Links stehen gesammelt am Ende des Artikels, nicht verstreut im Text. Dafür einen Abschnitt `## Weiterführende Links` ans Dateiende setzen: eine Aufzählung, je Eintrag Linktext und ein kurzer Satz, was der Link ergänzt. Bei Artikeln mit Fußabschnitten (z. B. Hinweise) davor einfügen, wenn es inhaltlich passt. Erst nach Zustimmung schreiben.

Beispiel mit Wikipedia (URL am 23.11.2026 geprüft, HTTP 200):

```markdown
## Weiterführende Links

- [Markdown auf Wikipedia](https://de.wikipedia.org/wiki/Markdown): Erklärt den Begriff Markdown für Einsteiger.
```
