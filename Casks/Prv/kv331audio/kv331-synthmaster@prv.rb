cask "kv331-synthmaster@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.4.9,17331"
  sha256 "f157748aa9b49e76244b83fecd531be6764cd76f864568d0608aca7e8d046da4"

  url "#{prv_archive_url}/s/kv331-synthmaster/v#{version}/synthmaster3macsetup_rev#{version.csv.second}.zip",
      verified: prv_archive_url.to_s
  name "SynthMaster"
  desc "Versitle VA Synth"
  homepage "https://www.synthmaster.com/synthmaster3.aspx"

  auto_updates false

  pkg "SynthMaster3Setup.pkg"

  uninstall pkgutil: "com.kv331audio.synthmaster3*.pkg"
end
