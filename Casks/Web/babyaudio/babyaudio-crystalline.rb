cask "babyaudio-crystalline" do
  version "1.8"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/Crystalline+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio Crystalline"
  desc "Algrithmic reverb"
  homepage "https://babyaud.io/crystalline"

  auto_updates false

  pkg "Baby Audio - Crystalline - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.crystalline.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/Crystalline/"
end
