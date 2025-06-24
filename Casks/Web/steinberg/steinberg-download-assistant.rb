cask "steinberg-download-assistant" do
  version "1.38.1,b648-7cf9f7b9-ccb0-44e1-b16e-1f1c53be881b"
  sha256 "173a87efac3b0268a6e690bc2fd73cd9b04df1635831b3c1e39de372a0575953"

  url "https://download.steinberg.net/automated_updates/sda-selfupdate/releases/absolute-downloader-#{version.csv.first}-#{version.csv.second}/mac/Steinberg_Download_Assistant_#{version.csv.first}_Installer_mac.dmg"
  name "Steinberg Download Assistant"
  desc "Tool to download files for Steinberg products"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_download_assistant.html"

  livecheck do
    url "https://r.mb.steinberg.net/sda-latest-mac"
    regex(%r{/absolute-downloader-v?(\d+(?:\.\d+)+)-([^/]+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  installer script: {
    executable: "Steinberg Download Assistant Setup.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall quit:    "net.steinberg.elicenser.SteinbergDownloadAssistant",
            script:  {
              executable: "/Applications/Steinberg Download Assistant/Uninstall Steinberg Download Assistant.app/Contents/MacOS/installbuilder.sh",
              args:       ["--mode", "unattended"],
              sudo:       true,
            },
            pkgutil: "com.steinberg.SteinbergInstallAssistant"

  zap trash: [
    "~/Library/Application Support/Steinberg/Download Assistant",
    "~/Library/Logs/Steinberg/Download Assistant",
    "~/Library/Saved Application State/net.steinberg.eLicenser.installer.SteinbergDownloadAssistant.savedState",
    "~/Library/Saved Application State/net.steinberg.elicenser.SteinbergDownloadAssistant.savedState",
  ]
end
