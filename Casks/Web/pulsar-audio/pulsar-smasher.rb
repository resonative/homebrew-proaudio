cask "pulsar-smasher" do
  version "1.5.8"
  sha256 "ec1ce7f747414a74af0cb82d7d144b39795bb2d8dc825eea245b473085083951"

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
