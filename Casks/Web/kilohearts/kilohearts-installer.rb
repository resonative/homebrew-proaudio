cask "kilohearts-installer" do
  version :latest
  sha256 :no_check

  url "https://kilohearts.com/data/install/_/mac"
  name "Kilohearts Installer"
  desc "Plugin installer for Kilohearts products"
  homepage "https://kilohearts.com/download"

  artifact "Kilohearts Installer.app", target: "/Library/Application Support/Kilohearts/Kilohearts Installer.app"

  postflight do
    system_command "ln",
    args: [
      "-s",
      "/Library/Application Support/Kilohearts/Kilohearts Installer.app",
      "/Applications/Kilohearts Installer.app"
    ],
    sudo: false
  end

  uninstall quit:   "com.kiloHearts.Installer",
            delete: [
              "/Applications/Kilohearts Installer.app",
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
