cask "dmgaudio-trackcontrol" do
  version "1.13"
  sha256 "f95cda6cf5356d02e7d56aac82c8b9b2921b0d18a8777a143685b0045e473aac"

  url "https://dmgaudio.com/dl/TrackControl_v#{version}/TrackControlMac_v#{version}.zip"
  name "DMGAudio TrackControl"
  desc "Easy Channel Control"
  homepage "https://dmgaudio.com/trackcontrol"

  livecheck do
    cask "dmgaudio-trackcontrol"
  end

  auto_updates false

  pkg "TrackControlMac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.dmgaudio.pkg.TrackControlAAX",
    "com.dmgaudio.pkg.TrackControlAU",
    "com.dmgaudio.pkg.TrackControlResources",
    "com.dmgaudio.pkg.TrackControlVST",
    "com.dmgaudio.pkg.TrackControlVST3",
  ]
end
