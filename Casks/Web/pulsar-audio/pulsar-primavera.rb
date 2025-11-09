cask "pulsar-primavera" do
  version "1.2.8"
  sha256 "925bfb16fa55bf46fbfae9d124079096f643e45ef2648be7ccbd646f1929eedb"

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
