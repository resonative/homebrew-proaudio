cask "wavesfactory-cassette" do
  version "1.0.6"
  sha256 "e71337c07abd8d2318939b8c0d71ea071d8b954e97b96da6413c7b22819c0e2d"

  url "https://cassette-wavesfactory.s3.amazonaws.com/installers/Cassette%20#{version}.pkg",
      verified: "cassette-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Cassette"
  desc "Tape machine emulation"
  homepage "https://www.wavesfactory.com/audio-plugins/cassette"

  livecheck do
    cask "wavesfactory-cassette"
  end

  auto_updates false

  pkg "Cassette #{version}.pkg"

  uninstall pkgutil: "com.cassette-*.pkg"
end
