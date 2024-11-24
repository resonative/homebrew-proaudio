cask "tal-vocoder" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Vocoder-2-installer_macos.zip"
  name "TAL-Vocoder"
  desc "Vintage style vocoder"
  homepage "https://tal-software.com/products/tal-vocoder"

  pkg "TAL-Vocoder-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Vocoder-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Vocoder.xml"
end
