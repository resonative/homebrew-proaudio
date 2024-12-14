cask "apulsoft-apverb" do
  version "1.2.2"
  sha256 "84f3fe53b03d317b18eeda7b67936d7be18cc100985244ba297aebd93d7b29ac"

  url "https://apulsoft.ch/apverb/apverb-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apVerb"
  desc "Smooth algorithmic reverb"
  homepage "https://apulsoft.ch/apverb/"

  auto_updates false
  depends_on macos: ">= :el_capitan"

  pkg "apverb-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apVerb-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apVerb/"
end
