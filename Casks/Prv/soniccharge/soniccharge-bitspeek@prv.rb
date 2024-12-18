cask "soniccharge-bitspeek@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"

      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2024.08.30"
  sha256 "849ae107b53e15a785a344c0648c5989ca6acc5e3945001139555321add6dcac"
  url "#{Utils.prv_archive_url}/s/soniccharge-installer/v#{version}/Sonic%20Charge%20Plugins%20#{version}.dmg",
      verified: Utils.prv_archive_url("verified").to_s  
  name "Sonic Charge Bitspeek"
  desc "Linear prediction codec effect"
  homepage "https://soniccharge.com/bitspeek"

  auto_updates false
  depends_on cask: "soniccharge-installer@prv"

  pkg "Sonic Charge Plugins.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.soniccharge.authenticator",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "com.soniccharge.bitspeek",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.soniccharge.echobode",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "com.soniccharge.microtonic",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "com.soniccharge.permut8",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "com.soniccharge.synplant",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.soniccharge.bitspeek"
end
