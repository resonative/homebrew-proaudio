cask "psp-springbox" do
  version "1.1.3"
  sha256 "05beab23601f8b84e9d7831cec286f487fa04b1de61c2ea57d287578df273b98"

  url "https://download-eu2.pspaudioware.net/PSP_SpringBox/OSX/PSP_SpringBox_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP SpringBox"
  desc "Spring reverb"
  homepage "https://www.pspaudioware.com/products/psp-springbox"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_SpringBox_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.SpringBox.*",
            delete:  "~/Documents/PSPaudioware.com/PSP SpringBox/"
end
