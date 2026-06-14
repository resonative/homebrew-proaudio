cask "mb-tmpc" do
  version "4.1.12.276"
  sha256 "82c2dc99b31c1b8b662f31016a98cb2a852c98265e14394a86aaa3587c2e715b"

  url "https://mhsecure.com/installers/current_release/MBTMPC.pkg?v=#{version}",
      verified: "mhsecure.com/"
  name "Make Believe Studios TMPC"
  desc "MPC3000 Output Stage empulation"
  homepage "https://www.makebelievestudio.com/plugins/tmpc"

  pkg "MBTMPC.pkg"

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

  uninstall pkgutil: "com.MetricHalo.MBTMPC_v*.MBTMPC",
            delete:  [
              "/Library/Audio/Plug-Ins/Components/MBTMPC.component",
              "/Library/Audio/Plug-Ins/VST/MBTMPC.vst",
              "/Library/Audio/Plug-Ins/VST3/MBTMPC.vst3",
              "/tmp/MBTMPC_install.log",
            ]

  zap delete: "/tmp/com.mhlabs.installer.plugintypes"
end
