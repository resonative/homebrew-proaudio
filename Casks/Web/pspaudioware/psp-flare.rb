cask "psp-flare" do
  version "1.1.0"
  sha256 "d5ed11e961160de32608cc078732af782c41d909872e3ef5c8080e038961b7bd"

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
