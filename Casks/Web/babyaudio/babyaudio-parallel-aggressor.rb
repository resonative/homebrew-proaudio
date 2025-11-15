cask "babyaudio-parallel-aggressor" do
  version "1.5"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/Parallel+Aggressor+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio Parallel Aggressor"
  desc "Parallel compression and saturation"
  homepage "https://babyaud.io/parallel-aggressor-plugin"

  auto_updates false

  pkg "Baby Audio - Parallel Aggressor - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.parallelaggressor.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/Parallel Aggressor/"
end
