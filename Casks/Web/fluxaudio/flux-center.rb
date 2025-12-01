cask "flux-center" do
  version "25.03.0.50465"
  sha256 "ea43ac8f6ac2a07a1d8d08265e4b46f893143d8a6efd725fad57a31801bea612"

  url "https://flux-caffeine.s3-accelerate.amazonaws.com/files/Flux/CENTER%20%20INSTALLERS/FluxCenter_Macosx_Installer_%28#{version}%29.dmg"
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
