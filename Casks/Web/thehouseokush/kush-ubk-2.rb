cask "kush-ubk-2" do
  version "1.0.3"
  sha256 :no_check

  url "https://thedataofkush.com/installers/UBK-2_Mac.zip",
      verified: "thedataofkush.com/"
  name "Kush Audio UBK-2"
  desc "Character compressor"
  homepage "https://thehouseofkush.com/products/ubk-2"

  pkg "UBK-2_v#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.kush.pkg.UBK2*"

  zap delete: "~/Library/Preferences/Kush Audio/UBK-2/"
end
