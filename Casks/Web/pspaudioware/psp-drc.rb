cask "psp-drc" do
  version "1.0.0"
  sha256 "356b8ab23d5b4aaa673f5d1bc4aa986f8c47770b11654893b15d09fbd2c47b3d"

  url "https://download-eu2.pspaudioware.net/PSP_DRC/OSX/PSP_DRC_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP DRC"
  desc "Dynamic range controller inspired by DBX 118"
  homepage "https://www.pspaudioware.com/products/psp-drc"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_DRC_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.DRC.*",
            delete:  "~/Documents/PSPaudioware.com/PSP DRC/"
end
