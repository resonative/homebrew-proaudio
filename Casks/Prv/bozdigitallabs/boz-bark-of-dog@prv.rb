cask "boz-bark-of-dog@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "3.0.1"
  sha256 "0ae8109ae27b380e1afccd3c0241468e119dd44af9444aabdd4b8e32d3c7bc15"

  url "#{Utils.prv_archive_url}/b/boz-bark-of-dog/v#{version}/Bark_of_Dog_3_#{version}_Mac.pkg"

  name "Boz Digital Bark of Dog"
  desc "High pass filter"
  homepage "https://www.bozdigitallabs.com/product/bark-of-dog/"

  auto_updates false

  pkg "Bark_of_Dog_3_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.BarkofDog3"
end
