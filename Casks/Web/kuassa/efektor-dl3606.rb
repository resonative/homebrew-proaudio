cask "efektor-dl3606" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=828"
  name "Kuassa Efektor DL3606"
  desc "Dely FX engine"
  homepage "https://www.kuassa.com/products/efektor-dl3606-delay/"

  auto_updates false

  pkg "EfektorDL3606_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorDL3606*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorDL3606/",
    "~/Music/Kuassa/Settings/EfektorDL3606.setting",
  ]
end
