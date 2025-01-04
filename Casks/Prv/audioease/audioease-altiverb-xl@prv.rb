cask "audioease-altiverb-xl@prv" do
  def self.prv_archive_url(argument = nil)
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"

    return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

    data["server"]
  end

  version "8.1.0"
  sha256 "439c5906dd68fd0d4bb639b61c93e5933aef2026fa664b351b36ae309f0751b9"

  url "#{prv_archive_url}/a/audioease-altiverb-xl/v#{version}/Altiverb-XL-#{version}-Mac-Installer.zip",
      verified: prv_archive_url("verified").to_s
  name "Audioease Altiverb XL"
  desc "Convolution reverb"
  homepage "https://audioease.com/altiverb/"

  auto_updates false
  container nested: "Altiverb-XL-#{version}-Mac-Installer.dmg"

  installer script: {
    executable: "osascript",
    args:       [
      "#{staged_path}/Altiverb 8 Installer.app/Contents/Resources/launchInstall.scpt",
      "aax,vst,au,",
      "#{staged_path}/.IRS/",
      "/Users/Shared/Audio Ease/Altiverb/Impulse Responses/Audio Ease IRs/",
      "/Users/Shared/Altiverb/IRs",
      "yes",
    ],
    sudo:       true,
  }

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Altiverb 8.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/Altiverb 8.component",
    "/Library/Audio/Plug-Ins/VST3/Altiverb 8.vst3",
    "/Users/Shared/Audio Ease/Altiverb/Impulse Responses/Audio Ease IRs/",
    "/Users/Shared/Audio Ease/Altiverb/IRTool/",
  ]

  zap delete: "/Users/Shared/Audio Ease/Logs/"
end
