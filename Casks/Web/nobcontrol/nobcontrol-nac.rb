cask "nobcontrol-nac" do
  version "0.6.2"

  on_arm do
    sha256 "3450d1af1c0b1c0a000eb870d12bf8d2a2debbb7e23e24c9b93a3d3b1c3efdd5"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}-arm64.dmg",
        verified: "github.com/nobcontrol/nac/"
  end
  on_intel do
    sha256 "a2beaaf0e09cf70f565319de1bc8d7768bda74f746d39094029be1888da5fece"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}.dmg",
        verified: "github.com/nobcontrol/nac/"
  end

  name "nOb Assignment center"
  desc "Companion software for nOb Contorl"
  homepage "https://www.nobcontrol.com/nac"

  livecheck do
    cask "nobcontrol-nac"
  end

  auto_updates false

  app "nAc.app"

  uninstall quit:   "com.nobcontrol.nac",
            delete: "~/Library/Saved Application State/com.nobcontrol.nac.savedState/"

  zap trash: [
    "~/Library/Application Support/nac",
    "~/Library/Preferences/com.nobcontrol.nac.plist",
  ]
end
