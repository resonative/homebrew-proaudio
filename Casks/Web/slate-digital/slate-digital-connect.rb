cask "slate-digital-connect" do
  version "1.30.0"
  sha256 arm:   "be589f47c3bddaf83e0c6ec906095ea85f695bbf310e662c40b916a15dd55a7b",
         intel: "dac1ce0d6851d9e1e8381f4ccad2adb1debfee92c1724d82eac5c65a5b8bb001"

  on_arm do
    url "https://cdn1.slatedigital.com/sd-connect-releases/latest/Slate%20Digital%20Connect-#{version}-arm64.dmg"
  end
  on_intel do
    url "https://cdn1.slatedigital.com/sd-connect-releases/latest/Slate%20Digital%20Connect-#{version}.dmg"
  end

  name "Slate Digital Connect"
  desc "Plugin manager for Slate Digital products"
  homepage "https://slatedigital.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Slate Digital Connect.app"

  uninstall launchctl: [
              "com.slatedigital.analytics",
              "com.slatedigital.connect.privileged.helper.tool",
            ],
            quit:      "com.slatedigital.connect",
            delete:    [
              "/Library/LaunchDaemons/com.slatedigital.connect.privileged.helper.tool.plist",
              "/Library/PrivilegedHelperTools/com.slatedigital.connect.privileged.helper.tool",
              "~/Library/Application Support/Slate Digital Connect/SDACollector/",
              "~/Library/LaunchAgents/com.slatedigital.analytics.plist",
              "~/Library/Saved Application State/com.slatedigital.connect.savedState/",
            ]

  zap trash: [
    "~/Library/Application Support/Slate Digital Connect/",
    "~/Library/Logs/Slate Digital Connect/",
  ]
end
