cask "tal-sampler" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Sampler-installer_macos.zip"
  name "TAL-Sampler"
  desc "Sample player"
  homepage "https://tal-software.com/products/tal-sampler"

  pkg "TAL-Sampler-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Sampler-*"

  caveats "Download factory presets separately from https://tal-software.com/products/tal-sampler"
end
