cask "pulsar-vocal-studio" do
  version "1.0.15"
  sha256 "801acc6d87526f51d3b355d0cef0a392935e1d918d8ac697cc23d3503d59b400"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Vocal-Studio/PulsarVocalStudio-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Vocal Studio"
  desc "Vocal channel strip"
  homepage "https://pulsar.audio/vocal-studio/"

  auto_updates false

  pkg "Pulsar Vocal Studio.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Vocal Studio"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.vocalstudio",
            delete:  [
              "~/Library/Application Support/Pulsar/Vocal Studio/device.json",
              "~/Library/Application Support/Pulsar/Vocal Studio/display.json",
              "~/Library/Application Support/Pulsar/Vocal Studio/preferences.json",
            ]

  zap trash: "~/Library/Application Support/Pulsar/Vocal Studio/"
end
