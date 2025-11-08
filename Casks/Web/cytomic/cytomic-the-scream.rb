cask "cytomic-the-scream" do
  version "1.2.14"
  sha256 "841a39f838136194c1f0ea84dc62ca25818f44e51cc15b3cac472d37b634b32a"

  url "https://cytomic.com/files/TheScream_v#{version}_Mac.dmg"
  name "Cytomic The Scream"
  desc "Analog modelled pedal"
  homepage "https://cytomic.com/product/scream/"

  auto_updates false

  pkg "Install The Scream.pkg"

  uninstall pkgutil: "com.cytomic.pkg.TheScream.*"
end
