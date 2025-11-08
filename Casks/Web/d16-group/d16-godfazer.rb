cask "d16-godfazer" do
  version "1.2.3"
  sha256 "6d5bc4586dfffeb831934b3d2e3c90a979d74b855d723a8756c3aa6e66454d5a"

  url "https://d16group.s3.amazonaws.com/installers/Godfazer/Godfazer-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Godfazer"
  desc "Modulation effects"
  homepage "https://d16.pl/godfazer"

  auto_updates false

  pkg "Godfazer - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.godfazer",
              "com.d16group.pkg.godfazer-*",
            ],
            delete:  "~/Library/Caches/Godfazer/"

  zap trash: "~/Library/Application Support/D16 Group/Godfazer/"
  # Will erase user presets and activation
end
