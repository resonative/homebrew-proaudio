cask "d16-devastor2" do
  version "2.3.2"
  sha256 "a5a66b8ddb60f55d2f97081dc193dbf1d4fc9f5181c567844176458f6671b434"

  url "https://d16group.s3.amazonaws.com/installers/Devastor2/Devastor2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Devastor 2"
  desc "Multi-band distortion"
  homepage "https://d16.pl/devastor2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Devastor 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.devastor2",
              "com.d16group.pkg.devastor2-*",
            ],
            delete:  "~/Library/Caches/Devastor2/"

  zap trash: "~/Library/Application Support/D16 Group/Devastor 2/"
  # Will erase user presets and activation
end
