cask "liquidsonics-seventh-heaven-professional" do
  version "1.5.8"
  sha256 "9ff27d6fe2708b08b42103a8da968bb38b5e5f0eb0c983ca93817999084065c4"

  url "https://downloads.liquidsonics.com/software/seventh-heaven-professional/mac/v1.5.8/Seventh_Heaven_Professional-Complete_v#{version}-macOS.pkg"
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
