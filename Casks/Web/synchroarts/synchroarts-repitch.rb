cask "synchroarts-repitch" do
  version :latest
  sha256 :no_check

  url "https://app.synchroarts.com/downloads/RePitch/Standard/macOS/RePitch.pkg"
  name "Synchro Arts RePitch Standard"
  desc "Pitch correction plugin"
  homepage "https://www.synchroarts.com/repitch"

  pkg "RePitch.pkg"

  uninstall pkgutil: "com.synchroarts.RePitch*"

  zap delete: [
    "~/Library/Preferences/com.synchroarts.RePitchAAX.plist",
    "~/Library/Preferences/com.synchroarts.RePitchAU.plist",
    "~/Library/Preferences/com.synchroarts.RePitchVST3.plist",
  ]
end
