cask "receivemidi" do
  version "1.4.4"
  sha256  "fd1a2e8a365a39e2667b28b06db49ad829f82d219282c6fac205253534244fa5"

  url "https://github.com/gbevin/ReceiveMIDI/releases/download/#{version}/receivemidi-macOS-#{version}.zip"
  name "ReceiveMIDI"
  desc "MIDI command-line utility"
  homepage "https://github.com/gbevin/ReceiveMIDI/"

  auto_updates false

  pkg "receivemidi-macos-#{version}.pkg"

  postflight do
    unless File.exist?("#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/receivemidi")
      system_command "ln",
                     args: [
                       "-s",
                       "/usr/local/bin/receivemidi",
                       "#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/receivemidi",
                     ],
                     sudo: false
    end
  end

  uninstall_postflight do
    system_command "rm",
                   args: [
                     "-f",
                     "#{ENV.fetch("HOMEBREW_PREFIX", nil)}/bin/receivemidi",
                   ],
                   sudo: false
  end

  uninstall pkgutil: "com.uwyn.receivemidi"
end
