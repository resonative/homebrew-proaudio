cask "d16-syntorus" do
  version "2.2.2"
  sha256 "0b6f1eaeac4df17f836f94a5b9ef0d9d0a68f0257984f785947f6678ae8b348e"

  url "https://d16group.s3.amazonaws.com/installers/Syntorus2/Syntorus2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Syntorus 2"
  desc "Triple path chorus"
  homepage "https://d16.pl/syntorus2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Syntorus 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.syntorus2",
              "com.d16group.pkg.syntorus2-*",
            ],
            delete:  "~/Library/Caches/Syntorus2/"

  zap trash: "~/Library/Application Support/D16 Group/Syntorus 2/"
  # Will erase user presets and activation
end
