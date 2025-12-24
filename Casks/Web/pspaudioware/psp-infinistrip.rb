cask "psp-infinistrip" do
  version "1.4.1,EARTH"
  sha256 "606e290c8d8ed9aa86df66aa5a5a2b58dd65b806b906a88ea426f8a28fa959ef"

  url "https://download-eu2.pspaudioware.net/PSP_InfiniStrip/OSX/PSP_InfiniStrip_#{version.csv.second}_#{version.csv.first}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP InfiniStrip"
  desc "Zero latency channel Strip"
  homepage "https://www.pspaudioware.com/products/psp-infinistrip"

  auto_updates false

  pkg "PSP_InfiniStrip_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.InfiniStrip.*",
            delete:  "~/Documents/PSPaudioware.com/PSP InfiniStrip/"
end
