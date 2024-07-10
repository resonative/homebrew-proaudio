cask "iconnectivity-auracle-x" do
  version "2.2.0"
  sha256 "59da20f711b7f240d6e82ce487bee80222f97e310302f7bf5209e409ac742f57"

  url "https://cdn.iconnectivity.com/software/AuracleX2.2.0.dmg"
  name "Auracle X"
  desc "iConnectivity MIDI Interface configuration program"
  homepage "https://www.iconnectivity.com/auracle-x-series"

  livecheck do
    cask "iconnectivity-auracle-x"
  end

  auto_updates true

  app "Auracle X.app"

  uninstall quit: "com.iconnectivity.auracle"

  zap trash: [
    "~/Library/Application Support/Auracle X",
    "~/Library/Caches/com.iconnectivty.auracle",
    "~/Library/HTTPStorages/com.iconnectivity.auracle",
    "~/Library/Logs/Auracle X_debug.log",
    "~/Library/Preferences/com.iconnectivity.auracle.plist",
  ]
end
