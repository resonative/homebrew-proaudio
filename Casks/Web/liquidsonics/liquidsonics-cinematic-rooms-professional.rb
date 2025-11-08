cask "liquidsonics-cinematic-rooms-professional" do
  version "1.3.9"
  sha256 "ebf4efa979737ab15cb6604e0aada01b99102c94e771c1015aaad97dc74cf7dc"

  url "https://downloads.liquidsonics.com/software/cinematic-rooms/mac/Cinematic_Rooms_Professional-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Professional"
  desc "Surround room reverb"
  homepage "https://www.liquidsonics.com/software/cinematic-rooms/"

  auto_updates false

  pkg "Cinematic_Rooms_Professional-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.CinematicRooms.professional.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Cinematic Rooms Professional/Settings.xml"
end
