cask "reason@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "13.3" # Reason_1330_d59-Stable-428-Mac
  sha256 "9db6e668ff81fc58ac4c6e443412cd8794a6a31e210728aa195cf3960c030c26"

  url "#{prv_archive_url}/r/reason/v#{version}/Reason%2013.pkg",
      verified: prv_archive_url.to_s
  name "Reason 13"
  desc "DAW with emphasis on instruments and effects rack"
  homepage "https://www.reasonstudios.com/reason"

  auto_updates true

  pkg "Reason 13.pkg"

  uninstall quit:    [
              "com.reasonstudios.nautilus",
              "com.reasonstudios.nautilus.helper",
              "se.propellerheads.reason",
            ],
            pkgutil: [
              "com.reasonstudios.reason13-resources",
              "se.propellerheads.ID8",
              "se.propellerheads.Orkester",
              "se.propellerheads.reason",
              "se.propellerheads.Reason-13-FactorySoundBank",
              "se.propellerheads.reasonrackplugin",
              "se.propellerheads.reasonrackplugin-aax",
              "se.propellerheads.reasonrackplugin-au",
            ]

  zap delete: [
    "~/Library/Preferences/_Reasondata.prf",
    "~/Library/Preferences/Reason 13 Preferences",
    "~/Library/Preferences/Reason Plugin Dirs.prf",
    "~/Library/Preferences/Reason_13_v1.entitlement",
    "~/Library/Propellerhead Software/Reason/Caches/",
    "~/Library/Propellerhead Software/Reason/Plugin Screenshots/",
  ]

  caveats "Downloaded zip from reasonstudios.com cannot be extracted properly by brew.\n" \
          "Reason 13.pkg should be extracted manually with Archive Utility and keep in archive."
end
