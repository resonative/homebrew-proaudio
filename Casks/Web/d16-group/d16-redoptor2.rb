cask "d16-redophor2" do
  version "2.2.2"
  sha256 "be011f615fadb08f4f659964fcb488e5d1d8c39310a24eeebfb19a68a4d8b322"

  url "https://d16group.s3.amazonaws.com/installers/Redoptor2/Redoptor2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Redoptor 2"
  desc "Tube distortion"
  homepage "https://d16.pl/redoptor2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Redoptor 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.redoptor2",
              "com.d16group.pkg.redoptor2-*",
            ],
            delete:  "~/Library/Caches/Redophor2/"

  zap trash: "~/Library/Application Support/D16 Group/Redophor 2/"
  # Will erase user presets and activation
end
