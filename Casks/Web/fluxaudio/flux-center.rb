cask "flux-center" do
  version "25.11.0.50527"
  sha256 "171e3af8a2ae75a9ffa9583eacf392e705b60a1f76b90ac23e92de25605b17bd"

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
