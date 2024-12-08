cask "klanghelm-tens-jr" do
  version :latest
  sha256 :no_check

  url "https://klanghelm.com/free/TENSjrdl.php?id=3"
  name "Klanghem TENS jr."
  desc "Spring reverb"
  homepage "https://klanghelm.com/contents/products/TENSjr"

  auto_updates false
  container nested: "TENSjr.dmg"

  pkg "TENSjr-installer.pkg"

  uninstall pkgutil: "com.TENSjr.pkg.*"
end
