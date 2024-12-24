cask "boz-transgressor@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end

  version "3.0.8"
  sha256 "de426213c490789d558ef671f524f7cb185f8c3806d0d3c6ff07f368e601cf77"

  url "#{Utils.prv_archive_url}/b/boz-transgressor/v#{version}/Transgressor_3_#{version}_Mac.pkg"

  name "Boz Digital Labs Transgressor"
  desc "Transient processor EQ"
  homepage "https://www.bozdigitallabs.com/product/transgressor-3/"

  auto_updates false

  pkg "Big_Beautiful_Door_2_#{version}_Mac.pkg"

  uninstall pkgutil: "com.BozDigitalLabs.*.pkg.Transgressor3"
end
