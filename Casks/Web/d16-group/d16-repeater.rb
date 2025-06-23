cask "d16-repeater" do
  version "1.2.5"
  sha256 "30dd325651339ce979fc19313661dd392542ddcbd36a7149b464a3b2ef3eaf29"

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
