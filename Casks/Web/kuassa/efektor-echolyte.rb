cask "efektor-echolyte" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=998"
  name "Kuassa Efektor Echolyte"
  desc "Bucket Brigade Echo/Delay (BBD)"
  homepage "https://www.kuassa.com/products/efektor-echolyte-delay/"

  auto_updates false

  pkg "EfektorEcholyte_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorEcholyte*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorEcholyte/",
    "~/Music/Kuassa/Settings/EfektorEcholyte.setting",
  ]
end
