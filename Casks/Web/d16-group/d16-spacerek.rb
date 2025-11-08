cask "d16-spacerek" do
  version "1.2.3"
  sha256 "f6505a245944d4d6d0c8f0bfcff09518b271ae6a2d251af0286452ede09e6300"

  url "https://d16group.s3.amazonaws.com/installers/Spacerek/Spacerek-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Spacerek"
  desc "Room simulation reverb"
  homepage "https://d16.pl/spacerek"

  auto_updates false

  pkg "Spacerek - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.spacerek",
              "com.d16group.pkg.spacerek-*",
            ],
            delete:  "~/Library/Caches/Spacerek/"

  zap trash: "~/Library/Application Support/D16 Group/Spacerek/"
  # Will erase user presets and activation
end
