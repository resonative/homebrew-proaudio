cask "d16-sigmund" do
  version "2.0.0"
  sha256 "4055021b7891805be5d7cab414cb110d8a9e5695124cc1210e68459b5cd855d6"

  url "https://d16group.s3.amazonaws.com/installers/Sigmund2/Sigmund2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Sigmund 2"
  desc "Flexible delay unit with 4 delay lines"
  homepage "https://d16.pl/sigmund2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Sigmund 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.sigmund2",
              "com.d16group.pkg.sigmund2-*",
            ],
            delete:  "~/Library/Caches/Sigmund2/"

  zap trash: "~/Library/Application Support/D16 Group/Sigmund 2/"
  # Will erase user presets and activation
end
