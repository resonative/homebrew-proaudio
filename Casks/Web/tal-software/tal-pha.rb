cask "tal-pha" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Pha-installer_macos.zip"
  name "TAL-Pha"
  desc "Alpha Juno II emulation synthesizer"
  homepage "https://tal-software.com/products/tal-pha"

  pkg "TAL-Pha-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Pha-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Pha.xml"
end
