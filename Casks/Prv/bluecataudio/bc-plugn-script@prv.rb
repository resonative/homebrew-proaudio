cask "bc-plugn-script@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "3.4"
  sha256 "aac5978e5eef67477dd1ed87855cdcaac5af35f051a85d7ce2947328cd3973e2"

  url "#{Utils.prv_archive_url}/b/bc-plugn-script/v#{version}/BlueCatPlugNScript.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Blue Cat Audio Plug'n Script"
  desc "Audio and MIDI scripting plugin"
  homepage "https://www.bluecataudio.com/Products/Product_PlugNScript/"

  auto_updates false

  pkg "Install Blue Cat's Plug'n Script.pkg"

  uninstall quit:    "com.bluecataudio.blue-cat-s-plug-n-script",
            pkgutil: "com.bluecataudio.bluecatplugnscript.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script AU/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script Synth AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script Synth AU/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script Synth VST/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script Synth VST3/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script VST/",
    "~/Library/Preferences/Blue Cat Audio/BC Plug'n Script VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's Plug'n Script/",
  ]
end
