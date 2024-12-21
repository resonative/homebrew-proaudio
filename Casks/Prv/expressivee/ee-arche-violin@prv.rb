cask "ee-arche-violin@prv" do
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

  # 3 pkg (violin, viola, cello) in 1 zip
  version "1.1.8"
  sha256 arm:   "4d531e89274b615a6f988dfe8978572d3ad4b61f15aaec0c86a0319bb204c4ea",
         intel: "c5333a546b06ae47f8282f202fa2e54665b9ecc9643d2cab81ccb94b8c0ae802"

  url "#{Utils.prv_archive_url}/e/ee-arche/v#{version}/ArcheCollection_#{version}_#{arch.upcase}.zip",
      verified: Utils.prv_archive_url("verified").to_s
  name "ExpressiveE Arche Violin"
  desc "Phyiscal modelled violin, part of Arche Collection"
  homepage "https://www.expressivee.com/21-arche-collection"

  auto_updates false

  pkg "ArcheViolin_#{version}_#{arch.upcase}.pkg"

  uninstall pkgutil: "com.expressivee.ArcheViolin.*"
end
