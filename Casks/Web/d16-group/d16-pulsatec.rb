cask "d16-pulsatec" do
  version "1.0.0"
  sha256 "1b7b06d0a4c4d0d63f008dacb8d0b9462c94bbc63c82a93ed77cfe6f5d16f441"

  url "https://d16group.s3.amazonaws.com/installers/Pulsatec/Pulsatec-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Pulsatec"
  desc "Pultec EQ emulation"
  homepage "https://d16.pl/pulsatec"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Pulsatec - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.pulsatec",
              "com.d16group.pkg.pulsatec-*",
            ],
            delete:  "~/Library/Caches/Pulsatec/"

  zap trash: "~/Library/Application Support/D16 Group/Pulsatec/"
  # Will erase user presets and license key
end
