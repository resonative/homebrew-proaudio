cask "oek-spiff" do
  version "1.4.4"
  sha256 "5f3149bbe3157969596537538bf3e1b4d4389250449782e700b1a613a10a04c8"

  url "https://oeksound.ams3.digitaloceanspaces.com/spiff_v#{version.no_dots}_Mac.pkg",
      verified: "oeksound.ams3.digitaloceanspaces.com/"
  name "oeksound spiff"
  desc "Adaptive transient processor"
  homepage "https://oeksound.com/plugins/spiff/"

  auto_updates false

  pkg "spiff_v#{version.no_dots}_Mac.pkg"

  uninstall pkgutil: "com.oeksound.spiff.*"

  zap trash: "/Library/Application Support/oeksound/spiff/config.xml"
end
