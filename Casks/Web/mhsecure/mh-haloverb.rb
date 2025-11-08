cask "mh-haloverb" do
  version "4.0.89.253"
  sha256 "f425981d7ea4bd06796509d4ed64a3a54ffd43bc2a69c9fc96b65186e7591530"

  url "https://mhsecure.com/installers/#{version}/MHProductionBundleInstaller.pkg"
  name "Metric Halo MH Halo Verb v4"
  desc "Reverb"
  homepage "https://mhsecure.com/"

  pkg "MHProductionBundleInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "MHChannelStrip_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHCharacter_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHDirtyDelay_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHHaloVerb_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "MHMultibandDynamics_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHMultibandExpander_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHPrecisionDeesser_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHSonicEQ_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHSuperGate_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHTransientControl_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  preflight do
    plugintype = "/tmp/com.mhlabs.installer.plugintypes"
    # pkg postinstall script reads this file to determine what plugin format gets installed

    File.open(plugintype, "w") do |file|
      file.puts "do_aax=1\n" \
                "do_au=1\n" \
                "do_vst2=1\n" \
                "do_vst3=1\n"
    end
  end

  uninstall pkgutil: "com.mhlabs.MHProductionBundleInstaller_*.MHHaloVerb_v4",
            delete:  [
              # pkgutil will delete aax
              "/Library/Audio/Plug-Ins/Components/MHHaloVerb_v4.component/",
              "/Library/Audio/Plug-Ins/VST/MHHaloVerb_v4.vst/",
              "/Library/Audio/Plug-Ins/VST3/MHHaloVerb_v4.vst3/",
              "/tmp/com.mhlabs.installer.plugintypes",
              "/tmp/MHHaloVerb_v4_install.log",
            ]
end
