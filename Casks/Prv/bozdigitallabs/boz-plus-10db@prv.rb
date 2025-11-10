cask "boz-plus-10db@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "2.0.13"
  sha256 "0c70ac44537ad58b28e617179e5651122844a137b07fd1218213899a185d8afd"

  url "#{Utils.prv_archive_url}/b/boz-plus-10db/v#{version}/Plus_10db_2_#{version}_Mac.pkg"

  name "Boz Digital David Bendeth +10db channel Strip"
  desc "High pass filter"
  homepage "https://www.bozdigitallabs.com/plus-10-db/"

  auto_updates false

  pkg "Plus_10db_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.Plus10db2"
end
