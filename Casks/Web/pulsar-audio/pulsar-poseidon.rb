cask "pulsar-poseidon" do
  version "1.1.6"
  sha256 "3fb2a44b103500ec03b5e5fcebd5a78e63c2d30d929127985e9fae6c97203d9b"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Poseidon/PulsarPoseidon-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Poseidon"
  desc "Neve 1073 EQ emulation"
  homepage "https://pulsar.audio/poseidon/"

  auto_updates false

  pkg "Pulsar Poseidon.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Poseidon"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.poseidon",
            delete:  [
              "~/Library/Application Support/Pulsar/Poseidon/device.json",
              "~/Library/Application Support/Pulsar/Poseidon/display.json",
              "~/Library/Application Support/Pulsar/Poseidon/preferences.json",
            ]

  zap trash: "~/Library/Application Support/Pulsar/Poseidon/"
end
