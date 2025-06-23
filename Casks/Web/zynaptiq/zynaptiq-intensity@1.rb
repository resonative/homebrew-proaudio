cask "zynaptiq-intensity@1" do
  version "1.4.1"
  sha256 "f5e52931d7683bc9775d44a716ad93639a08e645a33c755155fec22c39fe8a4f"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_INTENSITY_#{version.no_dots}_Mac.zip"
  name "Zynaptiq INTENSITY v1"
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
