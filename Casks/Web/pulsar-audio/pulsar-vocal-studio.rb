cask "pulsar-vocal-studio" do
  version "1.0.18"
  sha256 "6c730682f568457318061078aa7c99101822f37099955f09b386b9c6061b098e"

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
