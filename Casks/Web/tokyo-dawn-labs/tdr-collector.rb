cask "tdr-collector" do
  version "1.0.3"
  sha256 "85b60ab3e43e5bb5a8f0946341ec55ce0ac545fbf0912706822a1a28abda5274"

  url "https://www.tokyodawn.net/labs/Collector/#{version}/TDR%20Collector%20Mac.zip?x26827"
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
