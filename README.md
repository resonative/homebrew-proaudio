# ProAudio Tap (third-party tap to be used with [homebrew](https://brew.sh)

Some cask formulae of pro audio software.


> [!CAUTION]
> Formulae has mainly tested against Monterey (macos 12.7.4 and macos 12.7.5) only
> and Sequoia 15.5 (from Jun22 2025)

This tap supports both online (`/Cask/Web`) and private copies (`/Cask/Prv`).
As many installers are downloadable only after purchase, `/Cask/Prv` formulae intend to support these install.

See documentation here (outdated): [notion.so page](https://resonative.notion.site/homebrew-proaudio-Documentation-08dabd377f5e4f5d844b600fbf64ce0e?pvs=74)


## /Cask/Prv

### Requirements
* Your own HTTP server serving your installer archive (e.g. Lighttpd with mod_dirlisting)
* Folder structure mirroring what is inside of [`/Cask/Prv`], 
  - example: `http://my-downloaded-installers.lan/[a-z]/cask-formula-name/v{#version}/filename_as_downloaded.zip`


### Configuration:
After running brew tap `resonative/proaudio`, create the json file with wither command below or manually:

```
brew prvarchiveurl --url="http://my-downloaded-installers.lan"
```

This command will create json file under `#{HOMEBREW_PREFIX}/etc/resonative/homebrew-audio/prvinstallerhelper.json`

```
{
  "server": "http://my-downloaded-installers.lan"
}
```


## How do I install these formulae?

See [official documentation](https://docs.brew.sh/Taps)