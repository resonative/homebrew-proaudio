cask "slate-audio-center" do
  version :latest
  sha256 :no_check

  url "http://sac.slateaudio.com/mac",
      verified: "sac.slateaudio.com/"
  name "Slate Audio Center"
  desc "Steven Slate Audio software manager"
  homepage "https://stevenslateaudio.com/"

  app "Steven Slate Audio Center.app"

  uninstall launchctl: "com.yme.slateaudio-center-helper",
            quit:      "com.yme.slateaudio-center",
            delete:    [
              "/Library/LaunchDaemons/com.yme.slateaudio-center-helper.plist",
              "/Library/PrivilegedHelperTools/com.yme.slateaudio-center-helper",
              "~/Library/Saved Application State/com.yme.slateaudio-center.savedState/",
            ]

  zap trash: [
    "~/Library/Application Support/Steven Slate Audio Center/",
    "~/Library/Logs/Steven Slate Audio Center/",
    "~/Library/Preferences/com.yme.slateaudio-center.plist",
  ]
end
