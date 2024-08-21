cask "wave-alchemy-dawn" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.wavealchemy.co.uk/product/dawn/?kfd=aHR0cHM6Ly93YXZlLWFsY2hlbXkuczMuYW1hem9uYXdzLmNvbS9kb3dubG9hZHMvbWFpbl9zYW1wbGVzL0Rhd25fTWFjT1Muemlw"

  name "Wave Alchemy Dawn"
  desc "EMT 250 plate reverb"
  homepage "https://www.wavealchemy.co.uk/product/dawn/"

  auto_updates false
  depends_on macos: ">= :sierra"

  pkg "Dawn_MacOS/Dawn Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Radiance*"
end
