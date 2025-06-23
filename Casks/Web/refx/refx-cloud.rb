cask "refx-cloud" do
  version "3.0.19"
  sha256 "4d2573c5c475dd9e2a24891d10cc43ca9c9a830ae7cb8b4c54e36b0abf46c165"

  url "https://cloud.refx.com/update/reFX_Cloud_#{version}.pkg"
  name "reFX Cloud"
  desc "ReFX software manager"
  homepage "https://refx.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
