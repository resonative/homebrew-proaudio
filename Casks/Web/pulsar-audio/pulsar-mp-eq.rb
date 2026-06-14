cask "pulsar-mp-eq" do
  version "2.0.7"
  sha256 "be361fb7f38656bd85ad389592af304093d9209f8320c314371aa94689ebf9d5"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/MP-EQ/Pulsar-MP-EQ-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar MP-EQ"
  desc "Manley Massive passive tube EQ emulation"
  homepage "https://pulsar.audio/massive/"

  auto_updates false

  pkg "Pulsar MP-EQ.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/MP-EQ"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.mp-eq"

  zap trash: "~/Library/Application Support/Pulsar/MP-EQ/"
end
