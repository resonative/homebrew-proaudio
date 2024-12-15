cask "liquidsonics-tai-chi" do
  version "1.5.2"
  sha256 "a0ac0fe45db2c898175b8991cc8bd6f41b55d86057fe1fea5ceb34d38f6ff586"

  url "https://us-east-1.linodeobjects.com/reverbfoundry/downloads/tai_chi/mac/Tai_Chi-v#{version}-macOS.pkg"
  name "LiquidSonics Tai Chi"
  desc "Chorus reverb"
  homepage "https://www.liquidsonics.com/software/tai-chi/"

  auto_updates false

  pkg "Tai_Chi-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.taichi.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/Tai Chi/Settings.xml"
end
