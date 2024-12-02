cask "d16-decimort" do
  version "2.3.2"
  sha256 "bdd8597a745e49a78bfe40f59c46d1ab5dd600b989b6215ee516de50a7942d58"

  url "https://d16group.s3.amazonaws.com/installers/Decimort2/Decimort2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Decimort 2"
  desc "Bit crusher"
  homepage "https://d16.pl/decimort2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Decimort 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.decimort2",
              "com.d16group.pkg.decimort2-*",
            ],
            delete:  "~/Library/Caches/Decimort2/"

  zap trash: "~/Library/Application Support/D16 Group/Decimort 2/"
  # Will erase user presets and activation
end
