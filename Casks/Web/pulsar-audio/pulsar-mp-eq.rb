cask "pulsar-mp-eq" do
  version "2.0.3"
  sha256 "2c8398e3720ee68eebd08ff19c3ef8efb056985e82373dfe14bdf7b4a48fe209"

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
