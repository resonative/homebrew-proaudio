cask "oek-bloom" do
  version "1.0.8"
  sha256 "60cdddd6588c42b1d613e614c20c49569fa435466a0fb6c5463d189af012fdfb"

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
