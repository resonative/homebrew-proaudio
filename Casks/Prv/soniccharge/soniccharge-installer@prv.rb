cask "soniccharge-installer@prv" do
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
  name "Sonic Charge Installer (Authenticator Only)"
  desc "Sonic Charge plugin activation"
  homepage "https://soniccharge.com/download"

  pkg "Sonic Charge Plugins.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.soniccharge.bitspeek",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
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

  postflight do
    system_command "sleep",
                   args: ["2"],
                   sudo: false
    system_command "pkill",
                   args: ["-x", "Sonic Charge Authenticator"],
                   sudo: false
  end  

  uninstall pkgutil: "com.soniccharge.authenticator"

  zap delete: "~/Library/Application Support/Sonic Charge/" # deletes activation and preferences (hidden files)
end
