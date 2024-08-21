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

  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/reaper_reapack-#{arch}.dylib"]
    puts "Extended attribute \e[31mcom.apple.quarantine\e[0m is removed from reaper_reapack-#{arch}.dylib\n" \
         "\e[4mPlease ensure you trust this binary before running it with Reaper.\e[0m"
  end

  uninstall quit:   "com.cockos.reaper",
            delete: "~/Library/Application Support/REAPER/UserPlugins/reaper_reapack-#{arch}.dylib"

  caveats "Extended attribute \e[31mcom.apple.quarantine\e[0m is removed from reaper_reapack-#{arch}.dylib during installation.\n" \
          "\e[4mPlease ensure you trust this binary before running it with Reaper.\e[0m"
end
