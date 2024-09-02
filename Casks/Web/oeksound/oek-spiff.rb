cask "oek-spiff" do
  version "1.4.1"
  sha256 "7227f749e92f73f4e448b36f2223488db82691cd2451d775b27d1d446f2cfaed"

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
