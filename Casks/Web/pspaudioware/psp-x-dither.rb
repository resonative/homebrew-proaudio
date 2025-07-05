cask "psp-x-dither" do
  version "1.1.0"
  sha256 "6a12ddcd578645d5241b527f56d9c963be62deac4a001e7befacd160b68dad9e"

  url "https://download-eu2.pspaudioware.net/PSP_X-Dither/OSX/PSP_X-Dither_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP X-Dither"
  desc "Dither plugin"
  homepage "https://www.pspaudioware.com/products/psp-x-dither"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_X-Dither_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.XDither.*",
            delete:  "~/Documents/PSPaudioware.com/PSP X-Dither/"
end
