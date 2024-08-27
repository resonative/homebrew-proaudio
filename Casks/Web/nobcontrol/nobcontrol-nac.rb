cask "nobcontrol-nac" do
  version "0.5.11"

  on_arm do
    sha256 "f31fd29eda058d3118d76ddea26c837c1175b667e3088fe2f0c3808ce518957f"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}-arm64.dmg",
        verified: "github.com/nobcontrol/nac/"
  end
  on_intel do
    sha256 "7ef95eecdc5d5d6d3c2c10106d33ec6f112aaa70c3350fc90b37e9ed277b703b"

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
