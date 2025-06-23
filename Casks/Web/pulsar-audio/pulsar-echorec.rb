cask "pulsar-echorec" do
  version "1.7.6"
  sha256 "4868d322036a4fab50db26a5bb18a9cee57f387298f90025e094d7ea9ee1c5ca"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Echorec/PulsarEchorec-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Echorec"
  desc "Binson Echorec 2 delay emulation"
  homepage "https://pulsar.audio/echorec/"

  auto_updates false

  pkg "Pulsar Echorec.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Echorec"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.echorec"

  zap trash: "~/Library/Application Support/Pulsar/Echorec/"
end
