cask "auracle-x" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "067c79bbdf2395cba90b4f750cbd5104a05e06c9ec96dc8d2d50b8e772fb6c5e",
         intel: "8f07b9c608c6ab10b767d6ec0b96d2146c1c07a0f41e4a50e9ef22cd213b5c78"

  url "https://cdn.iconnectivity.com/software/AuracleX#{version}-#{arch}.dmg"
  name "iConnectivity Auracle X"
  desc "Manager for iConnectivity MIDI interfaces"
  homepage "https://www.iconnectivity.com/auracle-x-series"

  livecheck do
    url "https://cdn.iconnectivity.com/maccast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true

  app "Auracle X.app"

  uninstall quit:   "com.iconnectivity.auracle",
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
