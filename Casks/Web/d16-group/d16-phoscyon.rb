cask "d16-phoscyon" do
  version "2.1.0"
  sha256 "6f69782a10e9d905d6b09fcfd108d72ccedf2f13c96db72870743086fa7c9e8d"

  url "https://d16group.s3.amazonaws.com/installers/Phoscyon2/Phoscyon2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Phoscyon 2"
  desc "303 bass synthesizer emulation"
  homepage "https://d16.pl/phoscyon2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Phoscyon 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.phoscyon2",
              "com.d16group.pkg.phoscyon2-*",
            ],
            delete:  "~/Library/Caches/Phoscyon2/"

  zap trash: "~/Library/Application Support/D16 Group/Phoscyon 2/"
  # Will erase user presets and activation
end
