cask "line6-helix-native@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "3.80"
  sha256 "13a6a0ac5ad6c9740d3568d6c790d6a589a984eec9e37ef143c00c32c91d1c25"

  url "#{prv_archive_url}/l/line6-helix-native/v#{version}/HelixNative#{version}.dmg",
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
