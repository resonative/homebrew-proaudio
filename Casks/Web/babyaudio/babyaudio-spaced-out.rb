cask "babyaudio-spaced-out" do
  version "1.7"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/Spaced+Out+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio Spaced Out"
  desc "Space Echo effect"
  homepage "https://babyaud.io/spaced-out-plugin"

  auto_updates false

  pkg "Baby Audio - Spaced Out - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.spacedout.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/Spaced Out/"
end
