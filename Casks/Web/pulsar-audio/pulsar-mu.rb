cask "pulsar-mu" do
  version "1.5.5"
  sha256 "0c4bee00dc98420fb079c70a51c8f63da080013ebca59cdfa5e12b7ef23ac490"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Mu/PulsarMu-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Mu"
  desc "Variable mu compressor"
  homepage "https://pulsar.audio/mu/"

  auto_updates false

  pkg "Pulsar Mu.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Mu"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.mu"

  zap trash: "~/Library/Application Support/Pulsar/Mu/"
end
