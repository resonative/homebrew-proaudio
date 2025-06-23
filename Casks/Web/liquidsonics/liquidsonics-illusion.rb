cask "liquidsonics-illusion" do
  version "1.4.4"
  sha256 "8c37700e4a522f4545377eedadcbb16db6964f5b4b87280d6c1fa07e39f18258"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/illusion/mac/Illusion-v#{version}-macOS.pkg"
  name "LiquidSonics Illusion"
  desc "Syethized Fusion-IR reverb"
  homepage "https://www.liquidsonics.com/software/illusion/"

  auto_updates false

  pkg "Illusion-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.Illusion.standard.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Illusion/Settings.xml"
end
