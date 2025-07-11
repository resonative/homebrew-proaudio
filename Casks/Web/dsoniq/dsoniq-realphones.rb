cask "dsoniq-realphones" do
  version "2.2.1"
  sha256 "f814ecb9beea7a382c42a87974bb0d3b08cdb3d9336657f289e544642cc04a5b"

  url "https://download.dsoniq.com/Realphones/Realphones_installer_mac_#{version}.dmg"
  name "dSONIQ Realphones"
  desc "Acoustic simulation for headphones"
  homepage "https://www.dsoniq.com/"

  auto_updates false

  pkg "Install.pkg"

  uninstall launchctl: "com.dSONIQ.Realphones.XPCHelper",
            quit:      "com.dSONIQ.Realphones",
            pkgutil:   "com.dsoniq.pkg.Realphones*"

  zap delete: "~/Library/Application Support/dSONIQ/Realphones/"
end
