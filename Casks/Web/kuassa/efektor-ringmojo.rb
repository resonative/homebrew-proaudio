cask "efektor-ringmojo" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=977"
  name "Kuassa Efektor ringmojo"
  desc "Ring Modulator"
  homepage "https://www.kuassa.com/products/efektor-ringmojo-ring-modulator/"

  auto_updates false

  pkg "EfektorRingmojo_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorRingmojo*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorRingmojo/",
    "~/Music/Kuassa/Settings/EfektorRingmojo.setting",
  ]
end
