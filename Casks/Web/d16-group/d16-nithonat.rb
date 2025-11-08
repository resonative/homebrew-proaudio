cask "d16-nithonat" do
  version "2.0.2"
  sha256 "df78a8a61c99bfb3db8c51126e575939f6da99b31c4a244f16821c380b8dda1f"

  url "https://d16group.s3.amazonaws.com/installers/Nithonat2/Nithonat2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Nithonat 2"
  desc "606 drum machine emulation"
  homepage "https://d16.pl/nithonat2"

  auto_updates false

  pkg "Nithonat 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.nithonat2",
              "com.d16group.pkg.nithonat2-*",
            ],
            delete:  "~/Library/Caches/Nithonat2/"

  zap trash: "~/Library/Application Support/D16 Group/Nithonat 2/"
  # Will erase user presets and activation
end
