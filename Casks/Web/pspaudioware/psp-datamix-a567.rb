cask "psp-datamix-a567" do
  version "1.0.1"
  sha256 "c7bb026a23652b70cdc0dbfe0f94612663eeff97618e3847d1c5bade5b5d4271"

  url "https://download-eu2.pspaudioware.net/PSP_Datamix_A567/OSX/PSP_Datamix_A567_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Datamix A567"
  desc "Datamix console EQ emulation"
  homepage "https://www.pspaudioware.com/products/psp-datamix-a567"

  auto_updates false

  pkg "PSP_Datamix_A67_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.A567Datamix.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Datamix A567/"
end
