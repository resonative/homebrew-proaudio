# Homebrew ProAudio

Some cask formulae of pro audio software. This tap mainly streamline/assist setting up new system (vs maintaining legacy system.) Companies' dedicated installer/portal (NI, Izotope, etc) is preferred.

> [!WARNING]
> _Very_ alpha and intended for personal use only currently.

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

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
