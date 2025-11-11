cask "valhalla-supermassive" do
  version "4.0.0v4"
  sha256 "6f64b1401cc788877bc19ad07b1d52039196b268702fdd1f458388b2f9954377"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com/"
  name "Valhalla Supermassive"
  desc "Massive delays and reverbs audio plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  auto_updates false

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"
end
