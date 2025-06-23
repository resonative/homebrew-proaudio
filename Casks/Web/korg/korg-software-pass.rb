cask "korg-software-pass" do
  version "1.3.2"
  sha256 "a0dcdf439aad889f68e0effcd17eed69b7e1f5478994bc3533a3989619889029"

  url "https://storage.korg.com/korgms/korg_collection/mac/KORG_Software_Pass_#{version.dots_to_underscores}.dmg"
  name "KORG Software Pass"
  desc "KORG Audio Plugin Manager"
  homepage "https://id.korg.com/static_pages/3"

  livecheck do
    cask "korg-software-pass"
  end

  auto_updates true

  pkg "KORG_Software_Pass Installer.pkg"

  uninstall quit:    "jp.co.korg.klchub",
            pkgutil: "jp.co.korg.pkg.korgsoftwarepass",
            delete:  "~/Library/Caches/jp.co.korg.klchub/"

  zap trash: "~/Library/Preferences/com.korg.activation.prefs"
end
