cask "forever89-topos" do
  version "1.0.2"
  sha256 "7a5c4401cdcdd83a9378657f49fed5aaf5b69a22e2fb2bf87c1e21a0ca31292a"
  
  url "https://forever89.studio/files/Topos_v#{version.dots_to_underscores}_Mac.zip"
  name "Forever89 Topos"
  desc "Saturation and amp simulation"
  homepage "https://forever89.studio/topos/"

  auto_updates false

  pkg "Topos_v#{version.dots_to_underscores}_Mac.pkg"

  uninstall pkgutil: "com.Forever89.pkg.Topos*"
end
