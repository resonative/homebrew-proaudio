cask "oek-bloom" do
  version "1.1.2"
  sha256 "08becf38591432e34c5e71927ef8f81be5d9699cfb95ac8550d50e5433b233fc"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/bloom_v#{version}_macos.pkg",
      verified: "oeksound.ams3cdn.digitaloceanspaces.com/"
  name "oeksound bloom"
  desc "Adaptive tone shaper"
  homepage "https://oeksound.com/plugins/bloom/"

  auto_updates false

  pkg "bloom_v#{version}_macos.pkg"

  uninstall pkgutil: "com.oeksound.bloom.*"

  zap trash: "~/Library/Application Support/oeksound/bloom/config.json"
end
