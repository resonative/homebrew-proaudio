cask "sine-player" do
  version "1.3.3.1181"
  sha256 "369a00a7dc26309e69ff25effad60eaa6f5e5ad8421a0fdb27b6ffbed56976ab"

  url "https://orchtools-installers-dl.s3.eu-central-1.amazonaws.com/SINE_Player_#{version}.pkg",
      verified: "orchtools-installers-dl.s3.eu-central-1.amazonaws.com/"
  name "SINE Player"
  desc "Orchestral Tools sample downloader, manager and plugin"
  homepage "https://www.orchestraltools.com/get-sine"

  pkg "SINE_Player_#{version}.pkg"

  uninstall quit:    "com.orchestraltools.sineplayer.standalone",
            pkgutil: "com.Orchestral Tools.SINE Player Setup*",
            delete:  "~/Library/Caches/com.orchestraltools.sineplayer.standalone/"

  zap trash: [
    "~/Library/HTTPStorages/com.orchestraltools.sineplayer.standalone/",
    "~/Library/HTTPStorages/com.orchestraltools.sineplayer.standalone.binarycookies",
    "~/Library/Preferences/com.orchestraltools.sineplayer.standalone.plist",
    "~/Library/WebKit/com.orchestraltools.sineplayer.standalone",
    
  ]

  caveats "Delete ~/Library/Application Support/Orchestral Tools/SINE Player/\n" \
          "folder content manually after reviewing their use:\n" \
          "https://orchestraltools.helpscoutdocs.com/article/332-the-sine-player-data-folder"
end
