cask "apulsoft-apverb" do
  version "1.2.3"
  sha256 "c061caa7e87a5f662e079af7e3706df3db8a1958bd08521fc8694f45ea326b00"

  url "https://apulsoft.ch/apverb/apverb-mac-#{version.dots_to_hyphens}.pkg"
  name "apulSoft apVerb"
  desc "Smooth algorithmic reverb"
  homepage "https://apulsoft.ch/apverb/"

  auto_updates false

  pkg "apverb-mac-#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "ch.apulSoft.pkg.apVerb-*"

  zap trash: "~/Library/Application Support/apulSoft/ch.apulSoft.apVerb/"
end
