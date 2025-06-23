cask "pulsar-w495" do
  version "1.2.6"
  sha256 "fe48bb08d9a76f4a629e138e6f3c98112367610603a75de08010945fb2d310f4"

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
