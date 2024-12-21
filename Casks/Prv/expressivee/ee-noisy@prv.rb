cask "ee-noisy@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  arch arm: "MacArm", intel: "MacIntel"

  version "2.0"
  sha256 arm:   "8ac2e0693baab4fd47dd11ce43310eb696430629fdad9b5df89c3e1dce3a364c",
         intel: "596879ca706de1191f7912d1c58827cf80fa5925f7093bb58ab4d7fb71b7426e"

  url "#{Utils.prv_archive_url}/e/ee-noisy/v#{version}/Noisy2-#{version}_#{arch.upcase}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "ExpressiveE Noisy"
  desc "MPE modal synthesis synth"
  homepage "https://www.expressivee.com/88-noisy-two"

  auto_updates false

  pkg "Noisy2-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.expressivee.Noisy2.*"
end
