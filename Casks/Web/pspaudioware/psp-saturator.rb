cask "psp-saturator" do
  version "1.1.3"
  sha256 "39808b7a744136c39a44afef8b9bbf0badd809024d096002ad1a3d0d5ad82d51"

  url "https://download-eu2.pspaudioware.net/PSP_Saturator/OSX/PSP_Saturator_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Saturator"
  desc "Analog saturation plugin"
  homepage "https://www.pspaudioware.com/products/psp-saturator"

  auto_updates false

  pkg "PSP_Saturator_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.Saturator.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Saturator/"
end
