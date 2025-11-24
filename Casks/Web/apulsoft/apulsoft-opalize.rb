cask "apulsoft-opalize" do
  version "1.0.0"
  sha256 "f34bc7cf6c3df3cc93804943359b9e25b57d0bfe841fdcbdfece599b6566207d"

  url "https://apulsoft.com/opalize/opalize-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft Opalize"
  desc "Level independent saturator"
  homepage "https://apulsoft.com/opalize/"

  auto_updates false

  pkg "opalize-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.Opalize-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.Opalize/"
end
