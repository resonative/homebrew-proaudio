cask "d16-punchbox" do
  version "1.0.8"
  sha256 "1e457a5e79503b157e34a4c892b4a389f0efcad8ad3c216e85fb58c459f3ebb8"

  url "https://d16group.s3.amazonaws.com/installers/PunchBox/PunchBox-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group PunchBox"
  desc "Bass drum synthesizer"
  homepage "https://d16.pl/punchbox"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Punchbox - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.punchbox",
              "com.d16group.pkg.punchbox-*",
            ],
            delete:  "~/Library/Caches/PunchBox/"

  zap trash: "~/Library/Application Support/D16 Group/PunchBox/"
  # Will erase user presets and activation
end
