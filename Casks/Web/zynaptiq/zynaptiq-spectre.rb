cask "zynaptiq-spectre" do
  # this is the combined installer version; App version is different
  version "2.1.2"
  sha256 "2ba515bf3c3b3aa86f0777c59b2060603a12c8bb837a862628ac75bddee650d8"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_Mac_Audio_Apps_#{version.no_dots}.zip"
  name "Zynaptiq SPECTRE"
  desc "Real-time audio analysis/visualizer"
  homepage "https://www.zynaptiq.com/spectre/"

  auto_updates true

  pkg "Zynaptiq_Mac_Audio_Apps_#{version.no_dots}.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # TRIUMPH
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_2", # MYRIAD
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_3", # SPECTRE
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_4", # LOOP EDITOR
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_5", # WORMHOLE
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_7", # iLok
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall_postflight do
    puts "Please remove the folder \e[0;34m/Applications/Zynaptiq SPECTRE/\e[0m manually."
  end

  uninstall pkgutil: "com.zynaptiq.pkg.spectre1"

  zap trash: [
    "~/Library/Application Support/Zynaptiq SPECTRE 1/",
    "~/Library/HTTPStorages/com.zynaptiq.spectre1/",
    "~/Library/Preferences/com.zynaptiq.spectre1.plist",
  ]
end
