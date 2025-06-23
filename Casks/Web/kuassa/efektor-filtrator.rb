cask "efektor-filtrator" do
  version "1.0.1"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=1015"
  name "Kuassa Efektor Filtrator"
  desc "Modulated LFO Filter with Distortion"
  homepage "https://www.kuassa.com/products/efektor-filtrator-modulated-filter/"

  auto_updates false

  pkg "EfektorBluesRiver_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorFiltrator*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorFiltrator/",
    "~/Music/Kuassa/Settings/EfektorFiltrator.setting",
  ]
end
