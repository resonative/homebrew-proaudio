cask "wing-edit" do
  version "3.3.2"
  sha256 "e61e3600f631fb553b5e64f0e2ed5e2f933cd993673c7b04d1d82ce795db839c"
       
  url "https://cdn-media.empowertribe.com/e86a765cc0b0523165cc0663743752e0/WING-Edit-#{version}_Mac.zip",
      verified: "mediadl.musictribe.com/"
  name "WING-Edit"
  desc "Behringer WING Console editor"
  homepage "https://www.behringer.com/product.html?modelCode=0603-AEN"

  app "WING-Edit.app"

  uninstall quit: "com.Musictribe.WINGEdit"

  zap delete: "~/Library/WingEdit/persistent_data_file.txt"
end
