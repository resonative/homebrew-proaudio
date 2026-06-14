cask "amplifikation-360" do
  version "1.3.5"
  sha256 "6aa087823900c8b06f5d8f46bbd1a7185e4cbca86f96ae69deeb6fcddfeb75fa"

  url "https://www.kuassa.com/?dl_id=1062"
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
