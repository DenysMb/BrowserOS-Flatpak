<div align="center">
  <img src="com.browseros.BrowserOS.png" alt="BrowserOS Logo" width="128" />

  # BrowserOS Flatpak

  **Unofficial Flatpak packaging for [BrowserOS](https://browseros.com)**

  > This is an **unofficial, community-maintained** Flatpak build. It is not affiliated with or endorsed by the BrowserOS team.
</div>

---

## What is BrowserOS?

[BrowserOS](https://browseros.com) is an open-source, AI-powered browser that turns your words into actions. Just describe your task in plain language — it handles all the clicking, typing, and navigating for you. A privacy-first alternative to Chrome, reimagined for the AI era.

**Key features:**
- **Local AI agents** — Automate any task by describing it in natural language, no code needed
- **Split view** — Use ChatGPT, Claude, Gemini, or Grok as a side panel on any website
- **MCP integrations** — Pre-installed servers for Gmail, Calendar, Docs, Sheets, and Notion
- **True privacy** — Run local models via Ollama or bring your own API keys
- **Chrome extension compatible** — Works with all your existing Chrome extensions

## Demo

https://pub-80f8a01e6e8b4239ae53a7652ef85877.r2.dev/resources/Demo2.mp4

## Installation

### Prerequisites

Make sure you have [Flatpak](https://flatpak.org/setup/) and [flatpak-builder](https://docs.flatpak.org/en/latest/flatpak-builder.html) installed, along with the required runtime:

```sh
flatpak install flathub org.freedesktop.Platform//25.08 org.freedesktop.Sdk//25.08
flatpak install flathub org.chromium.Chromium.BaseApp//25.08
```

### Build and install

```sh
git clone https://github.com/DenysMb/BrowserOS-Flatpak.git
cd BrowserOS-Flatpak
flatpak-builder --user --install --force-clean build-dir com.browseros.BrowserOS.yaml
```

### Run

```sh
flatpak run com.browseros.BrowserOS
```

---

> For the official BrowserOS downloads (macOS, Windows, Linux AppImage), visit [browseros.com](https://browseros.com).
