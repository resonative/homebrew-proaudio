cask "soundtheory-kraftur" do
  version "1.2.3"
  sha256 "5ddfbb582d955aab54e7559eeb3ebd02af30ec966c92913e61a4efd4c7ef73a6"

  url "https://www.soundtheory.com/static/Soundtheory%20Kraftur%20#{version}.dmg"
  name "Soundtheory Kraftur"
  desc "Mastering clipper"
  homepage "https://www.soundtheory.com/kraftur"

  auto_updates false

  pkg "Kraftur #{version} Installer.pkg"

  uninstall pkgutil: "com.soundtheory.Kraftur.*"
end
