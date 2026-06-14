cask "bc-plugn-script@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.61"
  sha256 "1115c265f0f897c0b38bb3565f05b6c9dae418088c28ef7c9b1aef527d804b05"

  url "#{prv_archive_url}/b/bc-plugn-script/v#{version}/BlueCatPlugNScript.dmg",
      verified: prv_archive_url.to_s
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
