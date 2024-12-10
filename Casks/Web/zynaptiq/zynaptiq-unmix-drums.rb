cask "zynaptiq-unmix-drums" do
  version "1.3.0"
  sha256 "2dda8a8cec9db591f1c5d7ec09574f8dd86a98290f57ef068813b0848f1ba9cd"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_UNMIX_DRUMS_#{version.no_dots}_Mac.zip"
  name "Zyantpiq UNMIX DRUMS"
  desc "Real-time drum separation from mix signal"
  homepage "https://www.zynaptiq.com/unmixdrums/"

  auto_updates false

  pkg "Zynaptiq UNMIX DRUMS #{version.major_minor} Plug-In.pkg",
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
                      "(first window whose name is \"UNMIX DRUMS 1\")",
                      "-e", "tell application \"Preview\" to close "\
                      "(first window whose name is \"Zynaptiq UNMIX DRUMS Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.unmixDrumsMultiplatform",
    "com.zynaptiq.pkg.unmixDrumsMultiplatform.*",
  ]
end
