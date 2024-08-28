cask "efektor-vibracula" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=983"
  name "Kuassa Efektor Vibracula"
  desc "Pitch Vibrato Effect"
  homepage "https://www.kuassa.com/products/efektor-vibracula-vibrato/"

  auto_updates false

  pkg "EfektorVibracula_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorVibracula*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorVibracula/",
    "~/Music/Kuassa/Settings/EfektorVibracula.setting",
  ]
end
