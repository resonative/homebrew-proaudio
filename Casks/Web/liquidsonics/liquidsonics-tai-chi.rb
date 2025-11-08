cask "liquidsonics-tai-chi" do
  version "1.6.2"
  sha256 "bf8157b49baa7fa33dc206f84652d59668af160926523aee5bad0764df439b70"

  url "https://downloads.liquidsonics.com/software/tai-chi/mac/Tai_Chi-v#{version}-macOS.pkg"
  name "LiquidSonics Tai Chi"
  desc "Chorus reverb"
  homepage "https://www.liquidsonics.com/software/tai-chi/"

  auto_updates false

  pkg "Tai_Chi-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.taichi.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/Tai Chi/Settings.xml"
end
