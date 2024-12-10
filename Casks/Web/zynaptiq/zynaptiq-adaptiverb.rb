cask "zynaptiq-adaptiverb" do
  version "1.4.0"
  sha256 "aa25076c0b21a8b7735ad4922f5ca9958d1fd8add0b1ab6c44b438dad1d3f5b4"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_ADAPTIVERB_#{version.no_dots}_Mac.zip"
  name "Zyantpiq ADAPTIVERB"
  desc "Reverb with sustain synthesis"
  homepage "https://www.zynaptiq.com/adaptiverb/"

  auto_updates false

  pkg "Zynaptiq ADAPTIVERB #{version.major_minor} Plug-In.pkg",
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
                      "-e", "tell application \"Preview\" to close "\
                      "(first window whose name is \"Zynaptiq ADAPTIVERB Manual.pdf\")",
                      "-e", "tell application \"Finder\" to close "\
                      "(first window whose name is \"Zynaptiq Plug-In Support\")"
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.AdaptiverbMultiplatform",
    "com.zynaptiq.pkg.AdaptiverbMultiplatform.*",
  ]
end
