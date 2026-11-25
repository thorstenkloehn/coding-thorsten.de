# Setup: Zola und mdBook installieren

Alles auf einmal installieren und den Status unten aktualisieren:

```bash
./install.sh
```

## Voraussetzungen

- Rust-Toolchain (`cargo`), z. B. über [rustup](https://rustup.rs):

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
```

- `~/.cargo/bin` muss im `PATH` liegen:

```bash
export PATH="$HOME/.cargo/bin:$PATH"
```

## mdBook

```bash
cargo install mdbook
mdbook --version
```

Hinweis (Stand: November 2026): `cargo install mdbook` installiert die neueste Version, derzeit 0.5.x. Ein Update einer vorhandenen Installation geht mit `cargo install --locked mdbook`, `install.sh` überspringt mdBook, wenn es schon da ist. Zwischen 0.4 und 0.5 können sich Konfiguration und Verhalten ändern, Bücher mit alter Konfiguration also nach dem Update prüfen.

```bash
mdbook init mein-buch   # neues Buch anlegen
mdbook serve --open     # lokaler Server mit Live-Reload
mdbook build            # statische Seite nach book/ bauen
```

## Zola

Über Cargo (kompiliert aus dem Quellcode, dauert einige Minuten):

```bash
cargo install --locked --git https://github.com/getzola/zola
zola --version
```

Alternativen: `sudo snap install zola --edge` oder ein fertiges Binary von den
[GitHub-Releases](https://github.com/getzola/zola/releases).

Hinweis (Stand: November 2026): Der Snap liefert derzeit nur im Kanal `edge` die Version 0.22.1, das ist älter als die hier getestete Version 0.23.6. Stable und Candidate sind leer. Für die aktuelle Version ist ein Binary von den GitHub-Releases oder die Installation über Cargo besser.

```bash
zola serve   # lokaler Server mit Live-Reload (http://127.0.0.1:1111)
zola build   # statische Seite nach public/ bauen
```

## Startseite (Zola + Bootstrap)

Dieses Verzeichnis ist eine Zola-Seite:

- `zola.toml`: Konfiguration (vor dem Livegang `base_url` auf die echte Domain setzen)
- `content/_index.md`: Inhalt der Startseite
- `templates/base.html`, `templates/index.html`: Templates
- `static/bootstrap/`: Bootstrap 5.3.9 (CSS und JS-Bundle), lokal eingebunden (Stand: November 2026, aktuelle Version)

## Aktueller Stand auf diesem Rechner

| Tool   | Status |
|--------|--------|
| mdBook | installiert (v0.5.4) |
| Zola   | installiert (v0.23.6) |
