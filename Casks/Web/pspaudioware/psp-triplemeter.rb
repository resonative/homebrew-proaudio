cask "psp-triplemeter" do
  version "3.1.0"
  sha256 "784c009c7190d3fb237fb0b7ba9e9403bf040aef158ca0c0cbb3cba250343580"

  url "https://download-eu2.pspaudioware.net/PSP_TripleMeter/OSX/PSP_TripleMeter_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP TripleMeter"
  desc "VU, RME, PPM metering"
  homepage "https://www.pspaudioware.com/products/psp-triplemeter"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_TripleMeter_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.TripleMeter.*",
            delete:  "~/Documents/PSPaudioware.com/PSP TripleMeter/"
end
