cask "eventide-h3000-factory-mk2" do
  version "1.0.4"
  sha256 "6a8eb2ae4b9ce6e72e74f80f9e5560da23fe43fb13d50a4e50fdd62a44886c17"

  url "https://downloads.eventide.com/audio/installers/plug-ins/H3000FactoryMkII/H3000-Factory-Mk-II-#{version}-osx-installer.dmg",
      verified: "downloads.eventide.com/"
  name "Eventide H3000 Factory Mk II"
  desc "Multi fx"
  homepage "https://www.eventideaudio.com/plug-ins/h3000-factory-mk-ii/"

  auto_updates false

  # Different binary depend on arch
  installer script: {
    executable: "H3000-Factory-Mk-II-1.0.4-osx-installer.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall delete: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Eventide/H3000 Factory Mk II.aaxplugin",
    "/Library/Audio/Plug-Ins/Components/H3000 Factory Mk II.component",
    "/Library/Audio/Plug-Ins/VST/Eventide/H3000 Factory Mk II.vst",
    "/Library/Audio/Plug-Ins/VST3/Eventide/H3000 Factory Mk II.vst3",
    "~/Music/Eventide/H3000 Factory Mk II/H3000 Factory Mk II User Guide.pdf"
  ]
end
