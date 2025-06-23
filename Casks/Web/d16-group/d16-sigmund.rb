cask "d16-sigmund" do
  version "2.0.1"
  sha256 "f3a24398aea80374cae7d249d5a399e5797be590536a0899a5fee79428abd60a"

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
