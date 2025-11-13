cask "reason@12prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "12.7.4" # Reason_1274_d3-Stable-820-Mac
  sha256 "621bf50c6d1675b97cfac7374150ac5dfc712b08be6e9997de907339075e39ac"

  url "#{prv_archive_url}/r/reason/v#{version}/Reason%2012.pkg",
      verified: prv_archive_url.to_s
  name "Reason 12"
  desc "DAW with emphasis on instruments and effects rack"
  homepage "https://www.reasonstudios.com/reason"

  auto_updates false
  conflicts_with cask: "reason@prv"

  pkg "Reason 12.pkg"

  uninstall quit:    [
              "com.reasonstudios.nautilus",
              "com.reasonstudios.nautilus.helper",
              "se.propellerheads.reason",
            ],
            pkgutil: [
              "com.reasonstudios.reason-resources",
              "se.propellerheads.ID8",
              "se.propellerheads.Orkester",
              "se.propellerheads.Reason-12-FactorySoundBank",
              "se.propellerheads.Reason-12-ReasonPatchCollection",
              "se.propellerheads.reason",
              "se.propellerheads.reasonrackplugin",
              "se.propellerheads.reasonrackplugin-aax",
              "se.propellerheads.reasonrackplugin-au",
            ]

  # zap delete: [
  #   "~/Library/Preferences/_Reasondata.prf",
  #   "~/Library/Preferences/Reason 13 Preferences",
  #   "~/Library/Preferences/Reason Plugin Dirs.prf",
  #   "~/Library/Preferences/Reason_13_v1.entitlement",
  #   "~/Library/Propellerhead Software/Reason/Caches/",
  #   "~/Library/Propellerhead Software/Reason/Plugin Screenshots/",
  # ]

  caveats "Downloaded zip from reasonstudios.com cannot be extracted properly by brew.\n" \
          "Installer should be extracted manually with Archive Utility and store as 'Reason 13.pkg'."
end
