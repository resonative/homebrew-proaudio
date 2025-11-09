cask "psp-x-dither" do
  version "1.1.1"
  sha256 "82ba417be92d1ac39fd76fedcf55732ad5828e94342f2d873caee9907691d4a7"

  url "https://download-eu2.pspaudioware.net/PSP_X-Dither/OSX/PSP_X-Dither_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP X-Dither"
  desc "Dither plugin"
  homepage "https://www.pspaudioware.com/products/psp-x-dither"

  auto_updates false

  pkg "PSP_X-Dither_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.XDither.*",
            delete:  "~/Documents/PSPaudioware.com/PSP X-Dither/"
end
