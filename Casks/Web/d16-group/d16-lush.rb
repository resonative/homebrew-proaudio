cask "d16-lush" do
  version "2.1.5"
  sha256 "79e6bf5727e39c9b0c57a3c5bf93f7a28a6aeadf8c917c1cc8095a73b4cf11c2"

  url "https://d16group.s3.amazonaws.com/installers/Lush2/Lush2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Lush 2"
  desc "Dual layer synthesizer"
  homepage "https://d16.pl/lush2"

  auto_updates false

  pkg "Lush 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.lush2",
              "com.d16group.pkg.lush2-*",
            ],
            delete:  "~/Library/Caches/Lush2/"

  zap trash: "~/Library/Application Support/D16 Group/Lush 2/"
  # Will erase user presets and activation
end
