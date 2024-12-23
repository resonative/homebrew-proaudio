cask "vps-avenger@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.3.1"
  sha256 "82497d6b6a8c20c4d9ffd1fc087d1094146ac34c2079b17c99a38bea5da5b7eb"

  url "#{Utils.prv_archive_url}/v/vps-avenger/v#{version}/OSX_Avenger_#{version.dots_to_underscores}.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Vengenace Sound Avenger"
  desc "Multi engine synth"
  homepage "https://vengeance-sound.com/plugins.php?sub=Vengeance%20Producer%20Suite%20Avenger%202"

  auto_updates false
  conflicts_with cask: "avenger@prv-2.0.5"

  pkg "VPS Avenger_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.keilwerthAudio.VPSAvenger2*.pkg"
end
