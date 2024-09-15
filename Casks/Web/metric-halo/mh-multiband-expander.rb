cask "mh-multiband-expander" do
  version "4.0.23.187"
  sha256 "55db69bcc39aafcad35c4d967f314b467fda82ca42a77f4ecf04801323adcc32"

  url "https://mhsecure.com/installers/#{version}/MHProductionBundleInstaller.pkg"
  name "Metric Halo MH Multiband Expander v4"
  desc "Multiband expander"
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
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHMultibandDynamics_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "MHMultibandExpander_v4Choice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
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

  uninstall pkgutil: "com.mhlabs.MHProductionBundleInstaller_*.MHMultibandExpander_v4",
            delete:  [
              # pkgutil will delete aax
              "/Library/Audio/Plug-Ins/Components/MHMultibandExpander_v4.component/",
              "/Library/Audio/Plug-Ins/VST/MHMultibandExpander_v4.vst/",
              "/Library/Audio/Plug-Ins/VST3/MHMultibandExpander_v4.vst3/",
              "/tmp/com.mhlabs.installer.plugintypes",
              "/tmp/MHMultibandExpander_v4_install.log",
            ]
end
