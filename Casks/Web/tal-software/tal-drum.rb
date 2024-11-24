cask "tal-drum" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Drum-installer_macos.zip"
  name "TAL-Sampler"
  desc "Drum sample player"
  homepage "https://tal-software.com/products/tal-drum"

  pkg "TAL-Drum-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Drum-*"
end
