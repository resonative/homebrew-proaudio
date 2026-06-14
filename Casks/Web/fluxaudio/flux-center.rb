cask "flux-center" do
  version "25.12.0_50538"
  sha256 "83f27bbeabc7bec3dfcb2b6f208fa01e7160675cafe1853d3bfe9a328c086015"

  url "https://dxr8lx7umtdn4.cloudfront.net/Flux/CENTER%20%20INSTALLERS/FluxCenter_Macosx_Installer_%28#{version}%29.dmg"
  name "FLUX Center"
  desc "Plugin installer for FLUX:: Audio products"
  homepage "https://www.flux.audio/download/"

  app "FluxCenter.app"

  uninstall quit: "audio.flux.FluxCenter.app"

  zap delete: [
    "~/Library/Application Support/FLUX/FLUX Center/",
    "~/Library/Application Support/FLUX/FLUX// Center",
  ]
end
