# Mac Setup

## Create bootable macOS thumbdrive

Example for High Sierra:

```bash
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

https://support.apple.com/en-us/HT201372

## Bootstrap your machine

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

# macOS tweaks
./osx.sh

# Install web development specific tools
./webdev.sh
```

## Apps

[brew.sh](https://brew.sh/) [handles application installs](https://github.com/sixteenbit/mac-setup/blob/master/apps.sh) for the most part, but there are a few apps I like getting from the source (or isn't available through brew).

### Development

* [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
* [Local](https://local-by-flywheel-flywheel.netdna-ssl.com/latest/mac)

### Utilities

* [ESET Cyber Security](https://download.eset.com/com/eset/apps/home/eav/mac/latest/eset_cybersecurity_en_.dmg)
* [1Password](https://1password.com/downloads/)

## PhpStorm Plugins

* .ignore
* BashSupport
* Material UI
* EditorConfig
* Sass Lint
