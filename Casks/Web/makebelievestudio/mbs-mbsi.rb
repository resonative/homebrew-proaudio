cask "mbs-mbsi" do
  version "4.0.89.253"
  sha256 "77411270f2d5aa0d66fc253138f277f968636cdd710a25ca1b10f7f00485d0ad"

  url "https://mhsecure.com/installers/#{version}/MBSI_v#{version}.pkg",
      verified: "mhsecure.com/"
  name "Make Believe Studios MBSI"
  desc "MCI style custom console channel strip emulation"
  homepage "https://www.makebelievestudio.com/mbsi"

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

  uninstall pkgutil: "com.Metric Halo.MBSI_v4.0.23.187.MBSI",
            delete:  [
              "/Library/Audio/Plug-Ins/Components/MBSI.component",
              "/Library/Audio/Plug-Ins/VST/MBSI.vst",
              "/Library/Audio/Plug-Ins/VST3/MBSI.vst3",
              "/tmp/MBSI_install.log",
            ]

  zap delete: "/tmp/com.mhlabs.installer.plugintypes"
end
