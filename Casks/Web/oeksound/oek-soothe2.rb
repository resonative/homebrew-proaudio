cask "oek-soothe2" do
  version "1.3.3"
  sha256 "ee27005e6a55ac300f9af51dd0897ed707636566f7f6b7bbe02a7c8a5e396aae"

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
