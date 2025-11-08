cask "nobcontrol-nac" do
  version "0.6.1"

  on_arm do
    sha256 "71dbc5d2ddc8b2b5bda9b1e2128609f23e09ad7aba563625234fa7f0bf456b23"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}-arm64.dmg",
        verified: "github.com/nobcontrol/nac/"
  end
  on_intel do
    sha256 "c36ccecd5f83f5f887c463b86097795db1ec5abe6e0aac218b4f9ead879bf5e1"

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
