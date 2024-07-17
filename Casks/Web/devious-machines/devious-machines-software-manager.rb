cask "devious-machines-software-manager" do
  version "1.0.7"
  sha256 "4c6743733288911c3d748ed3201b722085cb29f18e877fb7475a7ac1efc082c0"

  url "https://deviousmachines.com/dm_builds/dmsm/Devious%20Machines%20Software%20Manager%20v#{version}%20Mac.dmg"
  name "Devious Machines Software Manager"
  desc "Devious Machines plugins install"
  homepage "https://deviousmachines.com/downloads/"

  livecheck do
    cask "devious-machines-software-manager" # improve this next version
  end

  auto_updates false
  depends_on macos: ">= :el_capitan"

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
