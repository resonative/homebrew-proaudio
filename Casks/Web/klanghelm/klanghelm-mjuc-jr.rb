cask "klanghelm-mjuc-jr" do
  version "1.5.0"
  sha256 :no_check

  url "https://klanghelm.com/free/MJUCjrdl.php?id=3"
  name "Klanghem MJUC jr."
  desc "Variable-mu style compressor"
  homepage "https://klanghelm.com/contents/products/MJUCjr"

  auto_updates false
  container nested: "MJUCjr.dmg"

  pkg "MJUCjr-installer.pkg"

  uninstall pkgutil: "com.MJUCjr.pkg.*"
end
