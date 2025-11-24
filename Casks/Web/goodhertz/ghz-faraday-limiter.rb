cask "ghz-faraday-limiter" do
  version "3.13.1-fb6fc78"
  sha256 "b113695b25116a229c5d52e9040338bc10b9a38d20a24b5b2dac82bba4e58930"

  url "https://downloads.goodhertz.com/Goodhertz-Installer-#{version}.pkg"
  name "Goodhertz Faraday Limiter"
  desc "Audio limiter with transformer saturation"
  homepage "https://goodhertz.com/faraday-lim/"

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
          "choiceIdentifier" => "com.goodhertz.pkg.FL3X-AAX",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.FL3X-AU",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.FL3X-VST",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.goodhertz.pkg.FL3X-VST3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "com.goodhertz.pkg.FL3X-*"

  zap delete:  "~/Library/Preferences/com.goodhertz.0007.plist"
end
