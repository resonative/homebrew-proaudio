cask "pulsar-1178" do
  version "1.5.6"
  sha256 "b5c2b322c863f142bb86e5c64ba8d907359f20cc744b015c9029556d1e3ce62f"

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

  uninstall pkgutil: "audio.pulsar.*.1178",
            delete:  [
              "~/Library/Application Support/Pulsar/1178/device.json",
              "~/Library/Application Support/Pulsar/1178/display.json",
              "~/Library/Application Support/Pulsar/1178/preferences.json",
            ]

  zap trash: "~/Library/Application Support/Pulsar/1178/"
end
