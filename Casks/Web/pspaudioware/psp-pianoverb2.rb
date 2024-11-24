cask "psp-pianoverb2" do
  version "2.5.5"
  sha256 "13f5c65cf37b603a01fe074197b938a890b82e43c0d92ee5eda1b474a43ae95b"

  url "https://download-eu2.pspaudioware.net/PSP_PianoVerb2/OSX/PSP_PianoVerb2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP PianoVerb2"
  desc "Creative resonant reverb"
  homepage "https://www.pspaudioware.com/products/psp-pianoverb2"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_PianoVerb2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.PianoVerb2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP PianoVerb2/"
end
