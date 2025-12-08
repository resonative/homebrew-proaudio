cask "forever89-visco" do
  version "2.0.0"
  sha256 "e6bbd84bfa91434f75352fa49efacda24653eccb1976acd3d647245310db44e2"
  
  url "https://forever89.studio/files/Visco_v#{version.dots_to_underscores}_Mac.pkg.zip"
  name "Forever89 Visco"
  desc "Sample modeling drum machine"
  homepage "https://forever89.studio/visco/"

  auto_updates false

  pkg "Visco_v#{version.dots_to_underscores}_Mac.pkg"

  uninstall pkgutil: "com.Forever89.pkg.Visco*"
end
