cask "psp-e27" do
  version "1.7.4"
  sha256 "54b52c5c7eb40bc8b7d7232c24a6018730f172ae219c45df2162c08013456042"

  url "https://download-eu2.pspaudioware.net/PSP_E27/OSX/PSP_E27_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP E27"
  desc "Avedia audio E27 equalizer emulation"
  homepage "https://www.pspaudioware.com/products/psp-e27"

  auto_updates false

  pkg "PSP_E27_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.E27.*",
            delete:  "~/Documents/PSPaudioware.com/PSP E27/"
end
