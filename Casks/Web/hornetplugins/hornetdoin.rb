cask "hornetdoin" do
  version :latest
  sha256 :no_check

  url "https://www.hornetplugins.com/HoRNetDoIn_mac_x64.zip"
  name "HoRNetDoIn"
  desc "Hornet plugins installer"
  homepage "https://www.hornetplugins.com/"

  app "release/HoRNetDoIn.app"

  uninstall quit:   "com.HoRNet.app.HoRNetDoIn",
            delete: [
              "~/Library/Caches/com.HoRNet.app.HoRNetDoIn/",
              "~/Library/WebKit/com.HoRNet.app.HoRNetDoIn/",
            ]

  zap delete: "~/Library/Application Support/HoRNetDoIn/"
end
