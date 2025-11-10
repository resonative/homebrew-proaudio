cask "soundtheory-gullfoss" do
  version "1.11.9"
  sha256 "6850e42f36d471e09df5013a1631f52c3ee582ef503f1cc8047e34d4faa9ce27"

  url "https://www.soundtheory.com/static/Soundtheory%20Gullfoss%20#{version}.dmg"
  name "Soundtheory Gullfoss"
  desc "Dynamic equalizer for mastering"
  homepage "https://www.soundtheory.com/gullfoss"

  auto_updates false

  pkg "Gullfoss #{version} Installer.pkg"

  uninstall pkgutil: "com.soundtheory.gullfoss.*.install"
end
