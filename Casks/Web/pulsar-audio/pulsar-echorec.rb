cask "pulsar-echorec" do
  version "1.7.8"
  sha256 "9b6bf9d4ab2625141157aabc33fcf67e3e7449fdda888f97a4c2b43d23ecc715"

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
