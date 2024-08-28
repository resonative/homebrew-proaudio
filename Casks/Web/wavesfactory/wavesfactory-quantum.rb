cask "wavesfactory-quantum" do
  version "1.0.2"
  sha256 "61f1e0538462fc59d73ef33bb75f8af6f47cac5c88f2ff74d482d08fc111af89"

  url "https://quantum-wavesfactory.s3.amazonaws.com/installers/Quantum%20#{version}.pkg",
      verified: "quantum-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Quantum"
  desc "Tape echo"
  homepage "https://www.wavesfactory.com/audio-plugins/quantum"

  livecheck do
    cask "wavesfactory-quantum"
  end

  auto_updates false

  pkg "Quantum #{version}.pkg"

  uninstall pkgutil: "com.quantum-*.pkg"
end
