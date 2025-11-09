cask "psp-auralcontrol" do
  version "1.2.5"
  sha256 "5b4d289826214f507d521f27dff59f38be8c775d31d55ff6d017bd0466197c9c"

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
