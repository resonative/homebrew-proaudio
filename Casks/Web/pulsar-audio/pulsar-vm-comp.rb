cask "pulsar-vm-comp" do
  version "2.0.7"
  sha256 "7add42ada7fa9a08c4b6a6caee45c3d6ef7c0dec9d00e4371caa205e638c3e00"

  url "https://pulsaraudio.s3.us-east-2.amazonaws.com/VM-COMP/Pulsar-VM-Comp-#{version}.dmg",
      verified: "pulsaraudio.s3.us-east-2.amazonaws.com/"
  name "Pulsar Mu"
  desc "Manley Variable mu compressor emulation"
  homepage "https://pulsar.audio/mu/"

  auto_updates false

  pkg "Pulsar VM-Comp.pkg"

  postflight do
    # Remove uninstall.app (brew uninstall will handle this function)
    set_ownership "~/Library/Application Support/Pulsar/"
    system_command "rm",
                   args: ["-rf", "/Applications/Pulsar/VM-Comp"],
                   sudo: true
    system_command "rmdir",
                   args: ["/Applications/Pulsar"],
                   sudo: true
  end

  uninstall pkgutil: "audio.pulsar.*.vm-comp"

  zap trash: "~/Library/Application Support/Pulsar/VM-Comp/"
end
