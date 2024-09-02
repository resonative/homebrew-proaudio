cask "pulsar-1178" do
  version "1.4.5"
  sha256 "3561b20c3b1eb6ba08e648bdf46d5ce2ecd50f2c692b8eafa56922e9b91bc4bd"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/1178/Pulsar1178-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar 1178"
  desc "FET compressor"
  homepage "https://pulsar.audio/comp-1178/"

  auto_updates false

  pkg "Pulsar 1178.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/1178"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.1178"

  zap trash: "~/Library/Application Support/Pulsar/1178/"
end
