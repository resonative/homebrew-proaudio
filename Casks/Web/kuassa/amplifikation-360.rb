cask "amplifikation-360" do
  version "1.3.4"
  sha256 "d412ff7f2d59fbb88e3f263f3cbbf73596580ac7bf2e437abdca0d34bfb2ff6b"

  url "https://www.kuassa.com/?dl_id=1053"
  name "Kuassa Amplifikation 360"
  desc "Guitar Effects plugin suite"
  homepage "https://www.kuassa.com/products/amplifikation-360/"

  auto_updates false

  pkg "Amplifikation360_#{version.delete(".")}_Mac.pkg"

  uninstall quit:    "com.kuassa.Amplifikation360",
            pkgutil: "com.kuassa.pkg.Amplifikation360*"

  zap trash: [
    "~/Library/Application Support/Kuassa/Amplifikation360.settings",
    "~/Music/Kuassa/Presets/Amplifikation360/",
    "~/Music/Kuassa/Settings/Amplifikation360.setting",
  ]
end
