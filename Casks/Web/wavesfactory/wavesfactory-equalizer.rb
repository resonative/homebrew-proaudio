cask "wavesfactory-equalizer" do
  version "1.0.1"
  sha256 "a09abe62f98a963a96aa6813038d739ef557344eeb8cf6d8998a305eac45c38d"

  url "https://equalizer-wavesfactory.s3.amazonaws.com/installers/Equalizer%20#{version}.pkg",
      verified: "equalizer-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Equalizer"
  desc "Dynamic tone shaper"
  homepage "https://www.wavesfactory.com/audio-plugins/equalizer"

  livecheck do
    cask "wavesfactory-equalizer"
  end

  auto_updates false

  pkg "Equalizer #{version}.pkg"

  uninstall pkgutil: "com.equalizer-*.pkg"
end
