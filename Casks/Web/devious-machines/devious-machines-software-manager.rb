cask "devious-machines-software-manager" do
  version "1.1.2"
  sha256 "173ae4c84add4b4264da8f2a58b9658e07af677b21e5702eb2cd8868704dafb3"

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
              "~/Library/Caches/com.deviousmachines.downloader/",
              "~/Library/Caches/Devious Machines Software Manager/",
              "~/Library/HTTPStorages/com.deviousmachines.downloader/",
              "~/Library/Saved Application State/com.deviousmachines.downloader.savedState",
            ]
end
