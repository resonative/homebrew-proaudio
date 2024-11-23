cask "d16-toraverb2" do
  version "2.2.2"
  sha256 "4775da738f1f35c97d3c5dbcede234ad44b143dae4ea88ebda7937adbfb00550"

  url "https://d16group.s3.amazonaws.com/installers/Toraverb2/Toraverb2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Toraverb 2"
  desc "Algorithmic reverb"
  homepage "https://d16.pl/toraverb2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Toraverb 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.toraverb2",
              "com.d16group.pkg.toraverb2-*",
            ],
            delete:  "~/Library/Caches/Toraverb2/"

  zap trash: "~/Library/Application Support/D16 Group/Toraverb 2/"
  # Will erase user presets and license key
end
