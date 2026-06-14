cask "psp-auralcontrol" do
  version "1.3.0"
  sha256 "f74293fe1ebb1a6f72a890d3537766daff7a72811cb33207dc413825ebc0e244"

  url "https://download-eu2.pspaudioware.net/PSP_auralControl/OSX/PSP_auralControl_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP auralControl"
  desc "Multi-channel utilities"
  homepage "https://www.pspaudioware.com/products/psp-auralcontrol"

  auto_updates false

  pkg "PSP_auralControl_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.auralControl.*",
            delete:  "~/Documents/PSPaudioware.com/PSP auralControl/"
end
