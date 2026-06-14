cask "audioease-altiverb-xl@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "8.2.7"
  sha256 "cc83dcc935ebc7392a85965224f3d12d0041cd8029e852ce8d6bee9f2e3a3257"

  url "#{prv_archive_url}/a/audioease-altiverb-xl/v#{version}/Altiverb-XL-#{version}-Mac-Installer.zip",
      verified: prv_archive_url.to_s
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
