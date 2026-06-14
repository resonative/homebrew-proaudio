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

  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "8281af210479923e8996352dccc6848c6479e32750439b783fca154bb417463b",
         intel: "c4435221f3d717f8dfaaacb55937a2313c92f76d03bff6bc52e2873324872909"

  url "#{Utils.prv_archive_url}/e/ee-noisy/v#{version}/Noisy#{version}-Darwin-#{arch}.pkg",
      verified: Utils.prv_archive_url("verified").to_s
  name "ExpressiveE Noisy"
  desc "MPE modal synthesis synth"
  homepage "https://www.expressivee.com/88-noisy-two"

  auto_updates false

  pkg "Noisy#{version}-Darwin-#{arch}.pkg"

  uninstall pkgutil: "com.expressivee.Noisy2.*"
end
