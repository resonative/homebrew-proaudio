cask "wavealchemy-radiance" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.wavealchemy.co.uk/product/radiance/?kfd=aHR0cHM6Ly93YXZlLWFsY2hlbXkuczMuYW1hem9uYXdzLmNvbS9kb3dubG9hZHMvbWFpbl9zYW1wbGVzL1JhZGlhbmNlX01hY09TLnppcA=="
  name "Wave Alchemy Radiance"
  desc "EMT 140 plate reverb"
  homepage "https://www.wavealchemy.co.uk/product/radiance/"

  auto_updates false
  depends_on macos: ">= :sierra"

  pkg "Radiance_MacOS/Radiance Installer #{version}.pkg"

  uninstall pkgutil: "com.wavealchemy.pkg.Radiance*"
end
