cask "cb-midiupd" do
  version :latest # 8.0 build 22 as of Aug31 2024
  sha256 :no_check

  url "https://www.dropbox.com/s/jnwoenxjyi6gsdc/xpatch4_pack.zip?dl=1",
      verified: "dropbox.com/"
  name "CB Electronics Midiupd"
  desc "Control software for XPatch audio patchbay"
  homepage "https://www.cbelectronics.co.uk/downloads"

  auto_updates false

  pkg "xpatch4_pack/xpatch4_pack/Mac Software/midiupd.pkg"

  uninstall quit:    "midiupd",
            pkgutil: "co.uk.cbelectronics.pkg.midiupd",
            delete:  "~/Library/Saved Application State/midiupd.savedState/",
            trash:   "~/Library/Application Support/midiupd.ini"
end
