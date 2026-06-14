cask "klevgrand-helper" do
  version "1.0.12"
  sha256 "61a238b52572236733a896a27bfd3274db74d2d915aee3e1de0cb95fa6e29d76"

  url "https://publicdata.b-cdn.net/Klevgrand_Helper_#{version.dots_to_underscores}.dmg"
  name "Klevgrand Helper"
  desc "Klevgrand plugins install manager"
  homepage "https://klevgrand.com/helper"

  auto_updates true

  app "Klevgrand Helper.app"

  uninstall launchctl: "com.Klevgrand.Helper.PrivTool",
            quit:      "com.Klevgrand.Helper",
            delete:    [
              "~/Library/Caches/com.Klevgrand.Helper/",
              "~/Library/HTTPStorages/com.Klevgrand.Helper/",
            ]
end
