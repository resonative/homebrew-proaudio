cask "tal-reverb-4" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Reverb-4-installer_macos.zip"
  name "TAL-Reverb-4"
  desc "Plate reverb"
  homepage "https://tal-software.com/products/tal-reverb-4"

  pkg "TAL-Reverb-4-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Reverb-4-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Reverb-4.xml"
end
