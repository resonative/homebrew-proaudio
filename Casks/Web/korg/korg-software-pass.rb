cask "korg-software-pass" do
  version "1.3.16"
  sha256 "01edca868238793752b0794528826663c7cee7c898fc544d1c4adb87c5953cef"

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
