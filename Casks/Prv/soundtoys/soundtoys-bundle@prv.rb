cask "soundtoys-bundle@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "5.4.3.17500"
  sha256 "0c1427c2a4172cd943f37e5a1753dd87023d620a75aecb2c0107f63a9f1ad5dc"

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
