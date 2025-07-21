cask "valhalla-room@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.0.5"
  sha256 "f41c9ffaf0aed2b7515605ad0fb2463ddf7eac7eef93cb821ed54bd567503c90"

  url "#{prv_archive_url}/v/valhalla-room/v#{version}/ValhallaRoomOSX_#{version.dots_to_underscores}.dmg",
      verified: prv_archive_url.to_s
  name "ValhallaDSP Valhalla Room"
  desc "Room reverb"
  homepage "https://valhalladsp.com/shop/reverb/valhalla-room/"

  auto_updates false

  pkg "ValhallaRoomOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.Room.pkg.*"

  # zap delete: "~/Library/Audio/Presets/Valhalla DSP, LLC/ValhallaRoom/"
end
