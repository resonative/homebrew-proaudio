cask "zynaptiq-unfilter" do
  version "1.5.0"
  sha256 "2234a67be2be88d0b9a0f0df744151cbbc904a6906019ecd5701e503612a7aad"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_UNFILTER_#{version.no_dots}_Mac.zip"
  name "Zynaptiq UNFILTER"
  desc "Real-time frequency response correction"
  homepage "https://www.zynaptiq.com/unfilter/"

  auto_updates false

  pkg "Zynaptiq UNFILTER #{version.major_minor} Plug-In.pkg",
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
                      "(first window whose name is \"Zynaptiq UNFILTER Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.UnfilterMultiplatform",
    "com.zynaptiq.pkg.UnfilterMultiplatform.*",
  ]
end
