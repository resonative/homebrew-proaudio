cask "bc-axiom@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.1"
  sha256 "0eeac5c07d237e437a9753027c251b1f4c0e70a2ab1af61f934641666cd18fd9"

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
