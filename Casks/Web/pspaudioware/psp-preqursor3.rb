cask "psp-preqursor3" do
  version "3.0.1"
  sha256 "e5d057428a3273a21b91a2c393fe5dc90ea8d9f1b5b815d638d6b2113c28e908"

  url "https://download-eu2.pspaudioware.net/PSP_preQursor3/OSX/PSP_preQursor3_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP preQursor3"
  desc "Low resonance/ringing equalizer"
  homepage "https://www.pspaudioware.com/products/psp-preqursor2"

  auto_updates false

  pkg "PSP_preQursor3_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.preQursor3.*",
            delete:  "~/Documents/PSPaudioware.com/PSP preQursor3/"
end
