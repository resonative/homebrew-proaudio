cask "open-stage-control" do
  arch arm: "arm64", intel: "x64"

  version "1.30.0"
  sha256 arm:   "f183a879809b7051b699b63868ad0625db158a830fe555a3225237bf0b5da2da",
         intel: "fa901195d9a895fab8fcc9d436e7c822596ed98a48f6406a0dd041fb12ca628e"

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-#{arch}.zip"
  name "Open Stage Control"
  desc "Virtual OSC control surface"
  homepage "https://openstagecontrol.ammd.net/"

  auto_updates false

  app "open-stage-control-darwin-#{arch}/open-stage-control.app"

  caveats "open-stage-control.app is quarnatined, to remove quarantine:\n    " \
          "xattr -d com.apple.quarantine /Applications/open-stage-control.app"
end
