# 🍺 Homebrew Tap for AeroSpaceBar

> **Official Homebrew tap for installing AeroSpaceBar - A modern macOS menu bar application for managing AeroSpace window manager**

[![macOS](https://img.shields.io/badge/macOS-15.0+-silver.svg)](https://www.apple.com/macos/)

## 📖 About

This is the official Homebrew tap for [AeroSpaceBar](https://github.com/rdrkr/aerospacebar-app), providing easy installation and updates through the Homebrew package manager.

## 🚀 Installation

### Quick Install
Add the tap:

```bash
brew tap rdrkr/tap
```

## 📦 Available Casks

| Cask           | Description                                                             |
|----------------|-------------------------------------------------------------------------|
| `aerospacebar` | Modern macOS menu bar application for managing AeroSpace window manager |

## ⚙️ Prerequisites

- **macOS 15.0+** (Sequoia or later)

## 🛠️ For Maintainers

### Updating the Formula

When releasing a new version:

1. **Update version and SHA256** in `Casks/aerospacebar.rb`:
   Calculate SHA256 of the release zip: 
   ```bash
   shasum -a 256 AeroSpaceBar-v1.0.0.zip
   ```

2. **Update the cask file**:
   ```ruby
   version "1.0.0"
   sha256 "calculated_sha256_hash_here"
   ```

3. **Commit and push**:
   ```bash
   git add Casks/aerospacebar.rb
   git commit -m "Update AeroSpaceBar to v1.0.0"
   git push
   ```

### Testing the Formula

```bash
# Audit the cask
brew audit --cask aerospacebar

# Test installation
brew install --cask aerospacebar --verbose --debug
```

## 🔗 Links

- **Main Application**: [aerospacebar-app](https://github.com/rdrkr/aerospacebar-app)
- **Report Issues**: [GitHub Issues](https://github.com/rdrkr/aerospacebar-app/issues)
- **Discussions**: [GitHub Discussions](https://github.com/rdrkr/aerospacebar-app/discussions)

## 💬 Support

For application issues, feature requests, or questions:
- Open an issue: [GitHub Issues](https://github.com/rdrkr/aerospacebar-app/issues)
- Start a discussion: [GitHub Discussions](https://github.com/rdrkr/aerospacebar-app/discussions)

For tap-specific issues (installation problems, formula bugs):
- Open an issue: [Tap Issues](https://github.com/rdrkr/homebrew-tap/issues)

---

<div align="center">

**Made with ❤️ by [Ronen Druker](https://github.com/rdrkr)**

[⭐ Star AeroSpaceBar](https://github.com/rdrkr/aerospacebar-app/stargazers) | [🐛 Report a bug](https://github.com/rdrkr/aerospacebar-app/issues) | [💡 Request a feature](https://github.com/rdrkr/aerospacebar-app/issues/new)

</div>
