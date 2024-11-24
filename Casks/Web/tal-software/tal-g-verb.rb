cask "tal-g-verb" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-G-Verb-installer_macos.zip"
  name "TAL-G-Verb"
  desc "High quality artificial reverb"
  homepage "https://tal-software.com/products/tal-g-verb"

  pkg "TAL-G-Verb-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-G-Verb-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-G-Verb.xml"
end
