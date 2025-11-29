cask "sendmidi" do
  version "1.3.1"
  sha256  "2dc730699d3b5ed6b106b9a7fb663a142c7d2199949aea4c5a33c50d189c17a9"

  url "https://github.com/gbevin/SendMIDI/releases/download/#{version}/sendmidi-macOS-#{version}.zip"
  name "SendMIDI"
  desc "MIDI command-line utility"
  homepage "https://github.com/gbevin/SendMIDI/"

  auto_updates false

  pkg "sendmidi-macos-#{version}.pkg"

  postflight do
    unless File.exist?("#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/sendmidi")
      puts "creating symlink..."
      system_command "ln",
                     args: [
                       "-s",
                       "/usr/local/bin/sendmidi",
                       "#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/sendmidi",
                     ],
                     sudo: false
    end
  end

  uninstall_postflight do
    system_command "rm",
                   args: [
                     "-f",
                     "#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/sendmidi",
                   ],
                   sudo: false
  end

  uninstall pkgutil: "com.uwyn.sendmidi"
end
