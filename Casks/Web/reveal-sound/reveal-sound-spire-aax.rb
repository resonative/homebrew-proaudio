cask "reveal-sound-spire-aax" do
  version :latest
  sha256 :no_check

  url "https://distribs.ams3.cdn.digitaloceanspaces.com/Spire/Spire-1.5.16-5294/MAC/Reveal_Sound_Spire_AAX-1.5.16-5294_bigsur.zip",
      verified: "distribs.ams3.cdn.digitaloceanspaces.com/"
  name "Reveal Sound Spire AAX"
  desc "testing"
  homepage "https://www.reveal-sound.com/"

  auto_updates false

  pkg "Reveal_Sound_Spire_AAX-1.5.16-5294_bigsur.pkg"

  uninstall pkgutil: "com.revealsound.spire.1.1.aax.pkg"
end
