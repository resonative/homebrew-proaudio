cask "efektor-bass-cruncher" do
  version "1.0.1"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=932"
  name "Kuassa Efektor Bass Cruncher"
  desc "Tube driven crunchy Bass booster"
  homepage "https://www.kuassa.com/products/efektor-bass-cruncher-preamp/"

  auto_updates false

  pkg "EfektorBassCruncher_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorBassCruncher*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorBassCruncher/",
    "~/Music/Kuassa/Settings/EfektorBassCruncher.setting",
  ]
end
