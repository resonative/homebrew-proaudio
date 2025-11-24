cask "apulsoft-splits" do
  version "1.1.2"
  sha256 "6327e14716d6447e0ce25140be4abde4e959283392c4a7a0f9ac8fc7df44349f"

  url "https://www.apulsoft.ch/splits/splits-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft splitS"
  desc "Sibilances dyanmic splitter"
  homepage "https://www.apulsoft.ch/splits/"

  auto_updates false

  pkg "splits-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.splitS-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.splitS/"
end
