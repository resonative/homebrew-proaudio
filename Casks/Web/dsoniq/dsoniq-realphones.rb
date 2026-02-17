cask "dsoniq-realphones" do
  version "2.2.4"
  sha256 "e288ff432821b76d925f5cb9f62d27e20836bc30982bb17c8172cc9c9c1d187a"

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
