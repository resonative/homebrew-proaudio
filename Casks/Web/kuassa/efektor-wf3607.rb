cask "efektor-wf3607" do
  version "1.2.1"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=886"
  name "Kuassa Efektor WF3607"
  desc "Wah Filter FX Engine"
  homepage "https://www.kuassa.com/products/efektor-wf3607-wah-filter/"

  auto_updates false

  pkg "EfektorWF3607_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorWF3607*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorWF3607/",
    "~/Music/Kuassa/Settings/EfektorWF3607.setting",
  ]
end
