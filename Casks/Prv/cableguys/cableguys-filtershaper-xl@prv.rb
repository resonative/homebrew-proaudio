cask "cableguys-filtershaper-xl@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.0.3"
  sha256 "605272b424ed4fefe660e6f2d72d647113434251b76607dedac5f690c913f73e"

  url "#{prv_archive_url}/c/cableguys-filtershaper-xl/v#{version}/Cableguys-FilterShaperXL.zip",
      verified: prv_archive_url("verified").to_s
  name "Cableguys ShaperBox"
  desc "Tempo-synced audio effects"
  homepage "https://www.cableguys.com/shaperbox"

  auto_updates false

  pkg "Cableguys - FilterShaper XL #{version}/Mac/Cableguys - FilterShaper XL #{version}.pkg"

  uninstall pkgutil: "de.cableguys.pkg.filtershaper xl.*"

  # zap delete: [
  #   "~/Library/Cableguys/ShaperBox3/",
  #   "~/Library/Preferences/de.cableguys.shaperbox3.plist", # Contains license info
  # ]
end
