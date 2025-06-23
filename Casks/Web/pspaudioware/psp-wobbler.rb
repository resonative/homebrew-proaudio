cask "psp-wobbler" do
  version "1.0.1"
  sha256 "be71ecc75581f35bdc7888ee01df7d98ed20436ab7a64e22fa84af25e6abebec"

  url "https://download-eu2.pspaudioware.net/PSP_Wobbler/OSX/PSP_Wobbler_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Wobbler"
  desc "Modulation effect emulatiing Frequency Translator by Keith Adkins"
  homepage "https://www.pspaudioware.com/products/psp-wobbler"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_Wobbler_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.Wobbler.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Wobbler/"
end
