cask "zynaptiq-orange-vocoder" do
  version "4.0.5"
  sha256 "27b1039e1c31b807d0c8f990e5bc25d59899b869e5fbe9eb4390be63a1636f2a"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_ORANGE_VOCODER_#{version.no_dots}_Mac.zip"
  name "Zyantpiq ORANGE VOCODER"
  desc "Vocoder with multiple models"
  homepage "https://www.zynaptiq.com/orangevocoder/"

  auto_updates false

  pkg "Zynaptiq ORANGE VOCODER #{version} Plug-In.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # ilok license manager
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  postflight do
    # Close windows that were automatically opened at the end of install (pkg postscript)
    system_command "osascript",
                   args: [
                      "-e", "tell application \"Finder\" to close "\
                      "(first window whose name is \"Zynaptiq Plug-In Support\")",
                      "-e", "tell application \"Finder\" to close "\
                      "(first window whose name is \"Documentation\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.orangeVocoder",
    "com.zynaptiq.pkg.orangeVocoder.*",
  ]
end
