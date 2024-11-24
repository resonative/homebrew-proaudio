cask "psp-fetpressor" do
  version "1.2.2"
  sha256 "0311f2fa5df115b14dd1adf0eef5da46d8b68c131f7284ee57b06550e40dfa1f"

  url "https://download-eu2.pspaudioware.net/PSP_FETpressor/OSX/PSP_FETpressor_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP FETpressor"
  desc "FET feedback type compressor"
  homepage "https://www.pspaudioware.com/products/psp-fetpressor"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_FETpressor_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.FETpressor.*",
            delete:  "~/Documents/PSPaudioware.com/PSP FETpressor/"
end
