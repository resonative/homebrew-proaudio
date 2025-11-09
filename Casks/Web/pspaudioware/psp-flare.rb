cask "psp-flare" do
  version "1.0.3"
  sha256 "6b5381fb28f73e1d10a188595727bbca900f876e91ba6dc395f5e2d661ee7d8b"

  url "https://download-eu2.pspaudioware.net/PSP_Flare/OSX/PSP_Flare_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Flare"
  desc "Psycho-acoustic compressor"
  homepage "https://www.pspaudioware.com/products/psp-flare"

  auto_updates false

  pkg "PSP_Flare_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Flare.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Flare/"
end
