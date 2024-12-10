cask "zynaptiq-unveil" do
  version "1.9.0"
  sha256 "181847c76a61f38f5cf44e19b15cacb9c66f812c5186956beb218649a6899045"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_UNVEIL_#{version.no_dots}_Mac.zip"
  name "Zynaptiq UNVEIL"
  desc "Real-time reverb attenuation and boosting"
  homepage "https://www.zynaptiq.com/unveil/"

  auto_updates false

  pkg "Zynaptiq UNVEIL #{version.major_minor} Plug-In.pkg",
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
                      "-e", "tell application \"Preview\" to close "\
                      "(first window whose name is \"Zynaptiq UNVEIL Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.UnveilMultiplatform",
    "com.zynaptiq.pkg.UnveilMultiplatform.*",
  ]
end
