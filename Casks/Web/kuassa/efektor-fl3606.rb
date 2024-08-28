cask "efektor-fl3606" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=832"
  name "Kuassa Efektor FL3606"
  desc "Flanger FX engine"
  homepage "https://www.kuassa.com/products/efektor-fl3606-flanger/"

  auto_updates false

  pkg "EfektorFL3606_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorFL3606*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorFL3606/",
    "~/Music/Kuassa/Settings/EfektorFL3606.setting",
  ]
end
