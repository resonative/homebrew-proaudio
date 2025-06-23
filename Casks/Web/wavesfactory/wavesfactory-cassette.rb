cask "wavesfactory-cassette" do
  version "1.0.7"
  sha256 "3db9be01a663ce279f2d6ca9842bacf0155bef044cc6d2119650ec3002a04444"

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
