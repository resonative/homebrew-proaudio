cask "boz-big-clipper@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "2.1.0"
  sha256 "883808c48bf5723b9839b25cfa61a39feb73d1c2cd7bdeb36e6f476b240e1f50"

  url "#{Utils.prv_archive_url}/b/boz-big-clipper/v#{version}/Big_Clipper_2_#{version}_Mac.pkg"

  name "Boz Digital Labs Big Clipper"
  desc "Dual stage low latency clipper"
  homepage "https://www.bozdigitallabs.com/product/big-clipper-2/"

  auto_updates false

  pkg "Big_Clipper_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.BigClipper2"
end
