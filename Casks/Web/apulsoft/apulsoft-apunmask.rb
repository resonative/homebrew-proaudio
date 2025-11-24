cask "apulsoft-apunmask" do
  version "1.0.6"
  sha256 "9b4fd1b2fcb7fe3ac1386e1c486e1cbc06c40cefb291be13504a51f1d66743a1"

  url "https://apulsoft.ch/apunmask/apunmask-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apUnmask"
  desc "Psychoacoustic mastering plugin"
  homepage "https://apulsoft.ch/apunmask/"

  auto_updates false

  pkg "apunmask-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apUnmask-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apUnmask/"
end
