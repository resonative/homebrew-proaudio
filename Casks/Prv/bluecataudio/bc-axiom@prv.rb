cask "bc-axiom@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.2"
  sha256 "d230c2dda5d16e527351fef3fd14dd4bd185b8c85f5f7bffc48ec5ec62af2252"

  url "#{prv_archive_url}/b/bc-axiom/v#{version}/BlueCatAxiom.dmg",
      verified: prv_archive_url.to_s
  name "Blue Cat Axiom"
  desc "Guitar amp modeling and plugin host"
  homepage "https://www.bluecataudio.com/Products/Product_Axiom/"

  auto_updates false

  pkg "Install Blue Cat's Axiom.pkg"

  uninstall quit:    "com.bluecataudio.blue-cat-s-axiom",
            pkgutil: "com.bluecataudio.bluecataxiom.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC Axiom AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC Axiom AU/",
    "~/Library/Preferences/Blue Cat Audio/BC Axiom VST/",
    "~/Library/Preferences/Blue Cat Audio/BC Axiom VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's Axiom/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's Axiom 2/",
  ]
end
