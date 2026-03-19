cask "devious-machines-software-manager" do
  version "1.2.9"
  sha256 "b1592cb17d44c8e7e1f816c6e67f156c91254d89d5b339dd324dbb3586b063aa"

  url "https://deviousmachines.com/dm_builds/dmsm/Devious%20Machines%20Software%20Manager%20v#{version}%20Mac.dmg"
  name "Devious Machines Software Manager"
  desc "Devious Machines plugins install"
  homepage "https://deviousmachines.com/downloads/"

  livecheck do
    cask "devious-machines-software-manager" # improve this next version
  end

  auto_updates false

  app "Devious Machines Software Manager.app"

  uninstall launchctl: "com.deviousmachines.devioushelper",
            quit:      "com.deviousmachines.downloader",
            delete:    [
              "/Library/PrivilegedHelperTools/com.deviousmachines.devioushelper",
              "~/Library/Saved Application State/com.deviousmachines.downloader.savedState",
            ]

  zap delete: [
    "~/Library/Caches/com.deviousmachines.downloader/",
    "~/Library/Caches/Devious Machines Software Manager/",
    "~/Library/HTTPStorages/com.deviousmachines.downloader/",
  ]
end
