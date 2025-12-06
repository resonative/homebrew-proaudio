cask "klevgrand-helper@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.9b1286"
  sha256 "fb3b46f7780f98964ca8045b013fc6e9bcba6e3344de2c200d693421b887e256"

  url "#{prv_archive_url}/k/klevgrand-helper/v#{version}/Klevgrand_Helper_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "Klevgrand Helper"
  desc "Klevgrand plugins install manager"
  homepage "https://klevgrand.com/helper"

  auto_updates true

  app "Klevgrand Helper.app"

  uninstall launchctl: "com.Klevgrand.Helper.PrivTool",
            quit:      "com.Klevgrand.Helper",
            delete:    [
              "~/Library/Caches/com.Klevgrand.Helper/",
              "~/Library/HTTPStorages/com.Klevgrand.Helper/",
            ]
end
