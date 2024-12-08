cask "klanghelm-dc1a" do
  version :latest
  sha256 :no_check

  url "https://klanghelm.com/free/DC1A3dl.php?id=3"
  name "Klanghem DC1A"
  desc "Character compressor"
  homepage "https://klanghelm.com/contents/products/DC1A"

  auto_updates false
  container nested: "DC1A3.dmg"

  pkg "DC1A3-installer.pkg"

  uninstall pkgutil: "com.DC1A3.pkg.*"
end
