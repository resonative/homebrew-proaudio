cask "jump-desktop" do
  version :latest
  sha256 :no_check

  url "https://jumpdesktop.com/downloads/jdmac"
  name "Jump Dekstop"
  desc "Remote Desktop Client"
  homepage "https://jumpdesktop.com/"

  auto_updates true

  app "Jump Desktop.app"

  uninstall quit: "com.p5sys.Jump-Desktop"

  zap trash: [
    "~/Library/Application Support/Jump Desktop/",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web/",
    "~/Library/HTTPStorages/com.p5sys.jump.mac.viewer.web/",
    "~/Library/HTTPStorages/com.p5sys.jump.mac.viewer.web.binarycookies",
    "~/Library/Logs/Jump Desktop/Viewer_*",
    "~/Library/Preferences/com.p5sys.jump.mac.viewer.web.plist",
  ]
end
