cask "psp-lexicon-psp42" do
  version "2.0.2"
  sha256 "f351a7eafe76acb3ff9111167a3cf786873cd9a855164feeda918ea6ad5b5efe"

  url "https://download-eu2.pspaudioware.net/Lexicon_PSP42/OSX/Lexicon_PSP42_#{version}_macOS.dmg",
      verified: "pspaudioware.net/"
  name "PSP Lexicon PSP42"
  desc "Digital stereo delay and phrase sampler based on Lexicon PCM42"
  homepage "https://www.pspaudioware.com/products/lexicon-psp-42"

  auto_updates false

  pkg "Lexicon_PSP42_macOS.pkg"

  uninstall pkgutil: "com.PSPaudioware.PSP.Lexicon42x.*",
            delete:  "~/Documents/PSPaudioware.com/Lexicon PSP42x/"
end
