cask "slate-digital-connect" do
  version "1.22.2"
  sha256 arm:   "753d6339039d6a42b173ea30cf859e9e97737adea1ac1694f136edf64e7a8fff",
         intel: "720cdcafa0c140308fb328983127428c0e9e301f613edbc4d104bd3f2c49525e"

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
