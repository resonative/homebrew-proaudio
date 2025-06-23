cask "apulsoft-splits" do
  version "1.0.1"
  sha256 "27ca9bd99946de2ae2357b47e4f973fbd0c59e29f0009a6e801aec9cf7372617"

  url "https://www.apulsoft.ch/splits/splits-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft splitS"
  desc "Sibilances dyanmic splitter"
  homepage "https://www.apulsoft.ch/splits/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "splits-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.splitS-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.splitS/"
end
