cask "pulsar-mu" do
  version "1.6.6"
  sha256 "cb9b5f59311e3032d64f405a5cafb27c1f894983ed17168540ab9dc894ef4d74"

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
