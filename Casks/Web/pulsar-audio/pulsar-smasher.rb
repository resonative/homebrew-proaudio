cask "pulsar-smasher" do
  version "1.4.5"
  sha256 "990a11e99d91936188cee3b33ed3a46d992543fe66837180173bae2e3c208ff8"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/Smasher/PulsarSmasher-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Smasher"
  desc "Modded 1176 compressor emulation"
  homepage "https://pulsar.audio/smasher/"

  auto_updates false

  pkg "Pulsar Smasher.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/Smasher"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.smasher"

  zap trash: "~/Library/Application Support/Pulsar/Smasher/"
end
