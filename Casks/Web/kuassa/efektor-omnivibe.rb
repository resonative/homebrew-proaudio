cask "efektor-omnivibe" do
  version "1.0.0"
  sha256 :no_check

  url "https://www.kuassa.com/?dl_id=974"
  name "Kuassa Efektor Omnivibe"
  desc "Optical Vibe Machine"
  homepage "https://www.kuassa.com/products/efektor-omnivibe-optical-vibe-machine/"

  auto_updates false

  pkg "EfektorOmnivibe_#{version.delete(".")}_Mac.pkg"

  uninstall pkgutil: "com.kuassa.pkg.EfektorOmnivibe*"

  zap trash: [
    "~/Music/Kuassa/Presets/EfektorOmnivibe/",
    "~/Music/Kuassa/Settings/EfektorOmnivibe.setting",
  ]
end
