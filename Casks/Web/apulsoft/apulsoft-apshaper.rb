cask "apulsoft-apshaper" do
  version "1.2.5"
  sha256 "e756b68a7d7820308da16695d28a489ae5b7aff1779e373d60e0961b02a3fbe9"

  url "https://apulsoft.ch/apshaper/apshaper-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apShaper"
  desc "Harmonic distortion"
  homepage "https://apulsoft.ch/apshaper/"

  auto_updates false

  pkg "apshaper-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apShaper-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apShaper/"
end
