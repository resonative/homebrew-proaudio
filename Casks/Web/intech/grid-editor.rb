cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "a9e0e01f4de4f73efb61c00d1ea7cfa2dbba82339e08665c7a4441d609395d5a",
         intel: "a2d7a0f063e738e5069b74d72b41e142c3a0be4289f151b19ccc3dd16edc1bc7"

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
