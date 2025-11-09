cask "slate-digital-connect" do
  version "1.34.13"
  sha256 arm:   "157701561bce0d441821f487afe3c1a21528336681de00215460103623baace8",
         intel: "2e439787330e8b0cdc464d39f1b8c9067873c050eb32af8ba6b7a4700e56fc8d"

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
