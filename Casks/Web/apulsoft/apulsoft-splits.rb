cask "apulsoft-splits" do
  version "1.0.0"
  sha256 "eaaea8efc28e3db352aa37cee9b6fd8ec5a12289cf083e932c24bb7660e3c9b3"

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
