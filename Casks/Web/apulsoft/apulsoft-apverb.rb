cask "apulsoft-apverb" do
  version "1.2.1"
  sha256 "3b0b8017c961c4f69d9ce7689926df356ec5fabf3371490b30e618dee9f13a83"

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
