cask "tal-j-8" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-J-8-installer_macos.zip"
  name "TAL-J-8"
  desc "Jupiter 8 emulation synthesizer"
  homepage "https://tal-software.com/products/tal-j-8"

  pkg "TAL-J-8-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-J-8-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-J-8.xml"
end
