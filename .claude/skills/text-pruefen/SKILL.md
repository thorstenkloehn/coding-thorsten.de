---
name: text-pruefen
description: Prüft deutsche Texte oder Dateien (z. B. unter content/) auf Rechtschreibung, Grammatik, Zeichensetzung sowie mögliche Urheberrechtsverletzungen, Duplicate Content und Google-SEO, ohne Inhalt hinzuzudichten.
---

# Text prüfen (Deutsch)

Prüfe den angegebenen Text oder die angegebene Datei auf drei Dinge:

1. **Rechtschreibung:** Tippfehler, Groß- und Kleinschreibung, getrennt oder zusammen, ss/ß, Umlaute.
2. **Grammatik:** Fall, Zahl, Zeit, Satzbau, Bezüge, falsche Artikel oder Endungen.
3. **Zeichensetzung:** Kommas (Nebensätze, Aufzählungen, Infinitivgruppen), Punkt, Doppelpunkt, Anführungszeichen.

## Regeln

- **Nichts dazudichten.** Keine neuen Aussagen, Fakten, Absätze oder Beispiele ergänzen. Nichts weglassen, was inhaltlich zählt.
- **Stil und Wortwahl nicht umschreiben.** Den Ton des Autors beibehalten. Nur bei eindeutigen Fehlern eingreifen. Stilvorschläge höchstens als kurzen, getrennten Hinweis, nie automatisch eingebaut.
- **Bedeutung erhalten.** Bei Zweifeln fragen, statt zu raten.
- **Format erhalten.** Markdown, Front Matter (`+++ ... +++`), Links, Code und HTML unverändert lassen. Nur den Fließtext prüfen. Eigennamen, Adressen und rechtliche Pflichtangaben (z. B. im Impressum) nicht ändern.
- **Neue Rechtschreibung** nach Duden verwenden.

## Urheberrecht und Duplicate Content

Prüfe alle Inhalte des Artikels darauf, ob sie fremdes Urheberrecht verletzen könnten oder als Duplikat vorhandener Inhalte gelten:

1. **Wörtliche Übernahmen:** Passagen, die Wort für Wort aus fremden Quellen stammen könnten (Webseiten, Bücher, Dokumentation, Lizenztexte, Foren).
2. **Eng angelehnte Paraphrasen:** Sätze, die nur einzelne Wörter austauschen, aber Aufbau, Reihenfolge und Gedankengang einer Vorlage übernehmen.
3. **Übersetzte Passagen:** Texte, die erkennbar aus einer anderen Sprache (häufig Englisch) übersetzt wurden, etwa an unidiomatischen Formulierungen oder typischen Übersetzungsmustern.
4. **Duplicate Content:** Abschnitte, die so oder ähnlich auf anderen Seiten stehen, und Wiederholungen innerhalb der eigenen Seite (z. B. dieselben Absätze auf mehreren Unterseiten).
5. **Weitere Inhalte:** Zitate ohne Quelle, Bilder, Grafiken, Code-Beispiele und Texte aus Vorlagen (Impressum, Datenschutz), deren Lizenz oder Herkunft unklar ist.

Vorgehen und Grenzen:

- Verdächtige Stellen mit einer kurzen, markanten Wortfolge per Websuche in Anführungszeichen gegenprüfen, soweit ein Suchwerkzeug verfügbar ist. Ohne Suche das klar sagen. Das Ergebnis ist dann nur eine Einschätzung.
- Nur melden, was belegbar oder plausibel ist. Nie behaupten, ein Text sei sicher frei von Verstößen, und nie eine Verletzung als sicher darstellen. Eine rechtliche Bewertung ersetzt das nicht.
- Fundstellen immer mit Textstelle, mutmaßlicher Quelle (URL, falls gefunden), Art des Befunds (wörtlich, Paraphrase, Übersetzung, Duplikat) und Einschätzung (hoch, mittel, niedrig) angeben.
- Als Lösung vorschlagen: Zitat kennzeichnen und Quelle nennen, in eigenen Worten neu formulieren (nur auf Wunsch und ohne Inhalt dazuzudichten), Passage entfernen oder die Lizenz klären. Nichts ohne Rückfrage umschreiben.
- Sehr kurze, allgemein übliche Wendungen, Fakten, Fachbegriffe und Standardformulierungen sind in der Regel nicht geschützt und nicht zu melden. Bei Gesetzestexten und amtlichen Werken die Quelle nennen.

## Google-SEO

Prüfe, ob der Text und die Seite für Google gut auffindbar und verständlich sind. Das ist eine Prüfung, kein Umschreiben: keine Inhalte erfinden, keine Keywords einstreuen.

1. **Title:** Pro Seite einzigartig, beschreibend, ungefähr 30 bis 60 Zeichen, Hauptthema vorn, nicht in allen Seiten gleich. In Zola kommt er aus `title` im Front Matter und `config.title`.
2. **Meta-Description:** Vorhanden, einzigartig, ungefähr 70 bis 160 Zeichen, fasst die Seite wahrheitsgemäß zusammen und lädt zum Klick ein. In Zola als `description` im Front Matter. Prüfen, ob `templates/base.html` sie als `<meta name="description">` ausgibt, sonst melden.
3. **Überschriften:** Genau eine H1, danach logische Hierarchie (H2, H3) ohne Sprünge. Überschriften beschreiben den Abschnitt, keine leeren Floskeln.
4. **Inhalt:** Beantwortet die Suchabsicht, ist hilfreich und für Menschen geschrieben (Qualität und Erfahrung vor Keyword-Dichte). Keyword-Stuffing, versteckte Texte und dünne Seiten ohne Mehrwert melden. Kurze Absätze, klare Sprache.
5. **URLs:** Kurz, sprechend, kleingeschrieben, mit Bindestrich, ohne Umlaute und Sonderzeichen (`/datenschutz` statt `/datenschutzerklärung`). Bei geänderten URLs Weiterleitung empfehlen.
6. **Links:** Interne Links mit aussagekräftigem Linktext (nicht „hier klicken“). Defekte Links und Waisenseiten ohne interne Verlinkung melden. Externe Links bei Bedarf mit `rel="nofollow"`/`sponsored`, falls bezahlt.
7. **Bilder:** Beschreibender `alt`-Text, sprechende Dateinamen, passende Größe, Breite und Höhe angeben.
8. **Technik und Indexierung:** `lang="de"`, Viewport-Meta, kanonische URL (`<link rel="canonical">`), `sitemap.xml` und `robots.txt` (Zola erzeugt beide), `base_url` korrekt auf die echte Domain, HTTPS. Impressum und Datenschutz sind erlaubt, gehören aber meist nicht in die Suche (optional `noindex`, nur nach Rückfrage).
9. **Strukturierte Daten:** Wo sinnvoll (Artikel, Organisation, Breadcrumbs) JSON-LD vorschlagen. Nichts behaupten, was nicht auf der Seite steht.

Grenzen: Niemand kann ein Ranking garantieren. Keine Versprechen zu Platzierungen, und Empfehlungen als solche kennzeichnen. Wenn möglich, den aktuellen Stand anhand der offiziellen Google-Dokumentation (Search Central) bestätigen.

Ausgabe: je Punkt `OK`, `Verbessern` oder `Fehlt`, mit konkretem Vorschlag und der betroffenen Datei oder Zeile. Formulierungsvorschläge für Title und Description sind erlaubt, aber nur als Vorschlag, der den Inhalt der Seite nicht verändert.

## Vorgehen

1. Text lesen, Fehler sammeln.
2. Eine kurze Liste der Korrekturen ausgeben: `alt → neu (Grund)`, gruppiert nach Rechtschreibung, Grammatik, Zeichensetzung.
3. Danach den Abschnitt „Urheberrecht und Duplicate Content“ mit den Fundstellen ausgeben. Wenn nichts auffällt, das klar sagen, mit dem Hinweis auf die Grenzen der Prüfung.
4. Danach die SEO-Auswertung ausgeben (siehe „Google-SEO“).
5. Den korrigierten Text ausgeben. Bei einer Datei die Änderungen erst nach Rückfrage speichern, außer der Nutzer sagt ausdrücklich, dass direkt geändert werden soll.
6. Wenn nichts zu korrigieren ist, das klar sagen.

## Ausgabe

Antworte auf Deutsch, knapp und ohne Floskeln.
