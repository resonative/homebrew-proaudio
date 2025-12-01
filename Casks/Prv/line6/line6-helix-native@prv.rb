cask "line6-helix-native@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.82"
  sha256 "e13cce0bb202a1105217911e65f652e3e958a37c1b9585010247fa8091eea6bd"

  url "#{prv_archive_url}/l/line6-helix-native/v#{version}/Helix%20Native%20#{version}.dmg",
      verified: prv_archive_url.to_s
  name "Line6 Helix Native"
  desc "Guitar amp and fx emulation"
  homepage "https://line6.com/helix/helixnative.html"

  auto_updates false

  pkg "Helix Native.pkg"

  uninstall pkgutil: [
    "com.line6.component.helixaax.package",
    "com.line6.component.helixau.package",
    "com.line6.component.helixvst2.package",
    "com.line6.component.helixvst3.package",
    "com.line6.framework.helixcore.package",
    "com.line6.helixnativecommon.package",
  ]

  zap delete: "~/Library/Application Support/Line6/Helix Native/Helix Native.prefs"
end
