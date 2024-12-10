cask "zynaptiq-pitchmap" do
  version "1.9.2"
  sha256 "69d040797247a2a3e4db157a4e26d2e66c9f3cacc0d6ba9d87a49a2b610434ae"

  url "https://downloads.zynaptiq.com/updates/Zynaptiq_PITCHMAP_#{version.no_dots}_Mac.zip"
  name "Zyantpiq PITCHMAP"
  desc "Real-time polyphonic pitch shifter for mixed signal"
  homepage "https://www.zynaptiq.com/pitchmap/"

  auto_updates false

  pkg "Zynaptiq PITCHMAP #{version} Plug-In.pkg",
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
                      "(first window whose name is \"Zynaptiq PITCHMAP Manual.pdf\")",
                   ],
                   sudo: false
  end

  uninstall pkgutil: [
    "com.zynaptiq.pkg.pitchmapMultiplatform",
    "com.zynaptiq.pkg.pitchmapMultiplatform.*",
  ]
end
