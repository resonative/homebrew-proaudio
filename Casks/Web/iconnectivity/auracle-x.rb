cask "auracle-x" do
  version "2.2.0"
  sha256 "59da20f711b7f240d6e82ce487bee80222f97e310302f7bf5209e409ac742f57"

  url "https://cdn.iconnectivity.com/software/AuracleX#{version}.dmg"
  name "iConnectivity Auracle X"
  desc "Manager for iConnectivity MIDI interfaces"
  homepage "https://www.iconnectivity.com/auracle-x-series"

  livecheck do
    url "https://cdn.iconnectivity.com/maccast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Auracle X.app"

  uninstall quit: "com.iconnectivity.auracle",
            delete: [
              "~/Library/Caches/com.iconnectivty.auracle",
              "~/Library/HTTPStorages/com.iconnectivity.auracle",
            ]

  zap trash: [
    "~/Library/Application Support/Auracle X",
    "~/Library/Logs/Auracle X_debug.log",
    "~/Library/Preferences/com.iconnectivity.auracle.plist",
  ]
end
