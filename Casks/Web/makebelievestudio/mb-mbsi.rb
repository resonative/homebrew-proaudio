cask "mb-mbsi" do
  version "4.1.12.276"
  sha256 "18ecb34d08ae52584994a035866a14efb04a81dd7fc5e9f75bf4c54a128db791"

  url "https://mhsecure.com/installers/#{version}/MBSI_v#{version}.pkg",
      verified: "mhsecure.com/"
  name "Make Believe Studios MBSI"
  desc "MCI style custom console channel strip emulation"
  homepage "https://www.makebelievestudio.com/plugins/mbsi"

  pkg "MBSI_v#{version}.pkg"

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

  uninstall pkgutil: "com.MetricHalo.MBSI_v*.MBSI",
            delete:  [
              "/Library/Audio/Plug-Ins/Components/MBSI.component",
              "/Library/Audio/Plug-Ins/VST/MBSI.vst",
              "/Library/Audio/Plug-Ins/VST3/MBSI.vst3",
              "/tmp/MBSI_install.log",
            ]

  zap delete: "/tmp/com.mhlabs.installer.plugintypes"
end
