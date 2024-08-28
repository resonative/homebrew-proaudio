cask "ik-product-manager" do
  version "1.1.4"
  sha256 :no_check

  url "https://g1.ikmultimedia.com/plugins/ProductManager/ik_product_manager_#{version}.dmg"
  name "IK Product Manager"
  desc "IK Multimedia product manager"
  homepage "https://www.ikmultimedia.com/products/productmanager"

  pkg "Install IK Product Manager (v#{version}).pkg"

  uninstall quit:    "com.ikmultimedia.productmanager",
            pkgutil: "com.ikmultimedia.productmanager",
            delete:  "/Library/Documentation/IK Multimedia/IK Product Manager/"

  zap trash: "~/Library/Application Support/IK Product Manager/"
end
