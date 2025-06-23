cask "liquidsonics-seventh-heaven-professional" do
  version "1.5.4"
  sha256 "81a16c01dabb3fdce7ea764ba44cfa96af883facd01ffe063e5426c53ab94cf3"

  url "https://us-east-1.linodeobjects.com/liquidsonics/software/seventh-heaven-professional/mac/v#{version}/Seventh_Heaven_Professional-Complete_v#{version}-macOS.pkg"
  name "LiquidSonics Seventh Heaven Professional"
  desc "Bircasti M7 emulation IR reverb"
  homepage "https://www.liquidsonics.com/software/seventh-heaven-professional/"

  auto_updates false

  pkg "Seventh_Heaven_Professional-Complete_v#{version}-macOS.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_2", # VST3
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.liquidsonics.seventhHeavenProfessionalV134.Complete.pkg",
    "com.liquidsonics.seventhheavenpro-*.pkg",
  ]

  zap delete: "~/Library/Application Support/LiquidSonics/Seventh Heaven Professional/Settings.xml"
end
