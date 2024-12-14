cask "kilohearts-installer" do
  version :latest
  sha256 :no_check

  url "https://kilohearts.com/data/install/_/mac"
  name "Kilohearts Installer"
  desc "Plugin installer for Kilohearts products"
  homepage "https://kilohearts.com/download"

  auto_updates true

  installer manual: "Kilohearts Installer.app"

  uninstall quit:   "com.kiloHearts.Installer",
            delete: [
              "/Library/Application Support/Kilohearts/index.json",
              "/Library/Application Support/Kilohearts/installer.update",
              "/Library/Application Support/Kilohearts/installer.update.meta",
              "/Library/Application Support/Kilohearts/Kilohearts Installer.app",
            ]

  zap delete: [
    "/Library/Application Support/Kilohearts/affiliate",
    "/Library/Application Support/Kilohearts/cache/",
    "/Library/Application Support/Kilohearts/kiloHearts.conf",
    "/Library/Application Support/Kilohearts/kilohearts.log",
    "/Library/Application Support/Kilohearts/session",
  ]
end
