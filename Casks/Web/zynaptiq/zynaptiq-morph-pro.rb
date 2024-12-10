cask "zynaptiq-morph-pro" do
  version "3.2.1"
  sha256 "9b416d018fe32a0f6eadc58dc0409f107bf5a77b1341167ec50f44e441bb74c8"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_MORPH_3_PRO_#{version.no_dots}_Mac.zip"
  name "Zynaptiq MORPH 3 PRO"
  desc "Real-time audio morphing and style transfer"
  homepage "https://www.zynaptiq.com/morph/"

  auto_updates false

  pkg "Zynaptiq MORPH #{version} PRO Plug-In.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # ilok license manager
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_5", # VST2 by default is disabled
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
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
    "com.zynaptiq.pkg.morph3Pro",
    "com.zynaptiq.pkg.morph3Pro.*",
  ]
end
