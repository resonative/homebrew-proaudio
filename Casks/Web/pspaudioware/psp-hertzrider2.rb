cask "psp-hertzrider2" do
  version "2.0.4"
  sha256 "8b7230eb6853fea4fc48be67ec6dd4bd82c190ed7efb8e1de9991621d5a6c9e6"

  url "https://download-eu2.pspaudioware.net/PSP_HertzRider2/OSX/PSP_HertzRider2_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP HertzRider2"
  desc "Stereo frequency shifter"
  homepage "https://www.pspaudioware.com/products/psp-hertzrider2"

  auto_updates false

  pkg "PSP_HertzRider2_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.HertzRider2.*",
            delete:  "~/Documents/PSPaudioware.com/PSP HertzRider2/"
end
