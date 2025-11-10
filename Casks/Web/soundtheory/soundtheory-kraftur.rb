cask "soundtheory-kraftur" do
  version "1.2.6"
  sha256 "72cc348da19fcdd125d539e033663a241fde573f6e3ac4614eea50c5144cd28a"

  url "https://www.soundtheory.com/static/Soundtheory%20Kraftur%20#{version}.dmg"
  name "Soundtheory Kraftur"
  desc "Mastering clipper"
  homepage "https://www.soundtheory.com/kraftur"

  auto_updates false

  pkg "Kraftur #{version} Installer.pkg"

  uninstall pkgutil: "com.soundtheory.Kraftur.*"
end
