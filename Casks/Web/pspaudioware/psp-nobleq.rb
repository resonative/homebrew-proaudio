cask "psp-nobleq" do
  version "1.8.4"
  sha256 "2ebbbffa6f6d511c7413a0aabf8d22409785022a4befae3092924881bff2beb2"

  url "https://download-eu2.pspaudioware.net/PSP_NobleQ/OSX/PSP_NobleQ_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP NobleQ"
  desc "Passive program style equalizer"
  homepage "https://www.pspaudioware.com/products/psp-nobleq"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_NobleQ_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.NobleQ.*",
            delete:  "~/Documents/PSPaudioware.com/PSP NobleQ/"
end
