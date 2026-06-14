cask "auto-tune-central" do
  version "2.0.1,7200"
  sha256 "553bebfc4040dba81643e9753d6bcaf5666f9f1a54a9f80daab4cf8c8fc23901"

  url "https://antares.sfo2.cdn.digitaloceanspaces.com/auto-tune-central/auto-update/mac/Auto_Tune_Central_#{version.csv.first}_universal_x#{version.csv.second}.dmg",
      verified: "antares.sfo2.cdn.digitaloceanspaces.com/"
  name "Auto-Tune Central"
  desc "Antares plugin installation manager"
  homepage "https://www.antarestech.com/software-download"

  app "Auto-Tune Central.app"

  uninstall quit:   "com.Antares.AutoTuneCentral"
end
