cask "reason@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "13.3.3" # Reason_1333_d36-Stable-561-Mac
  sha256 "a0bf69fd16b476df8fed5c38345c7cfbc71236d4d9ebb621e4f2204ff0dd7c5e"

  url "#{prv_archive_url}/r/reason/v#{version}/Reason%2013.pkg",
      verified: prv_archive_url.to_s
  name "Reason 13"
  desc "DAW with emphasis on instruments and effects rack"
  homepage "https://www.reasonstudios.com/reason"

  auto_updates true
  conflicts_with cask: "reason@12prv"

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
    "~/Library/Application Support/Propellerhead Software/Reason/Caches/",
    "~/Library/Application Support/Propellerhead Software/Reason/Plugin Screenshots/",
    "~/Library/Preferences/_Reasondata.prf",
    "~/Library/Preferences/Reason 13 Preferences",
    "~/Library/Preferences/Reason Plugin Dirs.prf",
    "~/Library/Preferences/Reason_13_v1.entitlement",
  ]

  caveats "Downloaded zip from reasonstudios.com cannot be extracted properly by brew.\n" \
          "Installer should be extracted manually with Archive Utility and store as 'Reason 13.pkg'."
end
