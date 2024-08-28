cask "efektor-bass-smasher" do
  version "1.0.1"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=936"
  name "Kuassa Efektor Bass Smasher"
  desc "Chunky, meaty, and heavy Bass Distortion"
  homepage "https://www.kuassa.com/products/efektor-bass-smasher-distortion/"

  auto_updates false

  pkg "EfektorBassSmasher_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorBassSmasher*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorBassSmasher/",
    "~/Music/Kuassa/Settings/EfektorBassSmasher.setting",
  ]
end
