cask "apulsoft-apqualizr2" do
  version "2.7.2"
  sha256 "786a4375c0ce59881f31ceacee8b1853e49a3df7f4517c4a1e2307c0518c3c16"

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
