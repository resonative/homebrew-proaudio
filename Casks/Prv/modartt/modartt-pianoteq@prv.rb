cask "modartt-pianoteq@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "9.0.2"
  sha256 "77fd0d85093ba5702fd258ef9c4bc05e9d50965a9f7daaa326878e40291031a3"

  url "#{prv_archive_url}/m/modartt-pianoteq/v#{version}/pianoteq_setup_v#{version.no_dots}.dmg",
      verified: prv_archive_url.to_s
  name "Modartt Pianoteq"
  desc "Physical modeling piano"
  homepage "https://modartt.com/"

  auto_updates false
  container nested: "Install Pianoteq #{version.major}.app/Contents/Resources/Install Pianoteq #{version.major}.pkg.lzma"

  pkg "Install Pianoteq #{version.major}.pkg"

  uninstall pkgutil: "com.modartt.Pianoteq9.pkg"
end
