cask "apulsoft-apunmask" do
  version "1.0.4"
  sha256 "20888fb00d6f0dbc0c70242bb0fbc0a0d2e280c60d69e6491be83dc7b29f71e4"

  url "https://apulsoft.ch/apunmask/apunmask-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apUnmask"
  desc "Psychoacoustic mastering plugin"
  homepage "https://apulsoft.ch/apunmask/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "apunmask-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apUnmask-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apUnmask/"
end
