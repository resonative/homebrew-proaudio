# Homebrew ProAudio

Some cask formulae of pro audio software. This tap mainly streamline/assist setting up new system (vs maintaining legacy system.) Companies' dedicated installer/portal (NI, Izotope, etc) is preferred.

As many audio software companies have gated downloads (after purchase), working on solution to
* Support local http server url vs online (where local http server is setup/maintained by the user themselves, e.g. a NAS)

As homebrew only support 3 versions of macos, need to work out a specific homebrew version for installation instruction.
* Primary target is Mojave (legacy system) and Monterey (current for audio but about to be sunspported in 2024 by homebrew)

> [!WARNING]
> _Very_ alpha, everything is testing. Only tested on Monterey so far
> This repo will get hard reset in near future to have a proper main/testing branch

## Formulae already in homebrew-core

See https://formulae.brew.sh/cask/
* Arturia (arturia-software-center)
* Surge XT (surge-xt)
* Izotpe product portal (izotope-product-portal)
* Ableton various editions (ableton-live-...)
* ilok (ilok-license-manager)
* Fabfilter (fabfilter-...)


## How do I install these formulae?

`brew install resonative/proaudio/<formula>`

Or `brew tap resonative/proaudio` and then `brew install <formula>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "resonative/proaudio"
brew "<formula>"
```

All formula under `prv` folder requires a HTTP/HTTPs server serving your own archived installers.

Folder structure is `<your url>`/companyName/installer_name_as_downloaded

## Documentation
