cask "apulsoft-apshaper" do
  version "1.2.4"
  sha256 "608d2acb12565a5483dd59735eeeaa7753e4e4af5e7103688917e1fcb526f5ad"

  url "https://apulsoft.ch/apshaper/apshaper-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apShaper"
  desc "Harmonic distortion"
  homepage "https://apulsoft.ch/apshaper/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "apshaper-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apShaper-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apShaper/"
end
