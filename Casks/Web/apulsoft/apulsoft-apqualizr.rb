cask "apulsoft-apqualizr" do
  version "2.7.5"
  sha256 "3c30a4a5f1cf7133fddb0a1d682942256c4cba72923395dff1c216a429a64ac0"

  url "https://apulsoft.ch/apqualizr2/apqualizr2-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apQualizr2"
  desc "Modular equalizer"
  homepage "https://apulsoft.ch/apqualizr2/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "apqualizr2-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apQualizr2-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apQualizr2/"
end
