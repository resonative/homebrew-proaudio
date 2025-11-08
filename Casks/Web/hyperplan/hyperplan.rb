cask "hyperplan" do
  version "2.10.7"
  sha256 "77a1bda4ca1f19b517d9d2fbf5dcfb1faf35fb05369de1d8642977cb52a35c29"

  url "https://www.hyperplan.com/downloads/HyperPlan_#{version.dots_to_underscores}.dmg"
  name "HyperPlan"
  desc "Flexible planning and scheduling visualizer"
  homepage "https://www.hyperplan.com/"

  app "HyperPlan.app"

  uninstall quit: "com.oryxdigital.HyperPlan"
end
