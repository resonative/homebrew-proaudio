cask "zynaptiq-wormhole" do
  version "1.3.0"
  sha256 "1b5b7bd760069d15c53e63d08c2d9579c3b94dea4888909bd42dc617fcd29bc3"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_WORMHOLE_#{version.no_dots}_Mac.zip"
  name "Zynaptiq WORMHOLE"
  desc "Multi-effect with frequency shifting and spectral warping"
  homepage "https://www.zynaptiq.com/wormhole/"

  auto_updates false

  pkg "Zynaptiq WORMHOLE #{version.major_minor} Plug-In.pkg",
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
                      "(first window whose name is \"Zynaptiq WORMHOLE Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.WormholeMultiplatform",
    "com.zynaptiq.pkg.WormholeMultiplatform.*",
  ]
end
