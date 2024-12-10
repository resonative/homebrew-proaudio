cask "zynaptiq-pitchmap-colors" do
  version "1.0.1"
  sha256 "db89bdce346969f348623010b196b272b51d7066de44556f3cf2798033f649a1"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_PITCHMAP_COLORS_#{version.no_dots}_Mac.zip"
  name "Zyantpiq PITCHMAP COLORS"
  desc "Polyphonic pitch shifter in mixed signal"
  homepage "https://www.zynaptiq.com/pitchmapcolors/"

  auto_updates false

  pkg "Zynaptiq PITCHMAP COLORS #{version} Plug-In.pkg",
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
                      "(first window whose name is \"Documentation\")"
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.pitchmapColors",
    "com.zynaptiq.pkg.pitchmapColors.*",
  ]
end
