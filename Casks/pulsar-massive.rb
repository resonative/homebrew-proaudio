cask "pulsar-massive" do
  version "1.3.5"
  sha256 ""

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Massive/PulsarMassive-#{version}.dmg"
  name "Pulsar Massive"
  desc "Passive EQ audio plugin"
  homepage "https://pulsar.audio/massive/"

  livecheck do
    cask "pulsar-massive"
  end

  auto_updates false
  # support 10.9 or higher, deprecated depends_on macos: ">= :sierra"

  pkg "ValhallaSupermassiveOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.supermassive.pkg.*"

end