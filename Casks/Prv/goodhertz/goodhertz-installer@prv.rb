cask "goodhertz-installer@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "3.13.2-a9ef3f6"
  sha256 "980a15d0f758cb7ac970b7d1156049156e6430e4edde5e6c2c437766404247c7"

  url "#{prv_archive_url}/g/goodhertz-installer/v#{version}/Goodhertz-Installer-#{version}.pkg"
  name "Goodhertz Goodhertz Installer"
  desc "Goodhertz plugins"
  homepage "https://goodhertz.com"

  auto_updates false

  pkg "Goodhertz-Installer-#{version}.pkg"

  uninstall pkgutil: [
  	"com.goodhertz.common.*",
  	"com.goodhertz.pkg.*",
  ]

  zap delete:  "~/Library/Preferences/com.goodhertz.*.plist"
end
