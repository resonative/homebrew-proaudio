cask "divisimate@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "2.0.6"
  sha256 "3c49968a74c2d2e5bf12a82920c7ac0aa599ca0289a28bb4f3788af5a9067117"

  url "#{prv_archive_url}/d/divisimate/v#{version}/Divisimate%202_v#{version}_MAC.pkg",
      verified: prv_archive_url.to_s
  name "Divisimate"
  desc "Instrument voicing management"
  homepage "https://divisimate.com/divisimate/"

  auto_updates false

  pkg "Divisimate 2_v#{version}_MAC.pkg"

  uninstall quit:    [
              "com.Nextmidi.Divisimate2",
              "com.Nextmidi.NextmidiHub",
            ],
            pkgutil: [
              "com.Nextmidi.Divisimate2",
              "com.Nextmidi.Divisimate2.*",
              "com.Nextmidi.NextmidiHub",
            ],
            delete: [
              "/Library/Application Support/Nextmidi/",
              "~/Library/Caches/com.Nextmidi.Divisimate2/",
              "~/Library/HTTPStorages/com.Nextmidi.Divisimate2/",
            ]

  zap delete: [
    "~/Library/Preferences/com.Nextmidi.Divisimate2.plist",
    "~/Library/Preferences/com.Nextmidi.NextmidiHub.plist",
  ]
end
