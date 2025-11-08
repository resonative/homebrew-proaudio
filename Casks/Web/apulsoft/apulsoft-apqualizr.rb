cask "apulsoft-apqualizr" do
  version "2.7.6"
  sha256 "1cb638c209032601a350a134f4edf81d420c1442e3ea191acfad21c5a2053eec"

  url "https://apulsoft.ch/apqualizr2/apqualizr2-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apQualizr2"
  desc "Modular equalizer"
  homepage "https://apulsoft.ch/apqualizr2/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "apqualizr2-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apQualizr2-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apQualizr2/"
end
