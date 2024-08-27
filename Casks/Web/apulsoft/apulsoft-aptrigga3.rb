cask "apulsoft-aptrigga3" do
  version "3.7.2"
  sha256 "574aeeadab5d3ed0e44778b5e41584f2b941d57acb2d1b7e20b8c7d154360520"

  url "https://apulsoft.ch/aptrigga3/aptrigga3-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apTrigga3"
  desc "Real-time transient detection sample replacement trigger"
  homepage "https://apulsoft.ch/aptrigga3/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "aptrigga3-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apTrigga3-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apTrigga3/"
end
