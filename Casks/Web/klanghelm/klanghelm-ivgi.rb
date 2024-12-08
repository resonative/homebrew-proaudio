cask "klanghelm-ivgi" do
  version :latest
  sha256 :no_check

  url "https://klanghelm.com/free/IVGI2dl.php?id=3"
  name "Klanghem IVGI"
  desc "Saturator and distortion plugin"
  homepage "https://klanghelm.com/contents/products/IVGI"

  auto_updates false
  container nested: "IVGI2.dmg"

  pkg "IVGI2-installer.pkg"

  uninstall pkgutil: "com.IVGI2.pkg.*"
end
