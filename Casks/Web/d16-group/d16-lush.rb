cask "d16-lush" do
  version "2.0.2"
  sha256 "9f85d388e74e3b1ab7dd39c3c393e65b954c5e0d49bc53b54cc881acd7d9ffdc"

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
