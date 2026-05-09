cask "dsoniq-realphones" do
  version "2.2.5"
  sha256 "598b66b56b78457d97220adab278527d9da95b8ce1d61155256340e3ffef2dfd"

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
