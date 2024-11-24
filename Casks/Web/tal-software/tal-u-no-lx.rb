cask "tal-u-no-lx" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-U-NO-LX-V2-installer_macos.zip"
  name "TAL-U-NO-LX"
  desc "Juno 60 emulation synthesizer"
  homepage "https://tal-software.com/products/tal-u-no-lx"

  pkg "TAL-U-NO-LX-V2-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-U-NO-LX-V2-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-U-NO-LX-V2.xml"
end
