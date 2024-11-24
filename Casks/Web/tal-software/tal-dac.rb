cask "tal-dac" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-Dub-X-installer_macos.zip"
  name "TAL-DAC"
  desc "Digital-to-analog converter emulation"
  homepage "https://tal-software.com/products/tal-dac"

  pkg "TAL-DAC-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-DAC-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-DAC.xml"
end
