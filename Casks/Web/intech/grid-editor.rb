cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7"
  sha256 arm:   "f343c67c3307f20822226088f2b511dc6a1f9b5ba9cc9c09614526256c813a39",
         intel: "783169cb7cf1efe037ae8298f0e00d5ccc609b63c3f67397ceb0a843159c3f80"

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
