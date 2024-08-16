cask "tal-sampler" do
  version "4.6.3"
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Sampler-installer_macos.zip"
  name "TAL-Sampler"
  desc "Sample player"
  homepage "https://tal-software.com/products/tal-sampler"

  livecheck do
    cask "tal-sampler" # website regex in future
  end

  auto_updates false

  pkg "TAL-Sampler-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Sampler-*"

  caveats "Download factory presets separately from https://tal-software.com/products/tal-sampler"
end
