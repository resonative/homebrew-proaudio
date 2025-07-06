cask "convertwithmoss" do
  arch arm: "14", intel: "13"

  version "14.0.0"
  sha256 arm:   "588f4338aaece6e1999930586ada183107d952670881737bcbe2c81f4cbdba21",
         intel: "1f0ea5fea8972c09c4cdecab58d829e7744fb3e7439bb88f26cdcd1ce569d5cd"

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
