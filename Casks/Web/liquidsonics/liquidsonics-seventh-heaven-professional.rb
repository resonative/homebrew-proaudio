cask "liquidsonics-seventh-heaven-professional" do
  version "1.5.2"
  sha256 "6e8e7b7e329e31f3f08f538690e587026f349b4db27e7e52012356a6e85f5370"

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
