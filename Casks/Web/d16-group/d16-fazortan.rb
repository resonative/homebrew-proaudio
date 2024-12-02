cask "d16-fazortan" do
  version "2.2.2"
  sha256 "dec800b2482f2f0f5fec988e81bb39e3cc56fbb2cfcd257b0f3ab117df18b9fc"

  url "https://d16group.s3.amazonaws.com/installers/Fazortan2/Fazortan2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Fazortan 2"
  desc "Flexible analog phaser"
  homepage "https://d16.pl/fazortan2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Fazortan 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.fazortan2",
              "com.d16group.pkg.fazortan2-*",
            ],
            delete:  "~/Library/Caches/Fazortan2/"

  zap trash: "~/Library/Application Support/D16 Group/Fazortan 2/"
  # Will erase user presets and activation
end
