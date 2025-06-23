cask "wing-edit" do
  version "3.2.1"
  sha256 "5b35347069922978fabfc031c460b75b76e42162ed641374747c82a5ed1e42cb"

  url "https://cdn.mediavalet.com/aunsw/musictribe/Xtl-GLnnFkyCcDbxW8v-Dg/-9lyJOI140W7m8heLGDvbA/Original/Wing-Edit_MAC_#{version}.zip",
      verified: "mediadl.musictribe.com/"
  name "WING-Edit"
  desc "Behringer WING Console editor"
  homepage "https://www.behringer.com/product.html?modelCode=0603-AEN"

  app "WING-Edit.app"

  uninstall quit: "com.Musictribe.WINGEdit"

  zap delete: "~/Library/WingEdit/persistent_data_file.txt"
end
