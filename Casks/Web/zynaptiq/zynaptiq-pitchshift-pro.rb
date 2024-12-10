cask "zynaptiq-pitchshift-pro" do
  version "1.2.0"
  sha256 "ed1984e6aff9537fdd352ffba6a50dbf00b59d51eb66a9b4b3e7b11d125f24fd"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_PITCHSHIFT_PRO_#{version.no_dots}_Mac.zip"
  name "Zynaptiq PITCHSHIFT PRO"
  desc "Pitch shift plug-in"
  homepage "https://www.zynaptiq.com/pitchshift/"

  auto_updates false

  pkg "Zynaptiq PITCHSHIFT PRO #{version.major_minor} Plug-In.pkg",
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
