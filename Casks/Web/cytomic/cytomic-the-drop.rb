cask "cytomic-the-drop" do
  version "1.9.0"
  sha256 "6465b58fa595f80ca7b672d4b45e96e866e96af07bb96329ef261e5ffcf4d51c"

  url "https://cytomic.com/files/TheDrop_v#{version}_Mac.dmg"
  name "Cytomic The Drop"
  desc "Analog modelled filter"
  homepage "https://cytomic.com/product/drop/"

  auto_updates false

  pkg "Install The Drop.pkg"

  uninstall pkgutil: "com.cytomic.pkg.TheDrop.*"
end
