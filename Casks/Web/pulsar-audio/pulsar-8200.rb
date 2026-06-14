cask "pulsar-8200" do
  version "1.2.11"
  sha256 "b28ad2ff9d5dc000ef10a9227246f74a3ea72bc9c78ae31698b6e7197bdbd889"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/8200/Pulsar8200-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar 8200"
  desc "GML 8200 EQ emulation"
  homepage "https://pulsar.audio/eq-8200/"

  auto_updates false

  pkg "Pulsar 8200.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/8200"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.8200"

  zap trash: "~/Library/Application Support/Pulsar/8200/"
end
