cask "tal-noisemaker" do
  version :latest
  sha256 :no_check

  url "https://tal-software.com//downloads/plugins/TAL-NoiseMaker-installer_macos.zip"
  name "TAL-NoiseMaker"
  desc "Vitrual analog synth"
  homepage "https://tal-software.com/products/tal-noisemaker"

  pkg "TAL-NoiseMaker-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-NoiseMaker-*"

  zap trash: "~/Library/Application Support/ToguAudioLine/TAL-NoiseMaker.xml"
end
