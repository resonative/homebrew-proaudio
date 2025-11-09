cask "pulsar-poseidon" do
  version "1.1.8"
  sha256 "4a062a0d017574851415934f0393d30c063a7ed3574db7522ad205f0d9ef2892"

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
