cask "izotope-symphony-3d" do
  version "3.2.0"
  sha256 "00f40a0ca9355dafc76ded7005082e362fdddd8c8af535367b3956bc9ba16e91"

  url "https://downloads.izotope.com/product_download/iZotope_Symphony3D_v#{version.dots_to_underscores}.dmg"
  name "Izotope Symphony 3D"
  desc "Flexible multichannel reverb from Exponential Audio"
  homepage "https://www.izotope.com/en/shop/symphony-3d/"

  auto_updates false
  depends_on macos: ">= :monterey"

  installer script: {
    executable: "Install Symphony3D.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Library/Application Support/ExponentialAudio/Symphony3D/Uninstall Symphony3D.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
