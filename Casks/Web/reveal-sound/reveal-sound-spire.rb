cask "reveal-sound-spire" do
  version :latest
  sha256 :no_check

  url "dummy"
      verified: "dummy"
  name "Reveal Sound Spire AAX"
  desc "testing"
  homepage "https://www.reveal-sound.com/"

  auto_updates false
  depends_on cask: "reveal-sound-spire-aax"


  manual "dummy.txt"

  uninstall pkgutil: "com.revealsound.spire.1.1.aax.pkg"
end
