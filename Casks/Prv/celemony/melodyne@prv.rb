cask "melodyne@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "5.4.2.006"
  sha256 "fcf200d7cde3dfa099fa91b079dafef606276d1891e20533a8c6245821ab852c"

  url "#{prv_archive_url}/m/melodyne/v#{version}/Melodyne.#{version}.dmg",
      verified: prv_archive_url.to_s
  name "Celemony Melodyne"
  desc "Pitch correction"
  homepage "https://www.celemony.com/en/melodyne/what-is-melodyne"

  auto_updates false

  pkg "Melodyne.#{version}.pkg"

  uninstall pkgutil: "com.celemony.melodyne.*"

  zap trash: "/Users/Shared/Library/Application Support/Celemony/"
end
