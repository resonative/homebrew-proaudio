cask "bc-patchwork@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.72"
  sha256 "f902617fde781fbd765519087f10bf6a0544a12ce636d48503aa0dcbdcb03cb9"

  url "#{prv_archive_url}/b/bc-patchwork/v#{version}/BlueCatPatchWork.dmg",
      verified: prv_archive_url.to_s
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
