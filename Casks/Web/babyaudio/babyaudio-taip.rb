cask "babyaudio-taip" do
  version "1.6"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/TAIP+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio TAIP"
  desc "Tape emulation"
  homepage "https://babyaud.io/taip-plugin"

  auto_updates false

  pkg "Baby Audio - TAIP - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.taip.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/TAIP/"
end
