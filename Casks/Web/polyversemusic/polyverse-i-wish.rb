cask "polyverse-i-wish" do
  version "1.2.12"
  sha256 "5dd1cc84bd43ec6e5ad4908c7a03ec1617ae744a5e8dd140deca6651a7d140a2"

  url "https://polyversemusic.com/downloads/releases/iwish/InfectedMushroom-IWish-V#{version}.dmg"
  name "Polyverse I Wish"
  desc "Real-time granular pitch shifter"
  homepage "https://polyversemusic.com/products/i-wish/"

  auto_updates false

  pkg "I Wish Setup.pkg"

  uninstall pkgutil: "com.polyversemusic.pkg.iwish*"

  zap delete: [
    "~/Library/Polyverse/IWish/IWish-Preferences.prf",
    "~/Library/Polyverse/I Wish/key.pvkey",
    # "~/Library/Polyverse/I Wish/Iwish-Presets.iwb",
  ]
end
