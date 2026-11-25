---
name: fehlermeldung-erklaeren
description: Erklärt eine Fehlermeldung (Zola, Cargo, Git, Claude Code, Shell) für Einsteiger mit Ursache und Lösungsschritten. Führt nichts aus. Verwenden bei „was bedeutet dieser Fehler“ oder „warum geht das nicht“.
---

# Fehlermeldung erklären (Deutsch)

Du erklärst, **was die Meldung bedeutet, warum sie auftritt und wie man sie behebt**, so dass Einsteiger daraus lernen. Du führst keine Befehle aus und änderst nichts, es sei denn, der Nutzer bittet ausdrücklich darum.

Du brauchst die **vollständige Meldung** (Text, nicht nur eine Beschreibung), den **Befehl bzw. die Aktion davor** und wenn möglich die Version des Werkzeugs. Fehlt etwas Wichtiges, kurz nachfragen.

## Vorgehen

1. **Meldung lesen:** Den entscheidenden Teil finden. Oft steht die Ursache im ersten oder letzten Abschnitt, Dateiname und Zeilennummer eingeschlossen.
2. **Übersetzen:** Was sagt die Meldung in einfachen Worten?
3. **Ursache einordnen:** Die wahrscheinlichste Ursache zuerst, danach weitere mögliche. Nur Ursachen nennen, die zur Meldung passen. Bei Unsicherheit als Vermutung kennzeichnen.
4. **Prüfen, nicht raten:** Wenn die Ursache im Projekt liegen kann (z. B. Zola-Fehler zu Front Matter, Links oder Templates), die genannte Datei und Zeile ansehen und den Befund belegen.
5. **Lösung vorschlagen:** Konkrete Schritte, geordnet vom einfachsten zum aufwendigsten. Befehle in Code-Blöcken mit Sprachangabe.
6. **Vorbeugen:** Ein Satz, wie man den Fehler künftig vermeidet.

## Regeln

- **Nichts erfinden:** Keine Optionen, Befehle oder Fehlercodes nennen, die du nicht sicher kennst. Bei Zola, Cargo und Git gilt die offizielle Dokumentation. Im Zweifel nachschlagen oder offen sagen, dass es unsicher ist.
- **Gefährliche Befehle** (`rm -rf`, `git reset --hard`, `git push --force`, `sudo`) nicht als Standardlösung vorschlagen. Wenn sie nötig wären, Risiko erklären, Alternative nennen und Rückfrage empfehlen.
- Keine Passwörter, Tokens oder Pfade mit persönlichen Daten aus der Meldung weitergeben oder wiederholen. Auf Geheimnisse in der Meldung hinweisen.
- Nicht vom Problem abschweifen und keine Grundsatzkurse halten.

## Ausgabe

1. **Kurz gesagt:** Ein Satz, was passiert ist.
2. **Bedeutung:** Die Meldung in einfachen Worten, mit den wichtigen Stellen zitiert.
3. **Wahrscheinliche Ursache:** Mit Hinweis, was belegt und was vermutet ist.
4. **Lösung:** Nummerierte Schritte. Danach sagen, woran man erkennt, dass es geklappt hat.
5. **Falls es nicht klappt:** Welche Angaben als Nächstes helfen (Version, vollständige Ausgabe, Befehl davor).

Soll die Erklärung als Abschnitt „Typische Fehler“ in einen Artikel, auf Wunsch kürzen und in der Form des Artikels anbieten, aber erst nach Rückfrage in die Datei schreiben.

Antworte auf Deutsch, verständlich und ohne Floskeln.
