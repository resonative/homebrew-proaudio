cask "flux-center" do
  version "24.05.0_50377"
  sha256 "ce1905d9673d76ea81b374e23fcd13529edfd8c0859d2159e25c39ac6d5a0ca3"

  url "https://flux-caffeine.s3-accelerate.amazonaws.com/files/Flux/CENTER%20%20INSTALLERS/Flux_FluxCenter_MacOS_Installer_%28#{version}%29.dmg"
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
