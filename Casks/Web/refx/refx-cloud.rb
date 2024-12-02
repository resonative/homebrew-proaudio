cask "refx-cloud" do
  version "3.0.14"
  sha256 "859e1e486d95b92cd4af34970466939e0466cb6bb244d133afe1cfdeadb1eea7"

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
