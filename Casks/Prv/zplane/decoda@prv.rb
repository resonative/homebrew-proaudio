cask "decoda@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.4.0"
  sha256 "1b1e70688fb4afa33ab68a38085500ec7e5a94089b047a852fa9d63ecf784595"

  url "#{prv_archive_url}/d/decoda/v#{version}/deCoda_#{version}_Installer.pkg",
      verified: prv_archive_url.to_s
  name "zplane deCoda"
  desc "Music transcription assitant"
  homepage "https://products.zplane.de/products/decoda"

  auto_updates false

  pkg "deCoda_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "zzUNINSTALLChoice", # Uninstaller
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.zplane.decoda.*",
            delete: [
              "/Applications/zplane/deCoda/deCoda_LE_quick_reference.pdf",
              "/Applications/zplane/deCoda/deCoda_manual.pdf",
            ]
end
