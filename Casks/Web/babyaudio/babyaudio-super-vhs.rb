cask "babyaudio-super-vhs" do
  version "1.6"
  sha256 :no_check

  url "https://babyaudiosoftware.s3.us-east-2.amazonaws.com/Super+VHS+Baby+Audio+Mac.zip",
      verified: "babyaudiosoftware.s3.us-east-2.amazonaws.com/"
  name "Baby Audio Super VHS"
  desc "Lofi distortion"
  homepage "https://babyaud.io/super-vhs-multi-fx-plugin"

  auto_updates false

  pkg "Baby Audio - Super VHS - Mac #{version}.pkg"

  uninstall pkgutil: "com.BABYAudio.supervhs.pkg.*"
end
