cask "xln-online-installer" do
  version :latest
  sha256 :no_check

  # need function to rewrite this url redirect, by default it redirects to url with space and curl will return bad uri error
  url "https://xlnaudio.s3.amazonaws.com/products/XLN%20Online%20Installer/4_0_6%20Release6/downloadables/XLN%20Online%20Installer.dmg",
      verified: "xlnaudio.s3.amazonaws.com/"
  name "XLN Online Installer"
  desc "XLN Audio plugins manager"
  homepage "https://www.xlnaudio.com/install"

  installer manual: "XLN Online Installer.app"

  uninstall launchctl: "com.xlnaudio.onlineinstallerhelpertool",
            quit:      "com.xlnaudio.xlnonlineinstaller",
            delete:    [
              "/Library/LaunchDaemon/com.xlnaudio.onlineinstallerhelpertool.plist",
              "/Library/PrivilegedHelperTools/com.xlnaudio.onlineinstallerhelpertool",
            ]

  zap trash: [
    "/Library/Preferences/com.xlnaudio.xlnonlineinstaller.plist",
    "~/Library/ApplicationSupport/XLN Online Installer/",
  ]
end
