cask "ghz-vulf-compressor" do
  version "3.13.2-a9ef3f6"
  sha256 "980a15d0f758cb7ac970b7d1156049156e6430e4edde5e6c2c437766404247c7"

  url "https://downloads.goodhertz.com/Goodhertz-Installer-#{version}.pkg"
  name "Goodhertz Vulf Compressor"
  desc "Vari-mu style compressor inspired by Boss SP-303 compressor algorithm"
  homepage "https://goodhertz.com/vulf-comp/"

  auto_updates false
  depends_on cask: "ghz-common-assets"

  pkg "Goodhertz-Installer-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "AAX",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "AU",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "VST",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "VST3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.VC3X-AAX",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.VC3X-AU",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.VC3X-VST",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.VC3X-VST3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "com.goodhertz.pkg.VC3X-*"

  zap delete:  "~/Library/Preferences/com.goodhertz.0002.plist"
end
