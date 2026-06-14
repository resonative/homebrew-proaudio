cask "convertwithmoss" do
  arch arm: "15", intel: "15-intel"

  version "18.1.1"
  sha256 arm:   "bd94b0cd11a18c6d736af2313042a06766e963e42403e8b63d43ee0fe5be46eb",
         intel: "a9b9c088407562d238579627003e9750153cedf9fb24bc77cd2df39979083a7a"

  url "https://www.mossgrabers.de/Software/ConvertWithMoss/ConvertWithMoss-Installers-macos-#{arch}/ConvertWithMoss-#{version}.dmg"
  name "ConvertWithMoss"
  desc "Multisample format converter"
  homepage "https://www.mossgrabers.de/Software/ConvertWithMoss/ConvertWithMoss.html"

  app "ConvertWithMoss.app"

  uninstall quit: [
              "com.oracle.java.de.mossgrabers.convertwithmoss.ui",
              "de.mossgrabers.convertwithmoss.ui",
            ],
            delete: "~/Library/Preferences/de.mossgrabers.convertwithmoss.plist"

  caveats "You must either install with \"--no-quarantine\" flag, or\n" \
          "manually remove quarantine flag with command below:\n" \
          "  xattr -d com.apple.quarantine /Applications/ConvertWithMoss.app"
end
