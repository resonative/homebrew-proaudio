cask "ghz-common-assets" do
  version "3.13.2-a9ef3f6"
  sha256 "980a15d0f758cb7ac970b7d1156049156e6430e4edde5e6c2c437766404247c7"

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
    "com.goodhertz.common.assets.#{version.split("-").first}",
    "com.goodhertz.common.i18n.#{version.split("-").first}",
    "com.goodhertz.common.superg105_3",
  ]

  zap delete:  "~/Library/Preferences/com.goodhertz.plist"
end
