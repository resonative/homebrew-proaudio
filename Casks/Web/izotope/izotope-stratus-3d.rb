cask "izotope-stratus-3d" do
  version "3.2.0"
  sha256 "d964be5ab473a26627b85b4c7e9e626a9da1a836feb583d5a3ded2b90fabfd32"

  url "https://downloads.izotope.com/product_download/iZotope_Stratus3D_v#{version.dots_to_underscores}.dmg"
  name "Izotope Stratus 3D"
  desc "Flexible multichannel reverb from Exponential Audio"
  homepage "https://www.izotope.com/en/shop/stratus-3d/"

  auto_updates false
  depends_on macos: ">= :monterey"

  installer script: {
    executable: "Install Stratus3D.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Library/Application Support/ExponentialAudio/Stratus3D/Uninstall Stratus3D.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
