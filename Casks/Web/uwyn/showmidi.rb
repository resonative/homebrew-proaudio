cask "showmidi" do
  version "1.0.1"
  sha256  "ada36b12e072a6e0a04460305bd7da03c0f051102056696b6731d6773025c886"

  url "https://github.com/gbevin/ShowMIDI/releases/download/#{version}/ShowMIDI-macOS-#{version}.zip"
  name "ShowMIDI"
  desc "MIDI monitor"
  homepage "https://github.com/gbevin/ShowMIDI"

  auto_updates false

  pkg "ShowMIDI-#{version}.pkg"

  uninstall quit:    "com.uwyn.showmidi",
            pkgutil: [
              "com.uwyn.ShowMIDI",
              "com.uwyn.ShowMIDI-*",
            ]
end
