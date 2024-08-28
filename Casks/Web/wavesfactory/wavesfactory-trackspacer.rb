cask "wavesfactory-trackspacer" do
  version "2.5.10"
  sha256 "fa2a4d04cbfe7100a4315215e8d4dfa363183f13c7bb699de8bf4677528d943e"

  url "https://trackspacer-wavesfactory.s3.amazonaws.com/Trackspacer%20#{version}.pkg",
      verified: "trackspacer-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Trackspacer"
  desc "Frequency carving between tracks"
  homepage "https://www.wavesfactory.com/audio-plugins/trackspacer"

  livecheck do
    cask "wavesfactory-trackspacer"
  end

  auto_updates false

  pkg "Trackspacer #{version}.pkg"

  uninstall pkgutil: "com.trackspacer-*.pkg"
end
