cask "tal-chorus-lx" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Chorus-LX-installer_macos.zip"
  name "TAL-Chorus-LX"
  desc "Vintage chorus effect"
  homepage "https://tal-software.com/products/tal-chorus-lx"

  pkg "TAL-Chrous-LX-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Chorus-LX-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Chorus-LX.xml"
end
