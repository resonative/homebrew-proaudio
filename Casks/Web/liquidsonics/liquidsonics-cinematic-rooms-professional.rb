cask "liquidsonics-cinematic-rooms-professional" do
  version "1.3.5"
  sha256 "7c4ee6c8381d4d762f12ac6d0e94f048a330fcc9c06291dc17a6547600133814"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/cinematic-rooms/mac/Cinematic_Rooms_Professional-v#{version}-macOS.pkg"
  name "LiquidSonics Cinematic Rooms Professional"
  desc "Surround room reverb"
  homepage "https://www.liquidsonics.com/software/cinematic-rooms/"

  auto_updates false

  pkg "Cinematic_Rooms_Professional-v#{version}-macOS.pkg"

  uninstall pkgutil: "com.liquidsonics.pkg.CinematicRooms.professional.*"

  zap delete: "~/Library/Application Support/LiquidSonics/Cinematic Rooms Professional/Settings.xml"
end
