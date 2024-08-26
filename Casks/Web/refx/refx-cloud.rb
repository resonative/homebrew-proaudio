cask "refx-cloud" do
  version "3.0.12"
  sha256 "25d9c341b91a825872ef9ef83e0a3fee2ce83fb942663542036d480f9451db70"

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
