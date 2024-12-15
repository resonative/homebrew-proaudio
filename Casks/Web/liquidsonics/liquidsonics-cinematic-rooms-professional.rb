cask "liquidsonics-cinematic-rooms-professional" do
  version "1.3.1"
  sha256 "63451c35b1cbb93fc16ba6d77af1d5b9e010a00e3ea14e67ec16d0f8021da6a5"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/cinematic-rooms/mac/Cinematic_Rooms_Professional-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Professional"
  desc "Surround room reverb"
  homepage "https://www.liquidsonics.com/software/cinematic-rooms/"

  auto_updates false

  pkg "Cinematic_Rooms_Professional-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.CinematicRooms.professional.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Cinematic Rooms Professional/Settings.xml"
end
