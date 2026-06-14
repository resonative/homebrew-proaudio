cask "pulsar-echorec" do
  version "1.7.11"
  sha256 "9175f69d07526a03fef202ce88ec7d2f4561a859b866a96861be497855799d00"

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
