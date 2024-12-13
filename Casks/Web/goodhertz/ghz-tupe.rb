cask "ghz-tupe" do
  version "3.11.0-ca3f13b"
  sha256 "8454adcbe76d343a7a5ec68d121cc240f1e263305d1a433b9b361ee796fa9650"

  url "https://downloads.goodhertz.com/Goodhertz-Installer-#{version}.pkg"
  name "Goodhertz Tupe"
  desc "Tupe and tape saturation emulation"
  homepage "https://goodhertz.com/tupe/"

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
                "choiceIdentifier" => "com.goodhertz.pkg.TP3X-AAX",
                "choiceAttribute"  => "selected",
                "attributeSetting" => 1,
              },
              {
                "choiceIdentifier" => "com.goodhertz.pkg.TP3X-AU",
                "choiceAttribute"  => "selected",
                "attributeSetting" => 1,
              },
              {
                "choiceIdentifier" => "com.goodhertz.pkg.TP3X-VST",
                "choiceAttribute"  => "selected",
                "attributeSetting" => 1,
              },
              {
                "choiceIdentifier" => "com.goodhertz.pkg.TP3X-VST3",
                "choiceAttribute"  => "selected",
                "attributeSetting" => 1,
              },
            ]

  uninstall pkgutil: "com.goodhertz.pkg.TP3X-*"

  zap delete:  "~/Library/Preferences/com.goodhertz.0047.plist"
end
