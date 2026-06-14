cask "mb-white-room" do
  version "4.1.12.276"
  sha256 "39cfecb8f8d3a3af68b7545ce06052afba72f86990625459744f033728f3de39"

  url "https://mhsecure.com/installers/current_release/MBWhiteRoom.pkg?v=#{version}",
      verified: "mhsecure.com/"
  name "Make Believe Studios White Room"
  desc "Reverb"
  homepage "https://www.makebelievestudio.com/plugins/whiteroom"

  pkg "MBWhiteRoom.pkg"

  preflight do
    plugintype = "/tmp/com.mhlabs.installer.plugintypes"
    # pkg postinstall script reads this file to determine what plugin format gets installed

    unless File.exist?(plugintype)
      File.open(plugintype, "w") do |file|
        file.puts "do_aax=1\n" \
                  "do_au=1\n" \
                  "do_vst2=1\n" \
                  "do_vst3=1\n"
      end
    end
  end

  uninstall pkgutil: "com.MetricHalo.MBWhiteRoom_v*.MBWhiteRoom",
            delete:  [
              "/Library/Audio/Plug-Ins/Components/MBWhiteRoom.component",
              "/Library/Audio/Plug-Ins/VST/MBWhiteRoom.vst",
              "/Library/Audio/Plug-Ins/VST3/MBWhiteRoom.vst3",
              "/tmp/MBWhiteRoom_install.log",
            ]

  zap delete: "/tmp/com.mhlabs.installer.plugintypes"
end
