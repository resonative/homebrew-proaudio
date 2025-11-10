cask "bc-axiom@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "2.22"
  sha256 "a2e4e99b42e272f4bed42c4cfed01a81369188ce156b5bab44c6fb54a51aab33"

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
