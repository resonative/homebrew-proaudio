cask "vps-avenger@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.4.1"
  sha256 "4b91b12deca083a1b628540aa3d6b614bc3d2d005176bc81e2626c194d0281e0"

  url "#{prv_archive_url}/v/vps-avenger/v#{version}/OSX_Avenger_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "Vengenace Sound Avenger"
  desc "Multi engine synth"
  homepage "https://vengeance-sound.com/plugins.php?sub=Vengeance%20Producer%20Suite%20Avenger%202"

  auto_updates false
  conflicts_with cask: "avenger@prv-2.0.5"

  pkg "VPS Avenger_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.keilwerthAudio.VPSAvenger2*.pkg"
end
