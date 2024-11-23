cask "d16-tekturon" do
  version "1.2.2"
  sha256 "68a3f9234e485601e49e862fc4394c09582383fd87631c9ffbc66f784392dd36"

  url "https://d16group.s3.amazonaws.com/installers/Tekturon/Tekturon-#{verion}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Tekturon"
  desc "multi-tap sequenced delay"
  homepage "https://d16.pl/tekturon"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Tekturon - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.tekturon",
              "com.d16group.pkg.tekturon-*",
            ],
            delete:  "~/Library/Caches/Tekturon/"

  zap trash: "~/Library/Application Support/D16 Group/Tekturon/"
  # Will erase user presets and activation
end
