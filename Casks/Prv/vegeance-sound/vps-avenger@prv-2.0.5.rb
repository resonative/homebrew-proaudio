cask "vps-avenger@prv-2.0.5" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.0.5"
  sha256 "42aee2572e149ef786ee6e7060f9a37278479558a296340a586a641ae44ea79b"

  url "#{Utils.prv_archive_url}/v/vps-avenger/v#{version}/OSX_Avenger_#{version.dots_to_underscores}.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Vengenace Sound Avenger"
  desc "Multi engine synth"
  homepage "https://vengeance-sound.com/plugins.php?sub=Vengeance%20Producer%20Suite%20Avenger%202"

  auto_updates false
  conflicts_with cask: "vps-avenger"

  pkg "VPS Avenger_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.keilwerthAudio.VPSAvenger2*.pkg"
            
end
