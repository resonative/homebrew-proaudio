cask "airwindows-consolidated" do
  version "2024-07-14-466079a"
  sha256 "65481e06ae35e61ae8e14e153a1b5989f3e83f858bda8ee8114076cd97cc5a38"

  url "https://github.com/baconpaul/airwin2rack/releases/download/DAWPlugin/airwindows-consolidated-macOS-#{version}.dmg",
      verified: "github.com/baconpaul/airwin2rack/"
  name "Airwindows Consolidated"
  desc "Consolidated airwindows plugin and standalone"
  homepage "https://www.airwindows.com/consolidated/"

  livecheck do
    # Github release use tag "DAWPlugin and commit checksum. Improve this block in future"
    cask "airwindows-consolidated"
  end

  auto_updates false

  pkg "airwindows-consolidated-macOS-#{version}.pkg"

  uninstall quit:    "com.airwindows.all-windows",
            pkgutil: [
              "org.surge-synth-team.airwindows-consolidated.app.pkg",
              "org.surge-synth-team.airwindows-consolidated.clap.pkg",
              "org.surge-synth-team.airwindows-consolidated.component.pkg",
              "org.surge-synth-team.airwindows-consolidated.vst3.pkg",
            ]

  zap trash: "~/Library/Application Support/Airwindows Consolidated.settings"
end
