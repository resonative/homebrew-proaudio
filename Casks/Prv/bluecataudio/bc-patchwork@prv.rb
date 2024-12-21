cask "bc-patchwork@prv" do
  module Utils
    def self.prv_archive_url(argument = nil)
      json_path = "#{ENV.fetch('HOMEBREW_PREFIX')}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"

      return data["server"].sub(%r{\Ahttps?://}, "") if argument == "verified"

      data["server"]
    end
  end

  version "2.7"
  sha256 "eb762c43fe42e96d73f67345ab5969e93ca5a85dde8638960e0b27f32725d0e1"

  url "#{Utils.prv_archive_url}/b/bc-patchwork/v#{version}/BlueCatPatchWork.dmg",
      verified: "#{Utils.prv_archive_url}/"
  name "Blue Cat PatchWork"
  desc "Plugin host"
  homepage "https://www.bluecataudio.com/Products/Product_PatchWork/"

  auto_updates false

  pkg "Install Blue Cat's PatchWork.pkg"

  uninstall quit:    "com.bluecataudio.blue-cat-s-patchwork",
            pkgutil: "com.bluecataudio.bluecatpatchwork.*.pkg"

  zap trash: [
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork AU/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork MFX AU/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork Synth AAX/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork Synth AU/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork Synth VST/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork Synth VST3/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork VST/",
    "~/Library/Preferences/Blue Cat Audio/BC PatchWork VST3/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's PatchWork/",
    "~/Library/Preferences/Blue Cat Audio/Blue Cat's PatchWork 2/",
  ]
end
