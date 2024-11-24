cask "pulsar-poseidon" do
  version "1.1.0"
  sha256 "ba8eb60337dade5d5cfc48ac845ece6423d10c5a566c484ec077f9cc7b9b29eb"

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
