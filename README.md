# Mac Setup

## Create bootable macOS thumbdrive

I like to use [macOS Patcher](http://dosdude1.com/catalina/)

## Bootstrap your machine

Download all the files to your home directory.

```bash
cd ~; curl -#L https://github.com/sixteenbit/mac-setup/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

## Usage

Everything is optional and should be tweaked to your personal needs.

```bash
cd ~/

# Checks for Apple updates and Xcode Command Line Tools
./osxprep.sh

# Install specified apps and software with Homebrew.sh
./brew.sh

# Install Applications with brew.sh
./apps.sh

# Install web development specific tools
./webdev.sh
```

## Apps

[brew.sh](https://brew.sh/) [handles application installs](https://github.com/sixteenbit/mac-setup/blob/master/apps.sh) for the most part, but there are a few apps I like getting from the source (or isn't available through brew).

### Development

* [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [PhpStorm](https://www.jetbrains.com/phpstorm/download/#section=mac)
* [Local](https://cdn.localwp.com/stable/latest/mac)
* [iTerm2](https://iterm2.com/downloads.html)
* [Atom](https://atom.io/download/mac)
* [Transmit](https://panic.com/download/transmit/Transmit-5-Latest.zip)
* [Adobe Creative Cloud](https://creativecloud.adobe.com/apps/all/desktop#)
* [DevDesktop](https://dev.acquia.com/downloads)

### Utilities

* [ESET Cyber Security](https://download.eset.com/com/eset/apps/home/eav/mac/latest/eset_cybersecurity_en_.dmg)
* [1Password](https://1password.com/downloads/)
* [Resilio Sync](https://download-cdn.resilio.com/stable/osx/Resilio-Sync.dmg)
* [Sip](https://sipapp.io/updates/)
* [Alfred](https://www.alfredapp.com/)
* [Karabiner](https://karabiner-elements.pqrs.org/)
* [Spotify](https://download.scdn.co/SpotifyInstaller.zip)

### Chat

* [Slack](https://slack.com/ssb/download-osx)
* [Discord](https://discord.com/api/download?platform=osx)
* [Zoom](https://zoom.us/download)

### 3D Printing

* [Prusa Slicer](https://github.com/prusa3d/PrusaSlicer/releases)
* [Fusion 360](https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.dmg)

## PhpStorm Plugins

* .ignore
* BashSupport
* Material UI
* EditorConfig
* Sass Lint
