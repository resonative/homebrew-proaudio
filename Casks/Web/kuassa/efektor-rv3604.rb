cask "efektor-rv3604" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=842"
  name "Kuassa Efektor RV3604"
  desc "Reverb FX engine"
  homepage "https://www.kuassa.com/products/efektor-RV3604-reverb/"

  auto_updates false

  pkg "EfektorRV3604_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorRV3604*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorRV3604/",
    "~/Music/Kuassa/Settings/EfektorRV3604.setting",
  ]
end
