cask "d16-nithonat" do
  version "2.0.1"
  sha256 "9572fcea6fc029822bdc19d68185f751fa5c403f41d590bd7a3309b19ec19fe7"

  url "https://d16group.s3.amazonaws.com/installers/Nithonat2/Nithonat2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Nithonat 2"
  desc "606 drum machine emulation"
  homepage "https://d16.pl/nithonat2"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  pkg "Nithonat 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.nithonat2",
              "com.d16group.pkg.nithonat2-*",
            ],
            delete:  "~/Library/Caches/Nithonat2/"

  zap trash: "~/Library/Application Support/D16 Group/Nithonat 2/"
  # Will erase user presets and activation
end
