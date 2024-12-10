cask "zynaptiq-unchirp" do
  version "1.2.0"
  sha256 "bca81745142e4a1a2d083841f33ccf9d07d774b6b7d5ae5d3a59874b8df5adab"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_UNCHIRP_#{version.no_dots}_Mac.zip"
  name "Zynaptiq UNCHIRP"
  desc "Lossy audio artifact and spectral artifact removal"
  homepage "https://www.zynaptiq.com/unchirp/"

  auto_updates false

  pkg "Zynaptiq UNCHIRP #{version.major_minor} Plug-In.pkg",
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
                      "(first window whose name is \"Zynaptiq UNCHIRP Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.UnchirpMultiplatform",
    "com.zynaptiq.pkg.UnchirpMultiplatform.*",
  ]
end
