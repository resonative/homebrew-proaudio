cask "nembrini-audio-central" do
  version :latest
  sha256 :no_check

  url "https://nembriniaudiodownload.blob.core.windows.net/installer/Central/Nembrini_Audio_Central_Mac.zip",
      verified: "nembriniaudiodownload.blob.core.windows.net/"
  name "Nembrini Audio Cental"
  desc "Nembrini Audio product manager"
  homepage "https://www.nembriniaudio.com/pages/nembrini-audio-central"

  pkg "Nembrini Audio Central.pkg"

  uninstall quit:    "com.NembriniAudio.Central",
            pkgutil: "com.nembriniaudio.pkg.central.app",
            delete:  [
              "~/Library/Caches/com.NembriniAudio.Central/",
              "~/Library/Caches/Nembrini Audio Central/",
              "~/Library/HTTPStorages/com.NembriniAudio.Central/",
            ]

  zap delete: "~/Library/Preferences/com.NembriniAudio.Central.plist"
end
