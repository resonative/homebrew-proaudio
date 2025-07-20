cask "tracktion-download-manager" do
  version "1.5.3"
  sha256  "ab5fc8fd8ffca24ad0ba9ba0d26928485064939d0758dc062eda73b8928dec2d"

  url "https://cdn.tracktion.com/file/tracktiondownload/download-mgr/153/tracktion_download_manager_v#{version}.pkg"
  name "Tracktion Download Manager"
  desc "Product manager/downloader for Tracktion products"
  homepage "https://tracktion.com/"

  pkg "tracktion_download_manager_v#{version}.pkg"

  uninstall quit:    "com.tracktion.DownloadManager",
            pkgutil: "com.tracktion.downloadmanager.pkg",
            delete:  [
              "~/Library/Caches/com.tracktion.DownloadManager",
              "~/Library/Caches/Tracktion Download Manager/",
            ]

  zap delete: [
    "~/Library/HTTPStorages/com.tracktion.DownloadManager.binarycookies",
    "~/Library/HTTPStorages/com.tracktion.DownloadManager/",
  ]
end
