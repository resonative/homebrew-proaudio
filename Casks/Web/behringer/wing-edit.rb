cask "wing-edit" do
  version "3.1"
  sha256 "d5cd28c8c20432dedc6e56351c5e8bf3e6ad01bfb21a19fede2038749292f2a9"

  url "https://mediadl.musictribe.com/download/software/behringer/WING/EDIT/Wing-Edit_MAC_#{version}.zip",
      verified: "mediadl.musictribe.com/"
  name "WING-Edit"
  desc "Behringer WING Console editor"
  homepage "https://www.behringer.com/product.html?modelCode=0603-AEN"

  app "WING-Edit.app"

  uninstall quit: "com.Musictribe.WINGEdit"

  zap delete: "~/Library/WingEdit/persistent_data_file.txt"
end
