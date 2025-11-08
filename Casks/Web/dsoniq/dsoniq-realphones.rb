cask "dsoniq-realphones" do
  version "2.2.2"
  sha256 "dd742017b2a29750f9e642e58b24c528a37f6f35390d8375667443791775f415"

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
