cask "revoice-pro" do
  version :latest
  sha256 :no_check

  url "https://app.synchroarts.com/downloads/RevoicePro/Ultra/macOS/RevoicePro.pkg"
  name "Synchron Arts Revoice Pro"
  desc "Voice doubling and pitch correction"
  homepage "https://www.synchroarts.com/revoice-pro-5"

  pkg "RevoicePro.pkg"

  uninstall quit:    "com.synchroarts.Revoice-Pro",
            pkgutil: "com.synchroarts.RevoicePro*",
            delete: [
              "~/Library/Caches/com.synchroarts.Revoice-Pro/",
              "~/Library/HTTPStorages/com.synchroarts.Revoice-Pro/",
            ]

  zap delete: [
    "~/Library/Application Support/SynchroArts/RevoicePro/",
    "~/Preferences/com.synchroarts.Revoice-Pro.plist",
    "~/Preferences/com.synchroarts.RevoiceProLinkVST3",
  ]
end
