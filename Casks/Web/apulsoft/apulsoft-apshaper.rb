cask "apulsoft-apshaper" do
  version "1.2.7"
  sha256 "9faa1cfa1531f2e564c73e30955e3847b6e4addda30f1fe7c1f561c8ec6787d2"

  url "https://apulsoft.ch/apshaper/apshaper-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apShaper"
  desc "Harmonic distortion"
  homepage "https://apulsoft.ch/apshaper/"

  auto_updates false

  pkg "apshaper-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apShaper-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apShaper/"
end
