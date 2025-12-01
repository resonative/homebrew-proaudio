cask "zynaptiq-intensity" do
  version "2.0.0"
  sha256 "83d3aa39841cef574d8d8006129e64c12fe40c372c6a1b2a9ad1cb281254f61e"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_INTENSITY_#{version.no_dots}_Mac.zip"
  name "Zynaptiq INTENSITY"
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

  # postflight do
  #   # Close windows that were automatically opened at the end of install (pkg postscript)
  #   system_command "osascript",
  #                  args: [
  #                     "-e", "tell application \"Finder\" to close "\
  #                     "(first window whose name is \"Zynaptiq Plug-In Support\")",
  #                     "-e", "tell application \"Preview\" to close "\
  #                     "(first window whose name is \"Zynaptiq INTENSITY 2 Manual.pdf\")",
  #                  ],
  #                  sudo: false
  # end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.intensity2",
    "com.zynaptiq.pkg.intensity2.*",
  ]
end
