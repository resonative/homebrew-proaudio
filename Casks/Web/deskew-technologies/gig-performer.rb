cask "gig-performer" do
  version "5.0.9"
  sha256 "1cfff954d0bb20915229d1c138405ebe147965c9d2814aa63f123a78a6468b34"

  url "https://gigperformer5.s3.us-east-2.amazonaws.com/GP#{version}/GigPerformer5-Universal-#{version}.dmg",
      verified: "gigperformer5.s3.us-east-2.amazonaws.com/"
  name "Gig Performer"
  desc "Live Performance Audio Plugin Host"
  homepage "https://gigperformer.com/"

  livecheck do
    cask "gig-performer"
  end

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
end
