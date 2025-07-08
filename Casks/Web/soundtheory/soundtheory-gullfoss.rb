cask "soundtheory-gullfoss" do
  version "1.11.6"
  sha256 "78c54960177e434c71104cef7f487598b74fed3e099cd5a8a8420adf8b2fcaa4"

  url "https://www.soundtheory.com/static/Soundtheory%20Gullfoss%20#{version}.dmg"
  name "Soundtheory Gullfoss"
  desc "Dynamic equalizer for mastering"
  homepage "https://www.soundtheory.com/gullfoss"

  auto_updates false

  pkg "Gullfoss #{version} Installer.pkg"

  uninstall pkgutil: "com.soundtheory.gullfoss.*.install"
end
