cask "apulsoft-aptrigga" do
  version "3.7.4"
  sha256 "fa30746150a40e01850786934c814262cd3cbae9d04e7063e7043cab052042a2"

  url "https://apulsoft.ch/aptrigga3/aptrigga3-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apTrigga3"
  desc "Real-time transient detection sample replacement trigger"
  homepage "https://apulsoft.ch/aptrigga3/"

  auto_updates false

  pkg "aptrigga3-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apTrigga3-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apTrigga3/"
end
