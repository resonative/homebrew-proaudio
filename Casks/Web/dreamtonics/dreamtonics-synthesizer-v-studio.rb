cask "dreamtonics-synthesizer-v-studio" do
  version :latest
  sha256 :no_check

  url "https://download.dreamtonics.com/svstudio2/svstudio2-pro-setup-latest.pkg"
  name "Dreamtonics Synthesizer V Studio"
  desc "Synthesized voice production"
  homepage "https://dreamtonics.com/"

  auto_updates false

  pkg "svstudio2-pro-setup-latest.pkg"

  uninstall quit:    "com.dreamtonics.svstudio2.pro",
            pkgutil: "com.dreamtonics.svstudio2.*",
            delete:  [
              "~/Library/Caches/com.dreamtonics.svstudio2.pro/",
              "~/Library/HTTPStorages/com.dreamtonics.svstudio2.pro/",
              "~/Library/WebKit/com.dreamtonics.svstudio2.pro",
            ]
end
