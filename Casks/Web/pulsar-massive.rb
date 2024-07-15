cask "pulsar-massive" do
  version "1.3.5"
  sha256 "4fae03490dc253bcf32285a70e6b815c12f70bfcde33f757d3071560fd941594"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Massive/PulsarMassive-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Massive"
  desc "Passive EQ audio plugin"
  homepage "https://pulsar.audio/massive/"

  livecheck do
    cask "pulsar-massive"
  end

  auto_updates false

  pkg "Pulsar Massive.pkg"

  uninstall pkgutil: "audio.pulsar.*.massive"
end
