cask "soundtoys-bundle@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "5.5.3.18786"
  sha256 "5cc60d0754f4e577b1661c796feb551e623e6b68892df19cbe5f92df4f261822"

  url "#{prv_archive_url}/s/soundtoys-bundle/v#{version}/SoundtoysV#{version.major_minor.no_dots}Bundle_#{version}.dmg",
      verified: prv_archive_url.to_s
  name "Soundtoys 5 Bundle"
  desc "All soundtoys plugins with effect rack"
  homepage "https://www.soundtoys.com/product/soundtoys-5/"

  # From homebrew-cask's soundtoys formula
  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json.map do |key, item|
        next unless key.match?(/Soundtoys.*?[._-]Mac/i)

        item["fullversion"]
      end
    end
  end

  auto_updates false
  conflicts_with cask: "soundtoys" # homebrew-cask repo

  pkg "Install Soundtoys #{version.major_minor} Bundle.pkg"

  uninstall pkgutil: "com.soundtoys.SoundtoysV#{version.major_minor.no_dots}Bundle.*",
            trash:  [
              "~/Library/Preferences/com.soundtoys.metrics.plist",
              "~/Library/Preferences/com.soundtoys.notifications.plist",
              "~/Library/Preferences/com.soundtoys.plist",
            ]
end
