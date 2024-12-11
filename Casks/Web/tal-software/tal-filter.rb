cask "tal-filter" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Filter-2-installer_macos.zip"
  name "TAL-Filter-2"
  desc "Multi-mode filter"
  homepage "https://tal-software.com/products/tal-filter"

  pkg "TAL-Filter-2-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-Filter-2-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-Filter-2.xml"
end
