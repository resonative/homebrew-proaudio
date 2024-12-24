cask "boz-big-beautiful-door@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "2.0.3"
  sha256 "0412019e77163b8b0b493ff4af2f5e950f1539457d20d11fc45d6195591661c8"

  url "#{Utils.prv_archive_url}/b/boz-big-beautiful-door/v#{version}/Big_Beautiful_Door_2_#{version}_Mac.pkg"

  name "Boz Digital Labs Big Beautiful Door"
  desc "Transient processing gate"
  homepage "https://www.bozdigitallabs.com/product/big-beautiful-door-2/"

  auto_updates false

  pkg "Big_Beautiful_Door_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.BigBeautifulDoor2"
end
