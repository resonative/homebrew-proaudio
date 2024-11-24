cask "psp-twin-l" do
  version "1.2.2"
  sha256 "c51fcd8b493c7e35c37f442a9367b24a3aa6bda415fe37b05b611c2772621f6e"

  url "https://download-eu2.pspaudioware.net/PSP_Twin-L/OSX/PSP_Twin-L_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Twin-L"
  desc "Dual algorithm classic limiter"
  homepage "https://www.pspaudioware.com/products/psp-twin-l"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_Twin-L_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Twin-L.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Twin-L/"
end
