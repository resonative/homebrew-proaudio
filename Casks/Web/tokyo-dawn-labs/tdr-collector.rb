cask "tdr-collector" do
  version "1.0.8"
  sha256 "9dc05aac637c3505870d5d7e99bed96efb446d6c9f0c399f65e23cbba6d34667"
       
  url "https://www.tokyodawn.net/labs/Collector/#{version}/TDR%20Collector%20Mac.zip"
  name "TDR Collector"
  desc "Tokyo Dawn Labs software manager"
  homepage "https://www.tokyodawn.net/tdr-collector/"

  livecheck do
    cask "tdr-collector"
  end

  auto_updates true

  pkg "TDR Collector.pkg"

  uninstall quit:    "com.TokyoDawnLabs.TDRCollector",
            pkgutil: "com.TokyoDawnLabs.TDRCollector",
            delete:  [
              "~/Library/Caches/com.TokyoDawnLabs.TDRCollector/",
              "~/Library/HTTPStorages/com.TokyoDawnLabs.TDRCollector/",
            ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Collector/"
end
