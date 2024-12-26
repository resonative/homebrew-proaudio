cask "renoise-redux@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "1.3.5"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/r/renoise-redux/v#{version}/rns_rdx_#{version.no_dots}_osx.tar.gz"

  name "Renoise Redux"
  desc "Sampler and phrase sequencer from Renoise as plugin"
  homepage "https://www.renoise.com/products/redux"

  auto_updates false

  artifact "Renoise Redux.component", target: "/Library/Audio/Plug-Ins/Components/Renoise Redux.component"
  artifact "Renoise Redux.license", target: "~/Library/Preferences/Renoise Redux/V#{version}/Renoise Redux.license"
  artifact "Renoise Redux.vst", target: "/Library/Audio/Plug-Ins/VST/Renoise Redux.vst"

  uninstall trash:  [
              "~/Library/Logs/Renoise Redux.log",
              "~/Library/Preferences/Renoise Redux/",
            ]
end
