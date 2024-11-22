cask "d16-drumazon2" do
  version "2.0.6"
  sha256 "136df0c2203584c04b3da8f750f9b90e8676f0d88ccc03f06349bb0ed88aed55"

  url "https://d16group.s3.amazonaws.com/installers/Drumazon2/Drumazon2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Drumazon 2"
  desc "909 drum machine emulation"
  homepage "https://d16.pl/drumazon2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Drumazon 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.drumazon2",
              "com.d16group.pkg.drumazon2-*",
            ],
            delete:  "~/Library/Caches/Drumazon2/"

  zap trash: "~/Library/Application Support/D16 Group/Drumazon 2/"
  # Will erase user presets and activation
end
