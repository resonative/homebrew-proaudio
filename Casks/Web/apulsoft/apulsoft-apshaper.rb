cask "apulsoft-apshaper" do
  version "1.2.3"
  sha256 "553f5b1587173387fc25a2fa2e6993ef493c4430b7a51882e2823a0909cf1c6a"

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
