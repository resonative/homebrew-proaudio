cask "synthmaster@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.4.5,16650"
  sha256 "a9ce1dfeae47da8658e8c28e5172185216fef29f44f06476ccc28f176edf82d1"

  url "#{prv_archive_url}/s/synthmaster/v#{version}/synthmaster3macsetup_rev#{version.csv.second}.zip",
      verified: prv_archive_url.to_s
  name "SynthMaster"
  desc "Versitle VA Synth"
  homepage "https://www.synthmaster.com/synthmaster3.aspx"

  auto_updates false

  pkg "SynthMaster3Setup.pkg"

  uninstall pkgutil: "com.kv331audio.synthmaster3*.pkg"
end
