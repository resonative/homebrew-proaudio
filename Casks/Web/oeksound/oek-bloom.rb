cask "oek-bloom" do
  version "1.1.1"
  sha256 "7e6133d6816f48f9451f75b7bc5246343ac5675c3885189998100c78dae0621c"

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
