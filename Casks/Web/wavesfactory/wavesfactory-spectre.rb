cask "wavesfactory-spectre" do
  version "1.5.6"
  sha256 "b82cfeacdb5aef963b83f742f5c8c4b4de5f77def2f8f7de4c33a5e8e9a4d8bf"

  url "https://spectre-wavesfactory.s3.amazonaws.com/installers/Spectre%20#{version}.pkg",
      verified: "spectre-wavesfactory.s3.amazonaws.com/"
  name "Wavesfactory Spectre"
  desc "Parallel EQ Saturator"
  homepage "https://www.wavesfactory.com/audio-plugins/spectre"

  livecheck do
    cask "wavesfactory-spectre"
  end

  auto_updates false

  pkg "Spectre #{version}.pkg"

  uninstall pkgutil: "com.spectre-*.pkg"
end
