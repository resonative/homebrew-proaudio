cask "oek-soothe2" do
  version "1.3.1"
  sha256 "ec400a6491523e7f782cd574f62918ce42c543c4c0c0da8248c202bc9be03c41"

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
