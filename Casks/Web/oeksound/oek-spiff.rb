cask "oek-spiff" do
  version "1.4.3"
  sha256 "74ec47c68570e525d6d072cd89a2df803939e6128738673c92de7223f141cc20"

  url "https://oeksound.ams3.digitaloceanspaces.com/spiff_v#{version.no_dots}_Mac.pkg",
      verified: "oeksound.ams3.digitaloceanspaces.com/"
  name "oeksound spiff"
  desc "Adaptive transient processor"
  homepage "https://oeksound.com/plugins/spiff/"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "spiff_v#{version.no_dots}_Mac.pkg"

  uninstall pkgutil: "com.oeksound.spiff.*"

  zap trash: "/Library/Application Support/oeksound/spiff/config.xml"
end
