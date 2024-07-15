cask "valhalla-supermassive" do
  version "3.0.0v3"
  sha256 "a416c6bfb2e2383de30832c84a960bbbc6032c9cc8d747cd27086c658ddea6ce"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/supermassive/ValhallaSupermassiveOSX_#{version.dots_to_underscores}.dmg",
      verified: "valhallaproduction.s3.us-west-2.amazonaws.com/"
  name "Valhalla Supermassive"
  desc "Massive delays and reverbs audio plugin"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-supermassive/"

  livecheck do
    cask "valhalla-supermassive"
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"
end
