cask "babyaudio-comeback-kid" do
  version "1.6"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/Comeback+Kid+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio Comeback Kid"
  desc "Analog style delay"
  homepage "https://babyaud.io/comeback-kid-delay-plugin"

  auto_updates false

  pkg "Baby Audio - Comeback Kid - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.comebackkid.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/Comeback Kid/"
end
