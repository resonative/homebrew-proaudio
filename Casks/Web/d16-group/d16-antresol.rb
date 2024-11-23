cask "d16-antresol" do
  version "1.3.2"
  sha256 "47eb9f0b7113deb57899ce3771a98eee8bdd6fb5eaea67ca8fe10b6eac1ba0b3"

  url "https://d16group.s3.amazonaws.com/installers/Antresol/Antresol-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Antresol"
  desc "BBD stereo flanger"
  homepage "https://d16.pl/antresol"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Antresol - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.antresol",
              "com.d16group.pkg.antresol-*",
            ],
            delete:  "~/Library/Caches/Antresol/"


  zap trash: "~/Library/Application Support/D16 Group/Antresol/"
  # Will erase user presets and activation
end
