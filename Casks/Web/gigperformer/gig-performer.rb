cask "gig-performer" do
  version "5.1.1"
  sha256 "adbd136422a03f7a76bd86be63038c1f8796f63a8635062b948e9681f480511d"

  url "https://gigperformer.com/
https://gigperformer5.s3.us-east-2.amazonaws.com/GP#{version}/GigPerformer5-Universal-#{version}.dmg",
      verified: "gigperformer5.s3.us-east-2.amazonaws.com/"
  name "Gig Performer"
  desc "Live Performance Audio Plugin Host"
  homepage "https://gigperformer.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

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

  caveats "This formula does not install LostIn70s VST and TH-U for Gig Performer."
end
