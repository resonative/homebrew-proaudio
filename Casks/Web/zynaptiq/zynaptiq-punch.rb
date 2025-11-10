cask "zynaptiq-punch" do
  version "1.1.1"
  sha256 "52602efbbe212dedc9d1a07087109f81b799c62591ac2c1f8d2bff6a127ac75d"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_PUNCH_#{version.no_dots}_Mac.zip"
  name "Zynaptiq PUNCH"
  desc "Dynamics conturing"
  homepage "https://www.zynaptiq.com/punch/"

  auto_updates false

  pkg "Zynaptiq PUNCH #{version} Plug-In.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # ilok license manager
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_3", # Zynaptiq_PUNCH_1_Migration_AU.pkg
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
    "com.zynaptiq.pkg.punch1",
    "com.zynaptiq.pkg.punch1.*",
  ]
end
