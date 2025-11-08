cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "82f76c7ec99c2b10e91a587771f25bb55eb1ea27bc9c66fde3f06fd6feb83210",
         intel: "c3cce55ce44ebf20041dcd9f6baaa0b8a9bf9b384882ee04f9db68d6f65fa652"

  url "https://github.com/intechstudio/grid-editor/releases/download/v#{version}/grid-editor-macos-#{version}-#{arch}.dmg"
  name "Grid Editor"
  desc "Editor and manager for Intech modular midi controller"
  homepage "https://github.com/intechstudio/grid-editor"

  app "Grid Editor.app"

  uninstall quit:   [
              "intechstudio.grid-editor.app",
              "intechstudio.grid-editor.app.helper",
            ],
            delete: "~/Library/Preferences/intechstudio.grid-editor.app.plist"

  zap delete: "~/Library/Application Support/Grid Editor/"
end
