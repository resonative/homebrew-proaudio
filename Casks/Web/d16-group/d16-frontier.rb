cask "d16-frontier" do
  version "1.2.2"
  sha256 "8ae792fa15e6653af303d29757293c527d96a2a6656f191216bada84e78cec80"

  url "https://d16group.s3.amazonaws.com/installers/Frontier/Frontier-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Frontier"
  desc "Adaptive limiter"
  homepage "https://d16.pl/frontier"

  auto_updates false

  pkg "Frontier - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.frontier",
              "com.d16group.pkg.frontier-*",
            ],
            delete:  "~/Library/Caches/Frontier/"

  zap trash: "~/Library/Application Support/D16 Group/Frontier/"
  # Will erase user presets and activation
end
