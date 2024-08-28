cask "wavesfactory-echo-cat" do
  version "1.0.2"
  sha256 "a1270d60aa4a7de9566a30f2e20735c232232c11d0703284af12f542e7e531f5"

  url "https://echocat-wavesfactory.s3.amazonaws.com/installers/Echo%20Cat%20#{version}.pkg",
      verified: "echocat-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Echo Cat"
  desc "Tape echo"
  homepage "https://www.wavesfactory.com/audio-plugins/echo-cat"

  livecheck do
    cask "wavesfactory-echo-cat"
  end

  auto_updates false

  pkg "Echo Cat #{version}.pkg"

  uninstall pkgutil: "com.echo-cat-*.pkg"
end
