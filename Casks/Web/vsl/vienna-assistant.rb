cask "vienna-assistant" do
  version "1.1.433"
  sha256 :no_check

  url "https://www.vsl.co.at/service/vamac/",
      verified: "vsl.co.at/"
  name "Vienna Assistant"
  desc "VSL software and sample library manager"
  homepage "https://www.vsl.info/en/manuals/vienna-assistant/introduction"

  auto_updates true

  pkg "Vienna Assistant #{version}.pkg"

  uninstall launchctl: "at.co.vsl.viennaassistant.helpertool",
            quit:      "at.co.vsl.viennaassistant",
            pkgutil:   "at.co.vsl.viassistant.*",
            delete:    [
              "/Library/LaunchDaemons/at.co.vsl.viennaassistant.helpertool.plist",
              "/Library/PrivilegedHelperTools/at.co.vsl.viennaassistant.helpertool",
              "~/Library/Application Support/VSL/Vienna Assistant/downloadcache/",
              "~/Library/Application Support/VSL/Vienna Assistant/imagecache/",
              "~/Library/Saved Application State/at.co.vsl.viennaassistant.savedState",
            ]

  zap trash: [
    "~/Library/Preferences/at.co.vsl.Vienna Assistant.plist",
    "~/Library/Application support/VSL/Vienna Assistant/",
  ]
end
