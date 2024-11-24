cask "psp-echo" do
  version "1.5.3"
  sha256 "ae7417b8a05a9ea376ca590498f4d8409b6949306cf74f7b7726116151f16bb6"

  url "https://download-eu2.pspaudioware.net/PSP_Echo/OSX/PSP_Echo_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Echo"
  desc "Tape delay"
  homepage "https://www.pspaudioware.com/products/psp-echo"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "PSP_Echo_macOS.pkg"
 
  uninstall pkgutil: "com.PSPaudioware.PSP.Echo.*",
            delete:  "~/Documents/PSPaudioware.com/PSP Echo/"
end
