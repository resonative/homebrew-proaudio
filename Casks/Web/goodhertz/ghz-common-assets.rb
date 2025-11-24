cask "ghz-common-assets" do
  version "3.13.1-fb6fc78"
  sha256 "b113695b25116a229c5d52e9040338bc10b9a38d20a24b5b2dac82bba4e58930"

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
