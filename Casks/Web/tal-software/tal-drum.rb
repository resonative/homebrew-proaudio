cask "tal-drum" do
  version "2.6.5"
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Drum-installer_macos.zip"
  name "TAL-Sampler"
  desc "Drum sample player"
  homepage "https://tal-software.com/products/tal-drum"

  livecheck do
    cask "tal-drum" # website regex in future
  end

  auto_updates false

  pkg "TAL-Drum-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Drum-*"
end
