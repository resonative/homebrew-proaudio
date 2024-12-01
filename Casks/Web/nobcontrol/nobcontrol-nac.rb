cask "nobcontrol-nac" do
  version "0.5.13"

  on_arm do
    sha256 "1ec6aed4fc3e4759a784b37ef9554deb6719c213317f0e448bdff237bef5a239"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}-arm64.dmg",
        verified: "github.com/nobcontrol/nac/"
  end
  on_intel do
    sha256 "cc8eef4347d4316b4d255ce41e03ee0d958f360b4b0221d1e2af3d7419e8d188"

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
