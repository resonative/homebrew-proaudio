cask "psp-285" do
  version "1.0.1"
  sha256 "5c23ac458795eb70eae8be262c75684a829e9f0a33ed18acd73259ffc1a108d3"

  url "https://download-eu2.pspaudioware.net/PSP_285/OSX/PSP_285_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP 285"
  desc "Semi-modular delay"
  homepage "https://www.pspaudioware.com/products/psp-285"

  auto_updates false

  pkg "PSP_285_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.285.*",
            delete:  "~/Documents/PSPaudioware.com/PSP 285/"
end
