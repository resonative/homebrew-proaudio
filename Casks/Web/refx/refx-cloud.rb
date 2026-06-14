cask "refx-cloud" do
  version "3.1.2"
  sha256 "c32fe28a541acb715177525ffbe48e467cbe0cf5d7c0457f6a50fc96e633fd70"

  url "https://cloud.refx.com/update/reFX_Cloud_#{version}.pkg"
  name "reFX Cloud"
  desc "ReFX software manager"
  homepage "https://refx.com/"

  auto_updates true

  pkg "reFX_Cloud_#{version}.pkg"

  uninstall launchctl: "com.refx.cloudhelper",
            quit:      "com.refx.cloud",
            pkgutil:   "com.refx.pkg.reFXCloud",
            delete:    [
              "/Library/LaunchDaemons/com.refx.cloudhelper.plist",
              "/Library/PrivilegedHelperTools/com.refx.cloudhelper",
              "~/Library/Caches/com.juce.locks/reFX_Cloud/",
              "~/Library/Caches/reFX Cloud/",
            ]

  zap trash: "~/Library/Application Support/reFX/cloud/"
end
