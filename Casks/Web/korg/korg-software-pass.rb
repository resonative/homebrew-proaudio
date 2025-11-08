cask "korg-software-pass" do
  version "1.3.9"
  sha256 "66f7a4d4c440c5fea4a56bf99a31b2214ecf895740722901654217fc1210b553"

  url "https://storage.korg.com/korgms/korg_collection/mac/KORG_Software_Pass_#{version.dots_to_underscores}.dmg"
  name "KORG Software Pass"
  desc "KORG Audio Plugin Manager"
  homepage "https://id.korg.com/static_pages/3"

  auto_updates true

  pkg "KORG_Software_Pass Installer.pkg"

  uninstall quit:    "jp.co.korg.klchub",
            pkgutil: "jp.co.korg.pkg.korgsoftwarepass",
            delete:  "~/Library/Caches/jp.co.korg.klchub/"

  zap trash: "~/Library/Preferences/com.korg.activation.prefs"
end
