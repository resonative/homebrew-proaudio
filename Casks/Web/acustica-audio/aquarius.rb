cask "aquarius" do
  version "2.6.050"
  sha256 :no_check

  url "https://app.box.com/index.php?rm=box_download_shared_file&shared_name=ulbnd7iu184xiahx99ez2qrt5eipcw8d&file_id=f_247358825647",
      verified: "app.box.com/"
  name "aquarius"
  desc "Acustica Audio plugin manager"
  homepage "https://www.acustica-audio.com/pages/plugins-installation"

  auto_updates true

  pkg "Setup Aquarius #{version} macOS.pkg",
      choices: [
        {
          "choiceIdentifier" => "choice1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,

        },
      ]

  uninstall_postflight do
    system_command "security",
                   args: ["-q", "authorizationdb", "remove", "com.acustica.executeScript"],
                   sudo: true
    system_command "security",
                   args: ["-q", "authorizationdb", "remove", "com.acustica.executeCommand"],
                   sudo: true
  end

  uninstall launchctl: "com.acustica.HelperTool",
            quit:      "com.acustica.Aquarius",
            pkgutil:   "acustica.aquarius.com",
            delete: [
              "/Library/PrivilegedHelperTools/com.acustica.HelperTool",
              "~/Library/Caches/com.acustica.Aquarius/",
              "~/Library/HTTPStorages/com.acustica.Aquarius/",
            ]
  caveats "brew uninstall will remove Aquarius.app and supporting files only. User must manually delete installer files (/Stagearea, /temp) (Default: Under \e[36m~/Acustica/\e[0m)"
end
