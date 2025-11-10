cask "boz-the-wall@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "2.1.0"
  sha256 "50438f9d24871d3ef3f6dceb0f9b1fd388460624db47bf1816da87954e01ef82"

  url "#{Utils.prv_archive_url}/b/boz-the-wall/v#{version}/The_Wall_2_#{version}_Mac.pkg"

  name "Boz Digital Labs The Wall"
  desc "Limiter"
  homepage "https://www.bozdigitallabs.com/the-wall/"

  auto_updates false

  pkg "The_Wall_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.TheWall2"
end
