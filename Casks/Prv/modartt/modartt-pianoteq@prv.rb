cask "modartt-pianoteq@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "9.0.3"
  sha256 "190f1c5300254790b3ff9c3d31d324549fa89267e0f5d850f64f2553652ac06e"

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
