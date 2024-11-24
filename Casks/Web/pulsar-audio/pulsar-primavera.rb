cask "pulsar-primavera" do
  version "1.1.5"
  sha256 "7f0f0e4dd9bb5ccdded5631372fa77fcf885a1afbe06ee8b3a92ed9d27598d3e"

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
