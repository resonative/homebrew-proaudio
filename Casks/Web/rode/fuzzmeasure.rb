cask "fuzzmeasure" do
  version "4.2.2,39"
  sha256 "f27001ede963ba741ce04d9709dc0715b6696863dadac0187893145f15e637b5"

  url "https://downloads.rodetest.com/fuzzmeasure/FuzzMeasure-#{version.csv.second}.zip"

  name "FuzzMeasure"
  desc "Audio measurement"
  homepage "https://www.rodetest.com/"

  app "FuzzMeasure.app"

  uninstall quit:   "com.supermegaultragroovy.fuzzmeasure4.mac"

  zap trash: [
    "~/Library/Application Scripts/com.supermegaultragroovy.fuzzmeasure4.mac/",
    "~/Library/Containers/com.supermegaultragroovy.fuzzmeasure4.mac/",
  ]
end
