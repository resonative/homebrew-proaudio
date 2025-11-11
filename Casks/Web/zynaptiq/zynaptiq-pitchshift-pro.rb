cask "zynaptiq-pitchshift-pro" do
  version "1.2.2"
  sha256 "c6bc223a3d0c4c5ff949eb37b8311030fba30abd66f0786c917c7e0e99a1553c"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_PITCHSHIFT_PRO_#{version.no_dots}_Mac.zip"
  name "Zynaptiq PITCHSHIFT PRO"
  desc "Pitch shift plug-in"
  homepage "https://www.zynaptiq.com/pitchshift/"

  auto_updates false

  pkg "Zynaptiq PITCHSHIFT PRO #{version} Plug-In.pkg",
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
    "com.zynaptiq.pkg.pitchshiftPro1",
    "com.zynaptiq.pkg.pitchshiftPro1.*",
  ]
end
