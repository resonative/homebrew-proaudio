cask "efektor-gainia-hb" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=946"
  name "Kuassa Efektor Gainia HB"
  desc "Dual channel hot preamp box"
  homepage "https://www.kuassa.com/products/efektor-gainia-hb-preamp/"

  auto_updates false

  pkg "EfektorGainiaHB_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorGainiaHB*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorGainiaHB/",
    "~/Music/Kuassa/Settings/EfektorGainiaHB.setting",
  ]
end
