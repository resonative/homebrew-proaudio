cask "pulsar-vm-comp" do
  version "2.0.3"
  sha256 "cec8ab790e3af214a4837b80d4f7ed8bced109128dd048c9ccafee5d2b0961a5"

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
