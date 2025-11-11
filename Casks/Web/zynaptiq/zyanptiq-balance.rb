cask "zynaptiq-balance" do
  version "1.0.2"
  sha256 "5da17d5891d3e761ff9c6b92c3bde21a111959af4b7a03122f82c63c9481ff85"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_BALANCE_#{version.no_dots}_Mac.zip"
  name "Zynaptiq BALANCE"
  desc "Adaptive EQ"
  homepage "https://www.zynaptiq.com/balance/"

  auto_updates false

  pkg "Zynaptiq BALANCE #{version} Plug-In.pkg",
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
    "com.zynaptiq.pkg.balance1",
    "com.zynaptiq.pkg.balance1.*",
  ]
end
