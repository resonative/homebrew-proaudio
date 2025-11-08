cask "d16-drumazon" do
  version "2.0.7"
  sha256 "e096870b1931c2e0d395fa15d467cda7cfdb341099078717edb13fbf4ba4bb2c"

  url "https://d16group.s3.amazonaws.com/installers/Drumazon2/Drumazon2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Drumazon 2"
  desc "909 drum machine emulation"
  homepage "https://d16.pl/drumazon2"

  auto_updates false

  pkg "Drumazon 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.drumazon2",
              "com.d16group.pkg.drumazon2-*",
            ],
            delete:  "~/Library/Caches/Drumazon2/"

  zap trash: "~/Library/Application Support/D16 Group/Drumazon 2/"
  # Will erase user presets and activation
end
