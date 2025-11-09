cask "reaboot" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "daf55e04dc0f8133e86fe21b8c111552180cf006a5f79cfcd826a5a9eac19fe9",
         intel: "dcbcd0167757f6225f8feb1a50c8b931ea96f000f8a85f7e844483625f55fc0b"

  url "https://github.com/helgoboss/reaboot/releases/download/v#{version}/ReaBoot-macos-#{arch}.zip"
  name "ReaBoot Classics"
  desc "All-in-one installer for Reaper and ReaPack"
  homepage "https://reaboot.com"

  auto_updates false

  app "ReaBoot.app"

  uninstall quit:   "org.helgoboss.reaboot",
            trash:  "~/Library/Application Support/REAPER/ReaBoot/backups/"
end
