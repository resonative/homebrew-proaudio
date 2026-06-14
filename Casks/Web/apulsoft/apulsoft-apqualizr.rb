cask "apulsoft-apqualizr" do
  version "2.7.7"
  sha256 "0341c8ee1e13734ae933c4077f35398b2d57fd09a7566ec2d50bf39fb5f27a28"

  url "https://apulsoft.ch/apqualizr2/apqualizr2-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apQualizr2"
  desc "Modular equalizer"
  homepage "https://apulsoft.ch/apqualizr2/"

  auto_updates false

  pkg "apqualizr2-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apQualizr2-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apQualizr2/"
end
