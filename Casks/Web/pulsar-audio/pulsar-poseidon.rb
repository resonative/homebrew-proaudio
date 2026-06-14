cask "pulsar-poseidon" do
  version "1.1.11"
  sha256 "efbffe45c43c32f2d2972dbc0bc5b628e933895ca406eb8d25c3bc3a84dc91c9"

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
