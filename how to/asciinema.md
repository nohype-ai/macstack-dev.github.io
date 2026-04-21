# Embedding Asciinema Player

Approach: Clean, small HTML, parallel asset loading, everything lives locally, asciinema preview via terminal, loading .cast file via `file://` URI

## 1. Record your session
```bash
asciinema rec demo.cast
```

## 2. Download the player (one time)
Go to: https://github.com/asciinema/asciinema-player/releases/latest  
Download these **two files** from the Assets section:
- `asciinema-player.min.js`
- `asciinema-player.css`

## 3. Folder structure (everything local)
```
your-project/
├── index.html
├── asciinema-player.min.js
├── asciinema-player.css
└── demo.cast
```

## 4. `index.html` (copy-paste)
```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>My Demo</title>
  <link rel="stylesheet" href="asciinema-player.css">
</head>
<body>
  <h1>Terminal Recording</h1>
  
  <div id="player"></div>

  <script src="asciinema-player.min.js"></script>
  <script>
    AsciinemaPlayer.create('demo.cast', document.getElementById('player'), {
      theme: 'dracula',     // dracula, monokai, solarized-dark, etc.
      speed: 1.0,
      loop: false
    });
  </script>
</body>
</html>
```

## 5. Preview the page
**Use a local server** (required for reliable loading):

```bash
python -m http.server 8000
```
Then open: **http://localhost:8000/index.html**

**Alternative one-liners:**
- `npx serve .`
- `php -S localhost:8000`

## 6. Notes
- **file:// (double-click)**: Usually fails to load `demo.cast` due to browser security. You said you tolerate this — just use the local server above when you want to view the web version.
- **Terminal preview** (always works): `asciinema play demo.cast`
- All assets (JS, CSS, cast) stay in your folder — no CDN, fully self-contained.
- To update the recording later, just replace `demo.cast` — no HTML changes needed.
- Full options list: https://docs.asciinema.org/manual/player/options/
