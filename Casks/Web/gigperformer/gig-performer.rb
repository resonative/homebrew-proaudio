cask "gig-performer" do
  version "5.2.2"
  sha256 "0a0071b7ee7fc7c78586681b076bab0fb1bb1380f6c95455103c82f0097abcdb"

  url "https://files.gigperformer.com/GP5Pro/GigPerformer5-Universal-#{version}.dmg"
  name "Gig Performer"
  desc "Live Performance Audio Plugin Host"
  homepage "https://gigperformer.com/"

  auto_updates true

  pkg "Gig Performer #{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_2", # LostIn70s
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_4", # TH-U for Gig Performer 1.4.25 Mac
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_5", # SynthMasterPlayerContentGP
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_6", # SynthMasterPlayerVST3
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall quit:    "com.deskew.gigperformer5",
            pkgutil: [
              "com.deskew.GPRelayer",
              "com.deskew.pkg.GP5",
            ]

  zap trash: [
    "~/Library/Application Support/GigPerformer",
    "~/Library/Caches/com.deskew.gigperformer5",
    "~/Library/Caches/GigPerformer5",
    "~/Library/com.deskew.gigperformer5mac",
    "~/Library/HTTPStorages/com.deskew.gigperformer5",
    "~/Library/Preferences/com.deskew.gigperformer5.plist",
  ]

  caveats "This formula does not install extra contents for Gig Performer."
end
