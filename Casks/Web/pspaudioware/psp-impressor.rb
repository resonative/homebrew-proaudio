cask "psp-impressor" do
  version "1.0.3"
  sha256 "aceebf389201a9ebfe4fefe576f3835bb63485e59e9d9582d6de55c86329fd86"

  url "https://download-eu2.pspaudioware.net/PSP_Impressor/OSX/PSP_Impressor_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Impressor"
  desc "Compressor with valve and opto-electronics characteristics"
  homepage "https://www.pspaudioware.com/products/psp-impressor"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_Impressor_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Impressor.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Impressor/"
end
