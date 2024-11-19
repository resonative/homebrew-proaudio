cask "twistedwave" do
  version :latest
  sha256 :no_check
  
  url "https://twistedwave.com/download/TwistedWave.dmg"
  name "TwistedWave"
  desc "Audio editor"
  homepage "https://twistedwave.com/"

  app "TwistedWave.app"

  uninstall quit:   "com.twistedwave.TwistedWave",
            delete: [
              "~/Library/Caches/com.twistedwave.TwistedWave",
              "~/Library/HTTPStorages/com.twistedwave.TwistedWave",
            ]

  zap trash: [
    "~/Library/Application Support/TwistedWave",
    "~/Library/Preferences/com.twistedwave.TwistedWave.plist",
  ]
end
