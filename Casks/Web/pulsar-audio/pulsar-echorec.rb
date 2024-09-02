cask "pulsar-echorec" do
  version "1.6.5"
  sha256 "7817656ced487b0dbd16904ef18d2803457ddb90198871493894dcbea6e925e0"

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
