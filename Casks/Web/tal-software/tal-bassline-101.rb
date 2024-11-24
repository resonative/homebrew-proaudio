cask "tal-bassline-101" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-BassLine-101-installer_macos.zip"
  name "TAL-Bassline-101"
  desc "SH-101 emulation"
  homepage "https://tal-software.com/products/tal-mod"

  pkg "TAL-Bassline-101-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-BassLine-101-*"
end
