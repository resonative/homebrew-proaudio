cask "ua-connect" do
  version :latest
  sha256  :no_check

  url "https://www.uaudio.com/apps/uaconnect/mac/installer"
  name "UA Connect (Universal Audio)"
  desc "Universal Audio plugin installer"
  homepage "https://www.uaudio.com/downloads/ua-connect"

  depends_on macos: ">= :catalina"

  app "UA Connect.app"

  uninstall launchctl: "com.uaudio.bsd.helper",
            quit:      "com.uaudio.ua-connect",
            delete:    [
              "/Library/Application Support/Universal Audio/Temp/ua_cloud_helper",
              "/Library/LaunchDaemons/com.uaudio.bsd.helper.plist",
              "/Library/PrivilegedHelperTools/com.uaudio.bsd.helper",
              "~/Library/Application Support/Universal Audio/UA Connect",
            ]

  zap trash: [
    "~/Library/Application Support/Universal Audio/workspace/",
    "~/Library/Logs/UA Connect/",
    "~/Library/Logs/Universal Audio/UA Connect.log",
    "~/Library/Preferences/com.uaudio.ua-connect.plist",
  ]
end
