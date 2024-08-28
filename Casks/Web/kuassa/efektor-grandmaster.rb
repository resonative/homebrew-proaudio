cask "efektor-grandmaster" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=993"
  name "Kuassa Efektor Granmaster"
  desc "Triple Overdrive/Distortion"
  homepage "https://www.kuassa.com/products/efektor-grandmaster-distortion/"

  auto_updates false

  pkg "EfektorGrandmaster_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorGrandmaster*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorGrandmaster/",
    "~/Music/Kuassa/Settings/EfektorGransmaster.setting",
  ]
end
