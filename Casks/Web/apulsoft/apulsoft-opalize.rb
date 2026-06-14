cask "apulsoft-opalize" do
  version "1.1.1"
  sha256 "36636c08706d47db3bca4c27c16c9c64a8dc2bc3a7bd0528127ad10c76011224"

  url "https://apulsoft.com/opalize/opalize-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft Opalize"
  desc "Level independent saturator"
  homepage "https://apulsoft.com/opalize/"

  auto_updates false

  pkg "opalize-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.Opalize-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.Opalize/"
end
