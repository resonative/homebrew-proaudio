cask "zynaptiq-intensity" do
  version "1.4.0"
  sha256 "c035d03aae6dfd02552eb9e3ea699f4ccf5f8e917fb878e8b0feb95e65d76103"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_INTENSITY_#{version.no_dots}_Mac.zip"
  name "Zyantpiq INTENSITY"
  desc "Loudness enhancer"
  homepage "https://www.zynaptiq.com/intensity/"

  auto_updates false

  pkg "Zynaptiq INTENSITY #{version.major_minor} Plug-In.pkg",
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
                      "(first window whose name is \"Zynaptiq INTENSITY Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.intensityMultiplatform",
    "com.zynaptiq.pkg.intensityMultiplatform.*",
  ]
end
