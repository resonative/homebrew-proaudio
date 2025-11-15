cask "babyaudio-ihny-2" do
  version "1.5"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/IHNY-2+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio IHNY-2"
  desc "Parallel compression"
  homepage "https://babyaud.io/ihny-2"

  auto_updates false

  pkg "Baby Audio - IHNY-2 - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.ihny2.pkg.*"

  zap trash: "/Library/Application Support/BABY Audio/Presets/IHNY-2/"
end
