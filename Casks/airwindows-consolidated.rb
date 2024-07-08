cask "airwindows-consolidated" do
  version "2024-07-07-e4dcdf5"
  sha256 "a73b5e6847ceefc90d65bfb55bc13eef765d813bbf136b226606279a82452842"

  url "https://github.com/baconpaul/airwin2rack/releases/download/DAWPlugin/airwindows-consolidated-macOS-#{version}.dmg",
      verified: "github.com/baconpaul/airwin2rack/"
  name "Airwindows Consolidated"
  desc "Consolidated airwindows plugin and standalone"
  homepage "https://www.airwindows.com/consolidated/"

  livecheck do
    cask "airwindows-consolidated"
  end

  auto_updates false

  # unsure about supported macos version for the consolidated plugin
  # depends_on macos: ">= :sierra"

  pkg "airwindows-consolidated-macOS-2024-07-07-e4dcdf5.pkg"

  uninstall pkgutil: "org.surge-synth-team.airwindows-consolidated.*.pkg"
end
