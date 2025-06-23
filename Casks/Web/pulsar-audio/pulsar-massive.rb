cask "pulsar-massive" do
  version "1.4.6"
  sha256 "214fe514c7c14a04c423faf07da8d0718692af26e9b4b8b938ca1b10da50f3b5"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Massive/PulsarMassive-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Massive"
  desc "Manley Massive passive tube EQ emulation"
  homepage "https://pulsar.audio/massive/"

  auto_updates false

  pkg "Pulsar Massive.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Massive"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.massive"

  zap trash: "~/Library/Application Support/Pulsar/Massive/"
end
