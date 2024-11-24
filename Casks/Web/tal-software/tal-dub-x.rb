cask "tal-dub-x" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Dub-X-installer_macos.zip"
  name "TAL-Dub-X"
  desc "Delay effects"
  homepage "https://tal-software.com/products/tal-dub-x"

  pkg "TAL-Dub-X-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Dub-X-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Dub-X.xml"
end
