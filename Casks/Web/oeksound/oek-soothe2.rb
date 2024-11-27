cask "oek-soothe2" do
  version "1.3.2"
  sha256 "6d00277b7f2f4bc1655aa807db9f16ae7d883fcc2e4826c1ecd131d65878143d"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/soothe2_v#{version.no_dots}_Mac.pkg",
      verified: "oeksound.ams3.cdn.digitaloceanspaces.com/"
  name "oeksound soothe2"
  desc "Dynamic resonance supressor"
  homepage "https://oeksound.com/plugins/soothe2/"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "soothe2_v#{version.no_dots}_Mac.pkg"

  uninstall pkgutil: "com.oeksound.soothe2.*"

  zap trash: "/Library/Application Support/oeksound/soothe2/config.xml"
end
