cask "cytomic-the-glue" do
  version "1.8.1"
  sha256 "796e76b4881abaaebc4b29bcc6cbd8966d6b8511a462b618717946c560fdaf3c"

  url "https://cytomic.com/files/TheGlue_v#{version}_Mac.dmg"
  name "Cytomic The Glue"
  desc "Analog modelled compressor"
  homepage "https://cytomic.com/product/glue/"

  auto_updates false

  pkg "Install The Glue.pkg"

  uninstall pkgutil: "com.cytomic.pkg.TheGlue.*"
end
