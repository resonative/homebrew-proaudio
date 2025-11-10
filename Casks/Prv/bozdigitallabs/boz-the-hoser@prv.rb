cask "boz-the-hoser@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "2.0.13"
  sha256 "c08c926611290a5170bbbd9c0dfae8aa23263666a2419195f48fe1a5722ca4e8"

  url "#{Utils.prv_archive_url}/b/boz-the-hoser/v#{version}/Plus_10db_2_#{version}_Mac.pkg"

  name "Boz Digital David Bendeth The Hoser XT"
  desc "Ward-Beck Systems M462B EQ emulation"
  homepage "https://www.bozdigitallabs.com/product/the-hoser-xt-2/"

  auto_updates false

  pkg "The_Hoser_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.TheHoser2"
end
