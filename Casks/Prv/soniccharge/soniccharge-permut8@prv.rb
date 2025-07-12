cask "soniccharge-permut8@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2024.08.30"
  sha256 "849ae107b53e15a785a344c0648c5989ca6acc5e3945001139555321add6dcac"
  url "#{prv_archive_url}/s/soniccharge-installer/v#{version}/Sonic%20Charge%20Plugins%20#{version}.dmg",
      verified: prv_archive_url.to_s
  name "Sonic Charge Permut8"
  desc "12-bit digital delay with variable sample rate"
  homepage "https://soniccharge.com/permut8"

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
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.soniccharge.synplant",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.soniccharge.permut8"
end
