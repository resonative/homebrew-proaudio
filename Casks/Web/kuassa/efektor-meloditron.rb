cask "efektor-meloditron" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=961"
  name "Kuassa Efektor Meloditron"
  desc "Monophonic dual voiced intelligent harmony generator"
  homepage "https://www.kuassa.com/products/efektor-meloditron-smart-harmony/"

  auto_updates false

  pkg "EfektorMeloditron_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorMeloditron*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorMeloditron/",
    "~/Music/Kuassa/Settings/EfektorMeloditron.setting",
  ]
end
