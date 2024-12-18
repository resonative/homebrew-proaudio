cask "d16-lush" do
  version "2.1.0"
  sha256 "9cc24324784603285ad11c3e6cee248741b1376b08d18203e8c6de694fb1ca65"

  url "https://d16group.s3.amazonaws.com/installers/Lush2/Lush2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Lush 2"
  desc "Dual layer synthesizer"
  homepage "https://d16.pl/lush2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Lush 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.lush2",
              "com.d16group.pkg.lush2-*",
            ],
            delete:  "~/Library/Caches/Lush2/"

  zap trash: "~/Library/Application Support/D16 Group/Lush 2/"
  # Will erase user presets and activation
end
