cask "pulsar-massive" do
  version "1.3.5"
  sha256 "4fae03490dc253bcf32285a70e6b815c12f70bfcde33f757d3071560fd941594"

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
