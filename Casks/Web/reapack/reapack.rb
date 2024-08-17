cask "reapack" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.4.6"
  sha256 arm:   "5e35a61bc3753da91f3397a5c7ee6cb31d38ee7b5b7ac4bda400b3f1b748e25b",
         intel: "353386be33fef4553dbecc0764471fd7520836b3c747ed38b25ecef8c5984d91"

  url "https://github.com/cfillion/reapack/releases/download/v#{version}/reaper_reapack-#{arch}.dylib",
      verified: "github.com/cfillion/reapack/"
  name "Reapack"
  desc "Package manager for Reaper"
  homepage "https://reapack.com/"

  livecheck do
    cask "reapack" # website regex in future
  end

  auto_updates false

  artifact "reaper_reapack-#{arch}.dylib", target: "~/Library/Application Support/REAPER/UserPlugins/reaper_reapack-#{arch}.dylib"

  uninstall quit:   "com.cockos.reaper",
            delete: "~/Library/Application Support/REAPER/UserPlugins/reaper_reapack-#{arch}.dylib"

  caveats "You must clear the security dialog before Reapack is usable. See https://reaper.blog/2023/03/ventura-install/ for example"
end
