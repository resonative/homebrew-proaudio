cask "valhalla-spacemodulator" do
  version "1.2.8"
  sha256 "12033f7f35e97e6e06e3852e42f50caff17165bc6e79696d6837d61b34858598"

  url "https://valhallaproduction.s3.us-west-2.amazonaws.com/spacemod/ValhallaSpaceModulatorOSX_#{version.dots_to_underscores}.dmg"
  name "Valhalla Space Modulator"
  desc "Flanger audio plugin"
  homepage "https://valhalladsp.com/shop/modulation/valhalla-space-modulator/"

  livecheck do
    cask "valhalla-spacemodulator"
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  pkg "ValhallaSpaceModulatorOSX.pkg"

  uninstall pkgutil: "com.valhalladsp.SpaceModulator.pkg.*"

end