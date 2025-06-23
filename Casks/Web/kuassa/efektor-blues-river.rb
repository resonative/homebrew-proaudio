cask "efektor-blues-river" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=1051"
  name "Kuassa Efektor Blues River"
  desc "Blue overdrive"
  homepage "https://www.kuassa.com/products/efektor-blues-river-blue-overdrive/"

  auto_updates false

  pkg "EfektorBluesRiver_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorBluesRiver*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorBluesRiver/",
    "~/Music/Kuassa/Settings/EfektorBluesRiver.setting",
  ]
end
