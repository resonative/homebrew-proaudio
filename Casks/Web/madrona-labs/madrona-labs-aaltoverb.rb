cask "madrona-labs-aaltoverb" do
  version "2.0.3"
  sha256 "21d56ab4fa91ee77fbda8223936b23e8c6a2ad761f3dae11e1df38bccea1518b"

  url "https://madronalabs.com/media/aaltoverb/Aaltoverb#{version}.pkg"
  name "Madrona Labs Aaltoverb"
  desc "Reverb plugin with smooth tweakability"
  homepage "https://www.madronalabs.com/products/aaltoverb"

  auto_updates false

  pkg "Aaltoverb#{version}.pkg"

  uninstall pkgutil: [
    "com.madronalabs.AaltoverbAU",
    "com.madronalabs.AaltoverbPatches",
    "com.madronalabs.AaltoverbVST3",
  ]
end
