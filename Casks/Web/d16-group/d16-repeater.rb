cask "d16-repeater" do
  version "1.2.2"
  sha256 "017d692e1f41c9166b83f6d86702a7f9507f692cfcf995c3fe73266b86aa36dc"

  url "https://d16group.s3.amazonaws.com/installers/Repeater/Repeater-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Repeater"
  desc "Multi model stereo delay"
  homepage "https://d16.pl/repeater"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Repeater - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.repeater",
              "com.d16group.pkg.repeater-*",
            ],
            delete:  "~/Library/Caches/Repeater/"

  zap trash: "~/Library/Application Support/D16 Group/Repeater/"
  # Will erase user presets and activation
end
