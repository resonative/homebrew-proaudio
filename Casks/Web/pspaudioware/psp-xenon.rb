cask "psp-xenon" do
  version "1.6.2"
  sha256 "4bdad8e19ddd7cd9d63f3ca5771e5f77fd0155cfa6706ed2341a3c836aa8db4a"

  url "https://download-eu2.pspaudioware.net/PSP_Xenon/OSX/native/PSP_Xenon_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Xenon"
  desc "Single band dual-stage limiter"
  homepage "https://www.pspaudioware.com/products/psp-xenon"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_Xenon_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Xenon.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Xenon/"
end
