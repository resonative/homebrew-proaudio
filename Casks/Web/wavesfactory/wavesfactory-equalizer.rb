cask "wavesfactory-equalizer" do
  version "1.0.2"
  sha256 "74a1ba06e338367b642012ab6b4fa0f310a7ac66f0159f4f32164c95d8748a86"

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
