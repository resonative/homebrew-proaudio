cask "psp-infinistrip" do
  version "1.3.0"
  sha256 "04ceb5fc8ffdf23325004757f70717540896e611d026e5b1e46e0975dbcabfb1"

  url "https://download-eu2.pspaudioware.net/PSP_InfiniStrip/OSX/PSP_InfiniStrip_#{version}_WIND_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP InfiniStrip"
  desc "Zero latency channel Strip"
  homepage "https://www.pspaudioware.com/products/psp-infinistrip"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_InfiniStrip_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.InfiniStrip.*",
            delete:  "~/Documents/PSPaudioware.com/PSP InfiniStrip/"
end
