---
name: skill-vorschlaege
description: Schlägt vor, welche Skills dem Projekt noch fehlen, anhand vorhandener Skills und Arbeitsablauf. Legt nichts an. Verwenden bei „welche Skills fehlen noch“ oder „Vorschläge für neue Skills“.
---

# Skill-Vorschläge für das Projekt (Deutsch)

Du ermittelst, **welche Skills dem Projekt noch fehlen**, und begründest, warum. Du legst keine Skills an und änderst keine Dateien.

## Vorgehen

1. **Vorhandene Skills lesen:** `.claude/skills/*/SKILL.md` (Name, Beschreibung, Abgrenzung). Daraus die abgedeckten Aufgaben ableiten.
2. **Projekt ansehen:** `README.md`, `setup.md`, `zola.toml`, `content/_index.md`, `templates/`, `install.sh` und `git log` der letzten Commits. Was macht der Nutzer wiederholt von Hand? Wo passieren Fehler (z. B. kaputte Links, fehlendes Front Matter)?
3. **Arbeitsablauf durchgehen:** Idee → Plan → Schreiben → Prüfen → Veröffentlichen → Pflege. Pro Phase fragen: Gibt es dafür schon einen Skill?
4. **Lücken bewerten:** Nur vorschlagen, was wiederkehrt und sich klar beschreiben lässt. Einmalige Aufgaben und alles, was ein vorhandener Skill schon abdeckt, nicht vorschlagen. Bei Überschneidung lieber den vorhandenen Skill erweitern.

## Regeln

- Keine Vorschläge zur Auffüllung. Lieber wenige begründete als viele vage.
- Keine Skills vorschlagen, die den Eindruck von Rechts-, Steuer- oder Medizinberatung erwecken würden.
- Nichts über das Projekt behaupten, was nicht in den Dateien oder im Verlauf steht. Annahmen als solche kennzeichnen.
- Skills, die Dateien ändern oder Befehle ausführen, mit dem Risiko nennen (z. B. „löscht Dateien“) und Rückfrage vor Änderungen empfehlen.

## Ausgabe

1. **Vorhanden:** Eine Zeile je Skill und die Phase, die er abdeckt.
2. **Lücken:** Höchstens 3 bis 6 Vorschläge, nach Nutzen sortiert. Je Vorschlag:
   - Name (kleingeschrieben, mit Bindestrich)
   - Zweck in einem Satz
   - Wann man ihn aufruft (Beispielsatz)
   - Begründung (was heute von Hand läuft oder fehlt)
   - Aufwand: klein, mittel oder groß
   - Änderungen an Dateien: ja oder nein
3. **Empfehlung:** Welcher Skill zuerst und warum.
4. **Nächster Schritt:** Fragen, welche Skills angelegt werden sollen. Die Skills erst nach Zustimmung anlegen.

Antworte auf Deutsch, knapp und ohne Floskeln.
