cask "liquidsonics-tai-chi" do
  version "1.6.0"
  sha256 "44a4ca5801523f11d7abded129cb5ddb8ae4c40812d8679505dd938ab0669651"

  url "https://us-east-1.linodeobjects.com/reverbfoundry/downloads/tai_chi/mac/Tai_Chi-v#{version}-macOS.pkg"
  name "LiquidSonics Tai Chi"
  desc "Chorus reverb"
  homepage "https://www.liquidsonics.com/software/tai-chi/"

  auto_updates false

  pkg "Tai_Chi-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.reverbfoundry.pkg.taichi.*"

  zap delete: "~/Library/Application Support/Reverb Foundry/Tai Chi/Settings.xml"
end
