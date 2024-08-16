cask "tal-mod" do
  version "1.9.8"
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Mod-installer_macos.zip"
  name "TAL-Mod"
  desc "Modular virtual analog synthesizer"
  homepage "https://tal-software.com/products/tal-mod"

  livecheck do
    cask "tal-mod" # website regex in future
  end

  auto_updates false

  pkg "TAL-Mod-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Mod-*"
end
