cask "cb-xpatch@4.5" do
  version "4.5,34"
  sha256 :no_check

  url "https://www.dropbox.com/s/jnwoenxjyi6gsdc/xpatch4_pack.zip?dl=1",
      verified: "dropbox.com/"
  name "CB Electronics XPatch 4.5"
  desc "Control software for XPatch audio patchbay"
  homepage "https://www.cbelectronics.co.uk/downloads"

  auto_updates false

  pkg "xpatch4_pack/xpatch4_pack/Mac Software/XPatch#{version.csv.first}.pkg"

  uninstall quit:    "uk.co.cbelectronics.xpatch",
            pkgutil: "com.mygreatcompany.pkg.XPatch45",
            delete:  "~/Library/Saved Application State/uk.co.cbelectronics.xpatch.savedState/"
end
