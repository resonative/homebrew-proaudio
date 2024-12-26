cask "antarestech-auto-tune-pro@prv" do
  module Utils
    def self.prv_archive_url
      json_path = "#{ENV['HOMEBREW_PREFIX']}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data['server'] ||= "http://not_configured.lan"
    end
  end
  version "11.5.0.1478"
  sha256 :no_check

  url "#{Utils.prv_archive_url}/a/antarestech-auto-tune-pro/v#{version}/Auto-TunePro_#{version}.pkg"

  name "Antares Tech Auto-Tune Pro"
  desc "Pitch correction"
  homepage "https://www.antarestech.com/products/auto-tune/pro"

  auto_updates false
  conflicts_with cask: "auto-tune-central" 
  # This cask should be delete from caskroom before using auto-tune central to manage updates

  pkg "Auto-TunePro_#{version}.pkg"

  uninstall pkgutil: "com.Antares.pkg.AutoTunePro11"

  caveats "To retreive this installer via Auto-Tune Central.app:\n"\
          "1. Install via Auto-Tune Central, download of the installer will begin.\n"\
          "2. When download completes, when admin password dialog pops up (for installing), do not enter/continue.\n"\
          "3. Use tools like Daisydisk or search for .pkg to locate/copy installer from /var/folders"
end
