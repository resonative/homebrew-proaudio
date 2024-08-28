cask "efektor-bass-driver" do
  version "1.0.1"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=934"
  name "Kuassa Efektor Bass Driver"
  desc "Extended range tonal shaping Bass preamp"
  homepage "https://www.kuassa.com/products/efektor-bass-driver-preamp/"

  auto_updates false

  pkg "EfektorBassDriver_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorBassDriver*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorBassDriver/",
    "~/Music/Kuassa/Settings/EfektorBassDriver.setting",
  ]
end
