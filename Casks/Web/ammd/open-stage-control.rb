cask "open-stage-control" do
  arch arm: "arm64", intel: "x64"

  version "1.30.3"
  sha256 arm:   "f9d209024d617767372568683b2c894e8f3756516b34c141d51c48f4f13a8394",
         intel: "900c9c6c4e9bb639fc6298d1c1fd2ec06b408c60e7e48042306ae7ff7efa8592"

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-#{arch}.zip"
  name "Open Stage Control"
  desc "Virtual OSC control surface"
  homepage "https://openstagecontrol.ammd.net/"

  auto_updates false

  app "open-stage-control-darwin-#{arch}/open-stage-control.app"

  caveats "open-stage-control.app is quarnatined, to remove quarantine:\n    " \
          "xattr -d com.apple.quarantine /Applications/open-stage-control.app"
end
