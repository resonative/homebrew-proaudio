cask "pulsar-w495" do
  version "1.1.5"
  sha256 "55a065ba80d246237a699ab24d81eeb5a8d95067a645f178cbc8336163cd875a"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/w495/PulsarW495-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar W495"
  desc "Neumann w495 EQ emulation"
  homepage "https://pulsar.audio/w495/"

  auto_updates false

  pkg "Pulsar W495.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/W495"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.w495"

  zap trash: "~/Library/Application Support/Pulsar/W495/"
end
