# ploutonconsulting/homebrew-tap

Homebrew tap for Plouton Consulting's open-source macOS apps.

## Usage

```bash
brew tap ploutonconsulting/tap
brew install --cask mdviewer
```

Or in one shot:

```bash
brew install --cask ploutonconsulting/tap/mdviewer
```

## Casks

| Cask | Description | Repo |
|------|-------------|------|
| `mdviewer` | Native macOS markdown viewer (SwiftUI + MarkdownUI) | [md_viewer](https://github.com/ploutonconsulting/md_viewer) |

## Updating a Cask

After a new GitHub Release is published in the upstream repo:

1. Note the version and SHA256 from the release workflow summary
2. Edit the corresponding `Casks/<name>.rb`:
   ```ruby
   version "X.Y.Z"
   sha256 "<new-sha256>"
   ```
3. Commit and push to `main`

Homebrew picks up changes immediately on `brew update`.

## License

Tap metadata: MIT. Each upstream cask retains its own license.
