cask "convertwithmoss" do
  arch arm: "14", intel: "13"

  version "14.2.0"
  sha256 arm:   "fd5e33574a5f23b5eaabe21f84f01c6aaaa5667b35c4287d3d3c5fafd7e31ae2",
         intel: "6f4c3f32ed5a962eeed22391254c9d40fd1ae419fff7b0a19d0aa728f397f65b"

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
