cask "refx-cloud" do
  version "3.0.22"
  sha256 "45ad9eba83cd5c5bd79846e5468ee3718293710e3a46dfbc9d71373a5449bcdd"

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
