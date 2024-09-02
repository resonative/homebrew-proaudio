cask "oek-bloom" do
  version "1.0.7"
  sha256 "59cc1f8808ae5c61b9fc13376492127fb06ca4110986907afc86aa6ff6fec3db"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/bloom_v#{version}_macos.pkg",
      verified: "oeksound.ams3cdn.digitaloceanspaces.com/"
  name "oeksound bloom"
  desc "Adaptive tone shaper"
  homepage "https://oeksound.com/plugins/bloom/"

  auto_updates false
  depends_on macos: ">= :mojave"

  pkg "bloom_v#{version}_macos.pkg"

  uninstall pkgutil: "com.oeksound.bloom.*"

  zap trash: "~/Library/Application Support/oeksound/bloom/config.json"
end
