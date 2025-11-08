cask "d16-nepheton" do
  version "2.0.3"
  sha256 "7cf219dfa2dc20f3bbbfe48df7e400d1424487e5479fb186822efd97bc353f6d"

  url "https://d16group.s3.amazonaws.com/installers/Nepheton2/Nepheton2-#{version}.dmg",
      verified: "d16group.s3.amazonaws.com/"
  name "D16 Group Nepheton 2"
  desc "808 drum machine emulation"
  homepage "https://d16.pl/nepheton2"

  auto_updates false

  pkg "Nepheton 2 - #{version}.pkg"

  uninstall pkgutil: [
              "com.d16group.pkg.nepheton2",
              "com.d16group.pkg.nepheton2-*",
            ],
            delete:  "~/Library/Caches/Nepheton2/"

  zap trash: "~/Library/Application Support/D16 Group/Nepheton 2/"
  # Will erase user presets and activation
end
