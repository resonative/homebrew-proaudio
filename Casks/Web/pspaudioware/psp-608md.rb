cask "psp-608md" do
  version "1.8.6"
  sha256 "58b794aeea1f048db107a7f80bccc4bd6bfc342a14d4c4867eab80ac42bcb3e7"

  url "https://download-eu2.pspaudioware.net/PSP_608_MultiDelay/OSX/PSP_608_MultiDelay_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP 608MD"
  desc "Multi-tap delay"
  homepage "https://www.pspaudioware.com/products/psp-608md"

  auto_updates false

  pkg "PSP_608_MultiDelay_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.608MultiDelay.*",
            delete:  "~/Documents/PSPaudioware.com/PSP 608 MultiDelay/"
end
