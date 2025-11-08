cask "d16-pulsatec" do
  version "1.1.0"
  sha256 "a82e04ae7e287b33c1bd62581ffe10458c54718366a0f81908a218dec84af7b4"

  url "https://d16group.s3.amazonaws.com/installers/Pulsatec/Pulsatec-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Pulsatec"
  desc "Pultec EQ emulation"
  homepage "https://d16.pl/pulsatec"

  auto_updates false

  pkg "Pulsatec - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.pulsatec",
              "com.d16group.pkg.pulsatec-*",
            ],
            delete:  "~/Library/Caches/Pulsatec/"

  zap trash: "~/Library/Application Support/D16 Group/Pulsatec/"
  # Will erase user presets and license key
end
