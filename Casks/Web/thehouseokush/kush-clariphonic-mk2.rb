cask "kush-clariphonic-mk2" do
  version "1.4.3"
  sha256 :no_check

  url "https://thedataofkush.com/installers/Clariphonic-DSP-MKII_Mac.zip",
      verified: "thedataofkush.com/"
  name "Kush Audio Clariphonic Mk2"
  desc "Hardware EQ emulation"
  homepage "https://thehouseofkush.com/products/clariphonic-dsp-mkii"

  pkg "Clariphonic DSP MKII_v#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: [
    "com.kush.pkg.ClariphonicAAX",
    "com.kush.pkg.ClariphonicAU",
    "com.kush.pkg.ClariphonicVST-1",
  ]

  zap trash: "/Library/Application Support/Kush Audio/Clariphonic DSP mkii/"
end
