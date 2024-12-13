cask "ghz-common-assets" do
  version "3.11.0-ca3f13b"
  sha256 "8454adcbe76d343a7a5ec68d121cc240f1e263305d1a433b9b361ee796fa9650"

  url "https://downloads.goodhertz.com/Goodhertz-Installer-#{version}.pkg"
  name "Goodhertz Plugins Common Assets"
  desc "Depedency install for all Goodhertz plugins"
  homepage "https://goodhertz.com/downloads/"

  auto_updates false

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
            ]

  uninstall pkgutil: [
    "com.goodhertz.common.assets.3.11.0",
    "com.goodhertz.common.i18n.3.11.0",
    "com.goodhertz.common.superg105_2",
  ]

  zap delete:  "~/Library/Preferences/com.goodhertz.plist"
end
