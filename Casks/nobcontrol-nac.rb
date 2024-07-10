cask "nobcontrol-nac" do
  on_arm do
    version "0.5.11-arm64"
    sha256 "f31fd29eda058d3118d76ddea26c837c1175b667e3088fe2f0c3808ce518957f"
  end
  on_intel do
    version "0.5.11"
    sha256 "7ef95eecdc5d5d6d3c2c10106d33ec6f112aaa70c3350fc90b37e9ed277b703b"
  end

  url "https://github.com/nobcontrol/nac/releases/download/v0.5.11/nAc-#{version}.dmg",
      verified: "github.com/nobcontrol/nac/"
  name "nOb Assignment center"
  desc "nOb Control companion software"
  homepage "https://www.nobcontrol.com/nac"

  livecheck do
    cask "nobcontrol-nac"
  end

  auto_updates false

  app "nAc.app"

  uninstall quit: "com.nobcontrol.nac"

  zap trash: [
    "~/Library/Application Support/nac",
    "~/Library/Preferences/com.nobcontrol.nac.plist",
  ]
end
