cask "ee-imagine@prv" do
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

  version "1.0.7"
  sha256 arm:   "3052d9ad2284a54830dbcb123751c9ea7aa62e28e69ba88523b4fb16b964209d",
         intel: "702a453f7d50ba69ba027165d86263cfa78f2271950ef0e631f81590ea316b40"

  url "#{Utils.prv_archive_url}/e/ee-noisy/v#{version}/Imagine-#{version}_#{arch.upcase}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "ExpressiveE Imagine"
  desc "Physical modeling synthesizer"
  homepage "https://www.expressivee.com/63-imagine"

  auto_updates false

  pkg "Imagine-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.expressivee.com.Imagine.*"
end
