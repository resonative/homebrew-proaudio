cask "nobcontrol-nac" do
  version "0.6.3"

  on_arm do
    sha256 "4d30b2e3dddf01b8e8ad374cac9cf663a57963de83cb6257c962797d5f277049"

    url "https://github.com/nobcontrol/nac/releases/download/v#{version}/nAc-#{version}-arm64.dmg",
        verified: "github.com/nobcontrol/nac/"
  end
  on_intel do
    sha256 "8d3ec250eb4c49a82904096f039f6faf5ada1a3bf4c09f9122032f0445a92ef1"

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
