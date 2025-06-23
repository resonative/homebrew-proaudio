cask "pulsar-primavera" do
  version "1.2.6"
  sha256 "f0bfea179c9dd1db6c5fec1621b41d5aeae7be50060a0b6b2f9099b8f3343d8f"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Primavera/PulsarPrimavera-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Primavera"
  desc "Phyiscal modelled spring reverb"
  homepage "https://pulsar.audio/primavera/"

  auto_updates false

  pkg "Pulsar Primavera.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Primavera"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.primavera"

  zap trash: "~/Library/Application Support/Pulsar/Primavera/"
end
